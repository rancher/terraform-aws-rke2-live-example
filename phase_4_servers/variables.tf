# project info
variable "project_name" {
  type        = string
  description = "the overarching name of the project"
}
variable "project_owner" {
  type        = string
  description = "the name or email of the project owner"
}

# access info
variable "vpc_name" {
  type        = string
  description = "the name of the vpc to provision servers on"
}
variable "subnet_cidr" {
  type        = string
  description = "the subnet cidr to deploy the servers on"
}

# image info
variable "image_id" {
  type        = string
  description = "The id of the image to launch."
}
variable "image_admin_group" {
  type        = string
  description = "The admin group for the image."
}
variable "image_user" {
  type        = string
  description = "The current user set up when generating the image."
}
variable "image_workfolder" {
  type        = string
  description = "The directory that we can use to execute scripts on the image."
}

# rke2 info
variable "role" {
  type        = string
  description = "The rke2 role (server/agent) for the rke2 version already installed on the image."
}
