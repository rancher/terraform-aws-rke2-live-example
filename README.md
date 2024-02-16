# Live RKE2 Infrastructure on AWS Example

## What is this?

This is an example of implementing a full infrastructure solution using GitHub's workflow system to automate applying changes.
The goal is to show how to manage your infrastructure in the way you manage your code, with version control, pull requests, and code review.
This example uses Terraform to manage infrastructure, Nix to manage local dependencies, and GitHub workflows to automate the process of applying changes to infrastructure.

Here you will find a simple example of how you might implement our RKE2 Terrraform modules to manage a single RKE2 node.
This example includes GitHub workflows which will run `terraform plan` when a commit is merged into the main branch and `terraform apply` when a release is created.
This repo uses Google's Release-Please to create release notes and tags for the repository.

## How Do I Use It?

Copy it, paste it, and modify it to fit your use case.
This example is meant to be a starting point for you to build your own infrastructure automation.

Try forking it, break the fork association, rename it, then follow the onboarding guide [here](./docs/guides/onboarding.md).

This is meant to be an example, it is not a managed solution.
This example is focused on automating as much as possible with security as a secondary priority, please take a close look at what this does and make good decisions for the security of your use case.
The main purpose of this example is to show a specific full implementation of the rpm install path with integration in GitHub for users who may not be familiar with managing Terraform state, managing infrastructure using GitHub workflows, or dependency management with Nix.

### What is it missing?

- This example doesn't configure AWS authentication for you.
  - There is excellent documentation on how to set up AWS authentication on the [configure-AWS-credential action](https://github.com/aws-actions/configure-aws-credentials?tab=readme-ov-file#using-this-action)
  - The onboarding guide will show you where to put the secrets you need to get the workflows running in your fork.
- This example doesn't deploy a cluster.
  - In this example we only generate one node.
  - It is possible to manage more than one node, but you will need to combine one of the examples in the module with this one to get that effect.
    - there is another example in progress which will show how to do this, but it is not ready yet

## Common Questions

### Why use local state?

This example uses local state because it optimizes for the onboarding process.
Using a local state file means that you don't need to configure remote state to get started.
Using the workflows supplied, state will be encrypted at rest and in transit, so it is safe to use for a small team or personal project.

### Why use Nix?

This example uses Nix because we are passionate about solving "works on my machine" problems.
We want to make use of GitHub's free workflow runners, which limits our container options, Nix allows us to install the tools we need without needing to build a custom container.
At the same time, Nix allows us to work locally without having to worry about synchronizing a custom container with the GitHub workflow runners or managing a local container runtime.

### Why not make a provider?

This is a lot of work, why not make a provider instead?
Terraform providers have a different use case than terraform modules;
  providers are a Terraform plugin which enables the use of Terraform on a remote API,
  modules are a collection of Terraform resources which can be used to manage a specific use case.
This example is a collection of Terraform resources which can be used to manage a specific use case, so it is a module.
The API it talks to is the AWS API, so it uses the AWS provider, which is maintained by a large community of people and certified by HashiCorp.
