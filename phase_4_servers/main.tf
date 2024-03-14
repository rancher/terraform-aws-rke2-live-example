provider "github" {}
provider "aws" {
  default_tags {
    tags = {
      Id = local.identifier
    }
  }
}

locals {
  identifier        = var.project_name
  name              = "livex-${local.identifier}"
  owner             = var.project_owner
  vpc_name          = var.vpc_name                    # select the project VPC
  subnet_cidr       = var.subnet_cidr                 # must be within the VPC CIDR range
  host_ip           = cidrhost(local.subnet_cidr, -2) # set host to the last available/unreserved ip in the subnet
  image_id          = var.image_id
  image_user        = var.image_user
  image_admin_group = var.image_admin_group # wheel
  image_workfolder  = var.image_workfolder  # "~" # I just copied this from the type since the base image is the same: https://github.com/rancher/terraform-aws-server/blob/main/modules/image/types.tf
  image_role        = var.role
}

resource "random_uuid" "join_token" {}

# generate a production server from golden image
module "prod_access" {
  source              = "rancher/access/aws"
  version             = "1.2.0"
  owner               = local.owner    # tag objects with your contact info
  vpc_name            = local.vpc_name # select project vpc
  subnet_name         = local.name     # generate a subnet for the prod servers
  subnet_cidr         = local.subnet_cidr
  subnet_public_ip    = false       # don't map public ips to servers in subnet
  security_group_name = local.name  # generate a new security group for servers
  security_group_type = "internal"  # only allow access from internal subnet https://github.com/rancher/terraform-aws-access/blob/main/modules/security_group/types.tf
  security_group_ip   = "127.0.0.1" # only allow access from internal ip
  skip_ssh            = true        # don't provision an ssh key
}

module "config" {
  depends_on = [
    random_uuid.join_token,
    module.prod_access,
  ]
  source            = "rancher/rke2-config/local"
  version           = "0.1.3"
  token             = random_uuid.join_token.result
  advertise-address = local.host_ip
  tls-san           = [local.host_ip]
  node-external-ip  = [local.host_ip]
  node-ip           = [local.host_ip]
  local_file_path   = "${path.root}/${local.name}"
  local_file_name   = "50-prod-config.yaml"
}

module "server_from_ami" {
  depends_on = [
    random_uuid.join_token,
    module.prod_access,
    module.config,
  ]
  source              = "rancher/server/aws"
  version             = "0.3.1"
  owner               = local.owner             # add your contact info to the tags on the aws object
  image_id            = local.image_id          # select image from previous step
  image_initial_user  = local.image_user        # This should be the user generated when creating the prototype server
  image_admin_group   = local.image_admin_group # This is required when setting image_id, although it won't be used in this instance
  image_workfolder    = local.image_workfolder  # This is required when setting image_id, although it won't be used in this instance
  name                = local.name
  type                = "medium"   # https://github.com/rancher/terraform-aws-server/blob/main/modules/server/types.tf
  user                = local.name # WARNING! this needs to be different from the image_initial_user or you will lock yourself out of the server
  subnet_name         = local.name
  private_ip          = local.host_ip
  security_group_name = local.name
  skip_key            = true
  cloudinit_script = templatefile(
    "${path.root}/start.sh",
    {
      config  = module.config.yaml_config
      service = "rke2-${local.image_role}.service"
      timeout = "15"
    }
  )
}
resource "terraform_data" "wait" {
  depends_on = [
    module.server_from_ami,
  ]
  provisioner "local-exec" {
    command = "sleep 500" # wait 5 min for the init script to complete, we want the server in a ready state when starting
  }
}

resource "aws_ec2_instance_state" "shut_down_server" {
  depends_on = [
    module.server_from_ami,
    terraform_data.wait,
  ]
  instance_id = module.server_from_ami.server.id
  state       = "stopped"
}

# resource "terraform_data" "post_mint_script" {
#   depends_on = [
#     random_uuid.join_token,
#     module.prod_access,
#   ]
#   triggers_replace = [
#     module.server_from_ami.public_ip,
#   ]
#   connection {
#     type        = "ssh"
#     user        = local.my_user
#     script_path = "/var/tmp/post_mint_terraform"
#     agent       = true
#     host        = module.server_from_ami.public_ip
#   }
#   provisioner "remote-exec" {
#     inline = [<<-EOT
#       sudo rm -rf /etc/rancher/rke2/config.yaml.d/*
#     EOT
#     ]
#   }
#   provisioner "file" {
#     source      = "${path.root}/config/50-prod-config.yaml"
#     destination = "/etc/rancher/rke2/config.yaml.d/50-prod-config.yaml"
#   }
#   provisioner "file" {
#     source      = "${path.root}/start.sh"
#     destination = "/var/tmp/start.sh"
#   }
#   provisioner "remote-exec" {
#     inline = [<<-EOT
#       set -x
#       set -e
#       sudo chmod +x /var/tmp/start.sh
#       sudo /var/tmp/start.sh "server" "5"
#     EOT
#     ]
#   }
#   provisioner "remote-exec" {
#     inline = [<<-EOT
#       # get node info
#       if [ ! -f /etc/rancher/rke2/rke2.yaml ]; then echo "kubeconfig not found"; fi
#       export KUBECONFIG=/etc/rancher/rke2/rke2.yaml
#       PATH=$PATH:/var/lib/rancher/rke2/bin
#       kubectl get nodes
#     EOT
#     ]
#   }

# Example to add a user for yourself with your public key for remote ssh access
# provisioner "remote-exec" {
#   inline = [<<-EOT
#     # sudo useradd -m '${local.my_user}' || true
#     # sudo install -d '/home/${local.my_user}/.ssh'
#     # sudo rm -rf /home/${local.my_user}/.ssh/authorized_keys
#     # sudo echo '${local.my_key}' | sudo tee '/home/${local.my_user}/.ssh/authorized_keys'
#     # sudo chown -R ${local.my_user}:${local.my_user} /home/${local.my_user}
#   EOT
#   ]
# }
#}
