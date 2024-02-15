provider "github" {}
provider "aws" {
  default_tags {
    tags = {
      Id = local.identifier
    }
  }
}

locals {
  identifier   = var.project_name
  name         = local.identifier
  owner        = var.project_owner
  rke2_version = var.rke2_version # defaults to 'latest' channel
  rpm_channel  = "latest"
  os           = "rhel-9" # https://github.com/rancher/terraform-aws-server/blob/main/modules/image/types.tf
  # it is best to keep prototypes small so that the resulting image is small
  size               = "small"          # smallest viable server: https://github.com/rancher/terraform-aws-server/blob/main/modules/server/types.tf
  vpc_name           = var.vpc_name     # select the project VPC
  subnet_cidr        = var.subnet_cidr  # must be within the VPC CIDR range
  ssh_key_name       = var.ssh_key_name # the name of the ci key generated in the previous stage
  username           = local.identifier
  server_prep_script = file("${path.root}/prep.sh")
  extra_config       = file("${path.root}/config.yaml")
  ip                 = var.ip
  role               = "server" # "server" or "agent", "server" for stand alone, see "dedicated" example for setting up clusters where different nodes have dedicated jobs
}

resource "random_uuid" "join_token" {}

# generate a prototype server to mint a golden image
module "proto_rke2_rhel9_rpm" {
  depends_on = [
    random_uuid.join_token,
  ]
  source     = "rancher/rke2/aws"
  version    = "v0.1.19"
  join_token = random_uuid.join_token.result
  name       = local.name
  owner      = local.owner

  vpc_name = local.vpc_name # select project vpc

  subnet_name = local.name # generate a subnet for the prototype
  subnet_cidr = local.subnet_cidr

  security_group_name = local.name # generate a security group for the prototype
  security_group_type = "egress"   # allow downloading packages: https://github.com/rancher/terraform-aws-access/blob/main/modules/security_group/types.tf
  security_group_ip   = local.ip   # allow the CI ip to the prototype for provisioning

  ssh_key_name = local.ssh_key_name # select the previously generated ssh key for the CI
  ssh_username = local.username

  rke2_version    = local.rke2_version
  rpm_channel     = local.rpm_channel
  image_type      = local.os
  install_method  = "rpm" # use the RPM install method when installing rke2
  local_file_path = "${path.root}/${local.name}"
  role            = local.role # "server" or "agent", "server" for stand alone, see "dedicated" example for setting up clusters where different nodes have dedicated jobs
  server_type     = local.size
  #  availability_zone    = "us-west-1b"   # you can specify an availability zone name here https://us-west-1.console.aws.amazon.com/ec2/home?region=us-west-1#Settings:tab=zones, must match region!
  server_prep_script   = local.server_prep_script # prep RHEL9 for running rke2
  retrieve_kubeconfig  = false                    # get the kubeconfig so we can start using kubernetes locally
  skip_download        = true                     # let the installer download everything
  start                = false                    # don't start the service
  extra_config_content = local.extra_config       # place any custom config here
}

resource "aws_ec2_instance_state" "shut_down_prototype" {
  depends_on = [
    random_uuid.join_token,
    module.proto_rke2_rhel9_rpm,
  ]
  instance_id = module.proto_rke2_rhel9_rpm.server.id
  state       = "stopped"
}

# mint golden image
resource "aws_ami_from_instance" "golden" {
  depends_on = [
    random_uuid.join_token,
    module.proto_rke2_rhel9_rpm,
  ]
  name               = local.name
  source_instance_id = module.proto_rke2_rhel9_rpm.server.id
}
