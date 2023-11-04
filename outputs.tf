output "kubeconfig" {
  value     = module.aws_rke2_rhel9_rpm.kubeconfig
  sensitive = true
}
output "ssh" {
  value     = "${local.username}@${module.aws_rke2_rhel9_rpm.server_public_ip}"
  sensitive = true
}