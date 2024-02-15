provider "aws" {
  default_tags {
    tags = {
      Id = local.identifier
    }
  }
}

locals {
  identifier = var.project_name # greater project identifier helpful when looking for objects outside of Terraform, should be less than 10 characters
  vpc_name   = var.vpc_name
  owner      = var.project_owner
  name       = local.identifier
  ssh_key    = var.ssh_key
}

# create a security group and ssh keypair that gives access to the CI so that it can configure prototype
module "ci_access" {
  source              = "rancher/access/aws"
  version             = "v1.1.1"
  vpc_name            = local.vpc_name # selects vpc, doesn't create
  skip_subnet         = true
  skip_security_group = true
  ssh_key_name        = local.name    # generate an ssh keypair object in aws
  public_ssh_key      = local.ssh_key # the public ssh key to send to aws
  owner               = local.owner
}

# this has a lifecycle that is isolated because we want to be able to create and destroy it every time we run the CI
# this allows a very short lifecycle for infrastructure that allows CI access to prototype (never servers)
# since the lifecycle is short, and the access is limited to an ephemeral CI, and we use the same measures we would for any user (ssh keys, not sharing with others, etc)
#  we can feel relatively comfortable allowing the CI to configure the prototype servers (not the production servers)
#  we wipe the prototype and project clean of this access when it is done being configured so that production servers can be isolated
