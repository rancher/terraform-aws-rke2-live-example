provider "aws" {
  default_tags {
    tags = {
      Id = local.identifier
    }
  }
}

locals {
  identifier = var.project_name  # greater project identifier helpful when looking for objects outside of Terraform, should be less than 10 characters
  owner      = var.project_owner # contact information about the project owner, will be added to resource tags to prevent confusion
  cidr       = var.project_cidr  # this is a boundary for the subnets allowed in the VPC, not an assignment or creation of any subnets
  name       = local.identifier  # this name will be used to identify key objects in the project
}

# an IGW will be created with the VPC, but it won't be used unless servers are given EIP addresses
module "project" {
  source              = "rancher/access/aws"
  version             = "v1.1.1"
  owner               = local.owner
  vpc_name            = local.name
  vpc_cidr            = local.cidr
  skip_subnet         = true
  skip_security_group = true
  skip_ssh            = true
}
