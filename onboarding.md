# Onboarding

This is a step by step to get this example working for you.

1. Create a GitHub account
2. Create a new GitHub ***private*** repo
3. Configure your repo following [this guide](./configuring_repo.md)
4. Install Nix and enter development environment following [this guide](./setup_nix.md)
5. Configure git following [this guide](./setup_git.md)
6. Clone this repo and copy the files in this directory to the new repo

   1. `git clone git@github.com:rancher/terraform-aws-rke2.git`
   2. `git clone git@github.com:yourname/live-infra-your-repo.git`
   3. `cp -r terraform-aws-rke2/examples/live-infra-all-in-one/* live-infra-your-repo/`
7. Generate an AGE key and save it as a secret in your repo
8. Generate an ssh key pair (private and public), encrypt the private key with AGE and add it to the repo.
9. Modify the main.tf with your email, desired username, rke2 version, a unique id, etc (see locals block in main.tf)
10. Update the `./config/extra-config.yaml` with whatever configuration information you would like to set

    1. you don't need to set the token, node-ip, node-external-ip, advertise-address, or tls-san values
    2. another config will be added which adds these automatically
    3. anything you add to extra-config.yaml will override the automatic values
11. Commit and push to your new private repo
12. Watch the new repo actions

    1. you may need to run the "Update Infra" action manually on the initial setup
13. Make a small change to verify that it all works properly

    1. checkout and pull your main branch
    2. create a new branch locally and commit a small change to it
       1. you will need to prefix your commit message with something like "fix:" or "feature: "
    3. push the new branch to your private repo
    4. generate a pull request to your main branch (follow the link)
    5. watch github actions
    6. fix any issues the tests report
    7. once your PR looks good and all tests pass, merge it
14. Watch for release pr

    1. the actions use release-please to automate infrastructure versioning
    2. when you approve the release pr (titled something like `chore(main): release 0.1.10` ) it will
       1. apply the configuration
       2. create a new "release" object in GitHub
       3. merge the new automatically generated changelog
       4. merge the newly encrypted state file
    3. make sure to switch back to main and pull again to get the updated state file
