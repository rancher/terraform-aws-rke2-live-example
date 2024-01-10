# While this is a Terraform config, it shouldn't really be expected to maintain the repo
#   this was the most robust interface I could find to manage the things necessary to initialize the repo
#   without a lot of boilerplate code to manage api connections
# After copying the code into your repo, run this to set it up and you can ignore it/remove it from then on

provider "github" {} # This expects the GITHUB_TOKEN to be set in the environment
# the token must have Read and Write access to Repository: actions, administration, code, commit statuses, issues, pull requests, secrets, and workflows

locals {
  name        = "live-infra-aws-rke2"
  description = "an example of a live infrastructure repo"
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
