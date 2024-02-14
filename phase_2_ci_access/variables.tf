# project info
variable "project_name" {
  type        = string
  description = "The name of the greater project, used to identify previously created objects like vpc, subnet, etc."
}
variable "project_owner" {
  type        = string
  description = "The owner of the greater project, used to provide contact information on AWS resources."
}
# access info
variable "vpc_name" {
  type        = string
  description = "The name of the VPC to deploy the ci access to."
}
variable "ssh_key" {
  type        = string
  description = "The content of the public key to assign for CI access."
}
