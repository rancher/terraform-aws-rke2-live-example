output "image_id" {
  value = aws_ami_from_instance.golden.id
}
output "image_admin_group" {
  value = "wheel" # got this from rhel-9 type https://github.com/rancher/terraform-aws-server/blob/main/modules/image/types.tf
}
output "image_user" {
  value = local.username
}
output "image_workfolder" {
  value = "~" # got this from rhel-9 type https://github.com/rancher/terraform-aws-server/blob/main/modules/image/types.tf
}
output "role" {
  value = local.role
}