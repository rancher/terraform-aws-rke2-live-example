output "image_id" {
  value = local.name
}
output "image_admin_group" {
  value = "wheel" # got this from rhel-9 type https://github.com/rancher/terraform-aws-server/blob/main/modules/image/types.tf
}
output "image_initial_user" {
  value = local.username
}
output "image_workfolder" {
  value = "~" # got this from rhel-9 type https://github.com/rancher/terraform-aws-server/blob/main/modules/image/types.tf
}
output "role" {
  value = local.role
}