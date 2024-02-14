variable "project_name" {
  type        = string
  description = "The identifier for the project, should be less than 10 characters."
}
variable "project_owner" {
  type        = string
  description = "Information about the person who owns the project, could be a group name or an email address."
}
variable "project_cidr" {
  type        = string
  description = "The cidr block boundary of subnets allowed on the VPC."
}