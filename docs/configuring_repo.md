# Configuring Repo

This quick guide will walk you through configuring the repository settings in GitHub to allow actions to run properly.

You should already have a GitHub account.

Steps:

1. Create a new ***private*** repo using the defaults, name it "live-infra-" and some unique identifier, I used "live-infra-aws-rke2".

   1. make sure to choose "private" or secrets could be potentially leaked later on
2. Get oreinted with the controls

   1. At the top of the page there are "tabs" for the repository
      1. "Code", "Issues", "Pull Requests", "Actions", "Projects", "Security", "Insights", and "Settings"
   2. Click the "Settings" tab
      1. there are "sub-tabs"
         1. "General", "Collaborators", "Rules", "Actions", "Webhooks", "Codespaces", "Pages", "Code and security analysis", "Deploy keys", "Secrets and variables", "Github Apps", and "Email notifications"
   3. Click the "General" sub-tab
      1. there are "sections"
         1. "General", "Features", "Pull Requests", "Archives", and "Pushes"
         2. You will need to scroll down to see them all
3. Only allow squash merging and use the title for the commit message

   1. click the "Settings" tab
   2. click the "General" sub-tab
   3. in the "Pull Requests" section there are three check boxes
   4. "Allow merge commits", "Allow squash merging", and "Allow rebase merging"
   5. Only the "Allow squash merging" checkbox should be checked
   6. Uncheck the other boxes
   7. There is a drop-down in this option with the title "Default commit message"
   8. select "Pull request title" option
4. Click the "Always suggest updating pull request branches" checkbox to enable that
5. Click the "Automatically delete head branches" checkbox to keep your repo from filling up with unnecessary branches
6. Allow actions to automate pull requests and releases

   1. Click the "Actions" sub-tab
      1. this sub-tab has two of its own sub-tabs
      2. "General" and "Runners"
      3. click the "General" sub-tab under the "Actions" sub-tab
      4. this has several sections
         1. "Actions permissions", "Artifact and log retention", "Fork pull request workflows", "Workflow permissions", and "Access"
         2. in the Actions permissions section select the "Allow all actions and reusable workflows" radial
         3. in the "Workflow permissions" section select the "Read and write permissions" radial
         4. check the "Allow GitHub Actions to create and approve pull requests" checkbox

That's it! There are other options that you might want to set, like dissabling the wiki, but none of those are important to the automation.
