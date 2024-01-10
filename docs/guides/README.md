# Guides

This documentation follows [Doctaxis](https://diataxis.fr/#).
Within this directory you will find a number of "How-To" guides.

These guides are more terse than tutorials and are intended to be used as a reference.

## Quick Start Guide

1. Set up GitHub: Create account, set up SSH keys, generate a private repo, and a personal access token with necessary permissions
   - [GitHub SSH Keys](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh)
   - [GitHub Personal Access Token](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token)
     - Repository Access should just be the new private repo you created.
     - Select the following (repository) permissions: Read and Write access to: actions, administration, code, commit statuses, issues, pull requests, secrets, and workflows
     - No other permissions are required
2. Configure AWS access: Use IAM user or OIDC
   - [AWS IAM User](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html)
   - [AWS OIDC](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_oidc.html)
   - [AWS OIDC GITHUB](https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-amazon-web-services)
3. Clone this repo, copy all files from the example directory to your new repo
4. Update workflows for AWS authentication and add your GitHub token as a secret ('ADMIN_GITHUB_TOKEN') in your repo
5. Commit and push changes to your new repo, then run the setup workflow in GitHub Actions
   - make sure to pull down the new files the setup action created
6. Generate an AGE key, add the public key to the age_recipients.txt file in your repo
   - make sure to save the age secret key somewhere safe, you will need it to decrypt files in the future
7. Optionally, add your public SSH access key to the prep.sh script
8. Create a new branch, commit your changes, push to your repo, and open a PR
9. Review and merge the PR, monitor the repo actions to ensure everything works
10. Review and merge the release PR, then watch your cluster being built in the repo actions
