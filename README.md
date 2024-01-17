# Live RKE2 Infrastructure on AWS Example - All in One

This example is not like the others.

## What is this?

This is an example of implementing a full infrastructure solution using GitHub's "actions" to automate applying changes.
This example is tested manually, not automatically, like the others. As such, the version used will be behind from time to time.

Here you will find a simple example of how you might implement this module to manage a single RKE2 node.
This example includes GitHub action config which will enable create, update, and destroy automation using pull requests and/or manual action triggers in the GitHub UI.

## How Do I Use It?

Follow the onboarding guide [here](./docs/guides/onboarding.md).
For an in-depth tutorial on onboarding take a look at the tutorial [here](./docs/tutorials/onboarding.md).

This is meant to be an example, it is not a managed solution.
This example is focused on automating as much as possible with security as a secondary priority, please take a close look at what this does and make good decisions for the security of your use case.
The main purpose of this example is to show a specific full implementation of the "rpm" example with integration in GitHub for users who may not be familiar with managing Terraform state, managing infrastructure using GitHub Actions, or dependency management with Nix.

### What is it missing?

- This example doesn't configure AWS authentication for you.
  - I have some docs with two options for configuring AWS, [here](./docs/guides/configuring_aws.md) or [here](./docs/tutorials/configuring_aws.md)
- This example doesn't deploy a cluster.
  - In this example we only generate one node.
  - It is possible to manage more than one node, but you will need to combine one of the other examples with this one to get that effect.
    - there is another example in progress which will show how to do this, but it is not ready yet

## Common Questions

### Why use local state?

This example uses local state because it optimizes for the onboarding process.
Using a local state file means that you don't need to configure remote state to get started.

### Why use Nix?

This example uses Nix because we are passionate about solving "works on my machine" problems.
We want to make use of GitHub's free workflow runners, which limits our container options, Nix allow us to install the tools we need without needing to build a custom container.
At the same time, Nix allows us to work locally without having to worry about synchronizing a custom container with the GitHub workflow runners or managing a local container runtime.

### Why not make a provider?

This is a lot of work, why not make a provider instead?
Terraform providers have a different use case than terraform modules;
  providers are a Terraform plugin which enables the use of Terraform on a remote API,
  modules are a collection of Terraform resources which can be used to manage a specific use case.
This example is a collection of Terraform resources which can be used to manage a specific use case, so it is a module.
The API it talks to is the AWS API, so it uses the AWS provider, which is maintained by a large community of people and certified by HashiCorp.
