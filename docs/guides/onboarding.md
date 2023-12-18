# Onboarding Guide

This is a How-To guide to get this example working for you.

1. Create a GitHub account
2. Configure your repo following [this guide](./configuring_repo.md)
3. Install Nix and enter development environment following [this guide](./setup_nix.md)
4. Configure git
5. Clone this repo and copy the files in this directory to the new repo
6. Generate an AGE key and save it as a secret in your repo following [this guide](./setup_age.md)
7. Modify the main.tf with your email, desired username, rke2 version, a unique id, etc (see locals block in main.tf)
8. Update the `./config/extra-config.yaml` with whatever rke2 configuration information you would like to set
9. Commit and push to your new private repo
10. Watch the new repo actions
11. Make a small change to verify that it all works properly
12. Watch for release pr and merge it if everything checks out
13. Watch the repo actions to make sure everything is working properly