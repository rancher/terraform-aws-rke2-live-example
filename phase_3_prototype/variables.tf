# runner info
variable "ip" {
  type        = string
  description = "the ip of the server running terraform"
}
variable "ssh_key_name" {
  type        = string
  description = "the name of the ssh key to apply to the prototype servers"
}

# project info
variable "project_name" {
  type        = string
  description = "the overarching name of the project"
}
variable "project_owner" {
  type        = string
  description = "the name or email of the project owner"
}
variable "vpc_name" {
  type        = string
  description = "the name of the vpc to provision prototype"
}

# prototype info
variable "subnet_cidr" {
  type        = string
  description = "the subnet cidr to deploy the prototype servers on"
}

# rke2 info
variable "rke2_version" {
  type        = string
  description = "the release version or channel to send to the install script"
  default     = "latest"
}