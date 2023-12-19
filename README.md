# Live RKE2 Infrastructure on AWS Example - All in One

This example is not like the others.

## What is this?

This is an example of implementing a full infrastructure solution using GitHub's "actions" to automate applying changes.
This example is tested manually, not automatically, like the others. As such, the version used will be behind from time to time.

Here you will find a simple example of how you might implement this module to manage a single RKE2 node.
This example includes GitHub action config which will enable create, update, and destroy automation using pull requests and/or manual action triggers in the GitHub UI.

## How Do I Use It?

Copy the contents of this directory into a new private repo and follow the onboarding guide [here](./docs/onboarding.md).

This is meant to be an example, it is not a managed solution.
This example is focused on automating as much as possible with security as a secondary priority, please take a close look at what this does and make good decisions for the security of your use case.
The main purpose of this example is to show a specific full implementation of the "rpm" example with integration in GitHub for users who may not be familiar with managing Terraform state, managing infrastructure using GitHub Actions, or dependency management with Nix.

### What is it missing?

- This example doesn't configure AWS authentication for you.
  - I have some docs with two options for configuring AWS, [here](./docs/configuring_aws.md)
- This example doesn't generate an AGE key for you to encrypt secrets.
  - You will need to generate an AGE key and store it in the repo's secrets, see the guide [here](./docs/onboarding.md) for all the steps I took to setup mine.
- This example doesn't deploy a cluster.
  - In this example we only generate one node, using the default config.
  - It is possible to manage more than one node, but you will need to combine one of the other examples with this one to get that effect.

## Common Questions

### I am getting an error about a missing ssh key

You are missing an ssh key. You need to generate an ssh key, encrypt it with AGE, and add it to the repo. The guide [here](./docs/onboarding.md) has all the steps I took to setup mine.
The public key can be saved in the repo unencrypted, the automation expects it to be named "ssh_key.pub" the GH workflows will generate this for you on the first time you release.
