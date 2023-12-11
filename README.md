# Live RKE2 Infrastructure on AWS Example - All in One

This example is not like the others.

## What is this?

This is an example of implementing a full infrastructure solution using GitHub's "actions" to automate applying changes.
This example is tested manually, not automatically, like the others.

Here you will find a simple example of how you might implement this module to manage a single RKE2 node.
This example includes GitHub action config which will enable create, update, and destroy automation using pull requests and/or manual action triggers in the GitHub UI.

## How Do I Use It?

This is meant to be an example, it is not a full solution.
Copy the contents of this directory into a new private repo and follow the onboarding guide [here](./onboarding.md).

### What is it missing?

- This example doesn't authenticate with AWS for you.
  - I have some docs with two options for configuring AWS, [here](./configuring_aws.md)
- This example doesn't configure your repo
  - For this example to work in the way it was tested you need to configure the repo you use it in properly, [here](./configuring_repo.md) is a guide on how I configure mine.
  - This example also assumes a certain development process, [here](./development_process.md) is a guide on my development process
- This example doesn't generate an ssh key for you to access the server.
  - You will need to generate an ssh key and store it in the repo (encrypted with AGE).
  - A guide for this is in the onboarding guide, [here](./onboarding.md)
- This example doesn't generate an AGE key for you to encrypt secrets.
  - You will need to generate an AGE key and store it in the repo's secrets, see the guide [here](./onboarding.md) for all the steps I took to setup mine.
- This example doesn't manage a cluster for you.
  - In this example we only generate one node, using the default config.
  - It is possible to manage more than one node, but you will need to combine one of the other examples with this one to get that effect.
  - The main purpose of this example is to show a specific full implementation of the "rpm" example with integration in GitHub for users who may not be familiar with managing Terraform state, managing infrastructure using GitHub Actions, or dependency management with Nix.
