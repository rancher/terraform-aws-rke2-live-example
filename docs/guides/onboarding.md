## Quick Start Guide

1. Set up GitHub: Create account, set up SSH keys, generate a private repo, and a personal access token with necessary permissions
   - [GitHub SSH Keys](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh)
2. Configure AWS access: Use IAM user or OIDC
   - [AWS IAM User](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html)
   - [AWS OIDC](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_oidc.html)
   - [AWS OIDC GITHUB](https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-amazon-web-services)
   - make sure to add the secrets to your repo (settings -> secrets and variables -> actions -> "Secrets" section)
     - OIDC requires the following secrets: AWS_REGION, AWS_ROLE
     - IAM requires the following secrets: AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, AWS_REGION
  - make sure to add the AWS_AUTH variable to your repo (settings -> secrets and variables -> actions -> "Variables" section)
    - OIDC requires the following AWS_AUTH value "OIDC"
    - IAM requires the following AWS_AUTH value "IAM"
3. Clone this repo, copy all files from the example directory to your new repo, commit and push changes
4. Create a repo specific personal access token
   - [GitHub Personal Access Token](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token)
     - Repository Access should just be the new private repo you created.
     - Select the following (repository) permissions: Read and Write access to: actions, administration, code, commit statuses, issues, pull requests, secrets, and workflows
     - No other permissions are required
5. Run the "setup" workflow in GitHub Actions on the new private repo
   - make sure to pull down the new files the setup action created
6. Update the main.tf file with your desired configuration
   - you will probably want to change the my_ variables
   - alternatively, you can use an override.tf file to configure the module
     - take a look at override_example.tf for an example
     - you can also add the override.tf file to the secret_file_list.txt to encrypt it in the repo
7. Create a new branch, commit your changes, push to your repo, and open a PR
8. Review and merge the PR, monitor the repo actions to ensure everything works
9. Review and merge the release PR, then watch your cluster being built in the repo actions
