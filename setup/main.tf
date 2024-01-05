
# While this is a Terraform config, it shouldn't really be expected to maintain the repo
#   this was the most robust interface I could find to manage the things necessary to initialize the repo
#   without a lot of boilerplate code to manage api connections
# After copying the code into your repo, import it with `` and run this to set it up,
#   and you can pretty much ignore this from then on

provider "github" {} # This expects the GITHUB_TOKEN to be set in the environment

locals {
  name        = "live-infra-aws-rke2"
  description = "an example of a live infrastructure repo"
}

import {
  to = github_repository.this
  id = "live-infra-aws-rke2" # variables can't be used here
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
  web_commit_signoff_required = true
}

resource "github_branch" "development" {
  repository = github_repository.this.name
  branch     = "main"
}

resource "github_actions_repository_permissions" "this" {
  depends_on = [
    github_repository.this,
  ]
  allowed_actions = "all"
  enabled         = true
  repository      = github_repository.this.name
}

resource "age_secret_key" "this" {}

data "github_actions_public_key" "gh_actions_public_key" {
  repository = github_repository.this.name
}

resource "sodium_encrypted_item" "age_secret_key" {
  public_key_base64 = base64encode(data.github_actions_public_key.gh_actions_public_key.key)
  content_base64    = base64encode(age_secret_key.this.secret_key)
}

# the AGE key is encrypted using the sodium key, then the state is encrypted using the AGE key (outside of this)
# to decrypt the state you need to be one of the AGE recipients, you should not be able to access the CI's private AGE key (that is for the CI only)
#
# if you would like to access the state yourself, which may be important if you want console access to the infra
#  you need to generate an AGE key for your workstation and add the public key to the age_recipients.txt
# WARNING! Make sure that you re-encrypt the state using the age_recipients.txt so that the CI can see any changes you make.
resource "github_actions_secret" "age_secret_key" {
  depends_on = [
    github_repository.this,
  ]
  repository      = github_repository.this.name
  secret_name     = "AGE_SECRET_KEY"
  encrypted_value = sodium_encrypted_item.age_secret_key.encrypted_value_base64
}

resource "github_repository_file" "age_recipients" {
  repository          = github_repository.this.name
  branch              = "main"
  file                = "age_recipients.txt"
  content             = <<-EOT
    # CI
    ${age_secret_key.this.public_key}
  EOT
  commit_message      = "Initial recipients"
  commit_author       = "automation"
  commit_email        = "automation@users.noreply.github.com"
  overwrite_on_create = false
}

# RSA key of size 4096 bits
# We use RSA for STIG AMI compatibility
# This will be the key that is added to the server for the CI
resource "tls_private_key" "ssh_access_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "github_repository_file" "ssh_public_access_key" {
  repository          = github_repository.this.name
  branch              = "main"
  file                = "ssh_key.pub"
  content             = tls_private_key.ssh_access_key.public_key_openssh
  commit_message      = "Initial CI public ssh key"
  commit_author       = "automation"
  commit_email        = "automation@users.noreply.github.com"
  overwrite_on_create = true
}

resource "github_repository_file" "starter_terraform_state" {
  repository          = github_repository.this.name
  branch              = "main"
  file                = "terraform.tfstate.age"
  content             = "{}"
  commit_message      = "Initial CI state"
  commit_author       = "automation"
  commit_email        = "automation@users.noreply.github.com"
  overwrite_on_create = true
}

resource "sodium_encrypted_item" "ssh_private_access_key" {
  public_key_base64 = base64encode(data.github_actions_public_key.gh_actions_public_key.key)
  content_base64    = base64encode(trimspace(tls_private_key.ssh_access_key.private_key_openssh))
}

# Users should not be able to access the CI's private ssh key,
# to add your own ssh key you will need to send your public key to the module
resource "github_actions_secret" "ssh_private_access_key" {
  depends_on = [
    github_repository.this,
  ]
  repository      = github_repository.this.name
  secret_name     = "SSH_PRIVATE_KEY"
  encrypted_value = sodium_encrypted_item.ssh_private_access_key.encrypted_value_base64
}
