# While this is a Terraform config, it shouldn't really be expected to maintain the repo
#   this was the most robust interface I could find to manage the things necessary to initialize the repo
#   without a lot of boilerplate code to manage api connections
# After copying the code into your repo, run this to set it up and you can ignore it/remove it from then on

provider "github" {} # This expects the GITHUB_TOKEN to be set in the environment

locals {
  name               = "live-infra-aws-rke2"
  description        = "an example of a live infrastructure repo"
  state              = file("terraform.tfstate") # this will fail if init was not run first
  recipients_content = <<-EOT
    # CI
    ${data.external.age_key.result.public_key}
  EOT
  recipients_file    = "age_recipients.txt"
}

import {
  to = github_repository.this
  id = "live-infra-aws-rke2" # variables can't be used here
}
import {
  to = github_branch.main
  id = "live-infra-aws-rke2:main" # variables can't be used here
}

resource "github_repository" "this" {
  name                        = local.name
  description                 = local.description
  visibility                  = "private"
  has_issues                  = false
  has_discussions             = false
  has_projects                = false
  has_wiki                    = false
  allow_squash_merge          = true
  allow_rebase_merge          = false
  allow_merge_commit          = false
  squash_merge_commit_title   = "PR_TITLE"
  squash_merge_commit_message = "COMMIT_MESSAGES"
  delete_branch_on_merge      = true
  allow_update_branch         = true
}

resource "github_branch" "main" {
  depends_on = [
    github_repository.this,
  ]
  repository = github_repository.this.name
  branch     = "main"
}

# branch protections are only for enterprise
# resource "github_branch_protection" "main" {
#   depends_on = [
#     github_repository.this,
#     github_branch.main,
#   ]
#   repository_id = github_repository.this.name

#   pattern                 = github_branch.main.branch
#   enforce_admins          = true
#   require_signed_commits  = true
#   required_linear_history = true
#   allows_deletions        = false # protect branch from deletion

#   required_pull_request_reviews {
#     require_code_owner_reviews      = true
#     required_approving_review_count = 1
#     dismiss_stale_reviews           = true
#   }

#   required_status_checks {
#     strict = true # require the latest push on the branch to be reviewed
#   }
# }

resource "github_branch_default" "main" {
  depends_on = [
    github_repository.this,
    github_branch.main,
  ]
  repository = github_repository.this.name
  branch     = github_branch.main.branch
}

resource "github_actions_repository_permissions" "this" {
  depends_on = [
    github_repository.this,
  ]
  allowed_actions = "all"
  enabled         = true
  repository      = github_repository.this.name
}

data "external" "age_key" {
  program = ["bash", "${path.module}/get_age_key.sh"]
}

# if you would like to access the state yourself, which may be important if you want console access to the infra
#  you need to generate an AGE key for your workstation and add the public key to the age_recipients.txt
# WARNING! Make sure that you re-encrypt the state using the age_recipients.txt so that the CI can see any changes you make.
resource "github_actions_secret" "age_secret_key" {
  depends_on = [
    github_repository.this,
  ]
  repository      = github_repository.this.name
  secret_name     = "AGE_SECRET_KEY"
  plaintext_value = chomp(data.external.age_key.result.secret_key)
}

resource "terraform_data" "git_pull_before_recipients" {
  depends_on = [
    github_repository.this,
    github_branch.main,
    data.external.age_key,
  ]
  triggers_replace = [
    data.external.age_key,
  ]
  provisioner "local-exec" {
    command = "git pull"
  }
}

resource "github_repository_file" "age_recipients" {
  depends_on = [
    github_repository.this,
    github_branch.main,
    data.external.age_key,
    terraform_data.git_pull_before_recipients,
  ]
  repository          = github_repository.this.name
  branch              = github_branch.main.branch
  commit_message      = "Initial recipients"
  commit_author       = "automation"
  commit_email        = "automation@users.noreply.github.com"
  overwrite_on_create = true
  file                = "age_recipients.txt"
  content             = local.recipients_content
}

resource "terraform_data" "git_pull_after_recipients" {
  depends_on = [
    github_repository.this,
    github_branch.main,
    data.external.age_key,
    terraform_data.git_pull_before_recipients,
    github_repository_file.age_recipients,
  ]
  triggers_replace = [
    github_repository_file.age_recipients,
    data.external.age_key,
  ]
  provisioner "local-exec" {
    command = "git pull"
  }
}

# RSA key of size 4096 bits
# We use RSA for STIG AMI compatibility
# This will be the key that is added to the server for the CI
resource "tls_private_key" "ssh_access_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

data "external" "age_encrypted_private_ssh_key" {
  depends_on = [
    github_repository_file.age_recipients,
    terraform_data.git_pull_after_recipients,
  ]
  program = ["bash", "${path.module}/get_age_encrypted_value.sh"]

  query = {
    state           = local.state
    state_type      = "github_repository_file"
    state_name      = "ssh_access_key"
    state_attribute = "content"
    content         = tls_private_key.ssh_access_key.private_key_openssh
    recipients      = local.recipients_file
  }
}

resource "github_repository_file" "starter_encrypted_ci_ssh_private_access_key" {
  depends_on = [
    github_repository.this,
    github_branch.main,
    tls_private_key.ssh_access_key,
    github_repository_file.age_recipients,
    terraform_data.git_pull_after_recipients,
    data.external.age_encrypted_private_ssh_key,
  ]
  repository          = github_repository.this.name
  branch              = github_branch.main.branch
  commit_message      = "Initial CI encrypted private ssh key"
  commit_author       = "automation"
  commit_email        = "automation@users.noreply.github.com"
  overwrite_on_create = true
  file                = "ssh_key.age"
  content             = data.external.age_encrypted_private_ssh_key.result.data
}

resource "github_repository_file" "ci_ssh_public_access_key" {
  depends_on = [
    github_repository.this,
    github_branch.main,
    tls_private_key.ssh_access_key,
    github_repository_file.age_recipients,
    terraform_data.git_pull_after_recipients,
  ]
  repository          = github_repository.this.name
  branch              = github_branch.main.branch
  commit_message      = "Initial CI public ssh key"
  commit_author       = "automation"
  commit_email        = "automation@users.noreply.github.com"
  overwrite_on_create = true
  file                = "ssh_key.pub"
  content             = tls_private_key.ssh_access_key.public_key_openssh
}
