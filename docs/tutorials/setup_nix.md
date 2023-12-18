# Setup Nix

1. Install Nix for your computer using their guide

   1. Go to https://nixos.org/download
   2. Select your OS (this guide does not support Windows, sorry)
   3. Follow the "Multi-user installation" guide
   4. you may need to restart your shell to complete the install
2. Add Nix alias to your environment

   1. we use flakes, which is marked as an experimental feature in Nix
   2. to enable them you need to add a few options when calling the Nix cli
   3. adding them as an alias helps keep this complexity to a minimum
   4. `alias nix='nix --extra-experimental-features nix-command --extra-experimental-features flakes '`
3. Install direnv for your computer and configure hook

   1. Go to https://direnv.net/docs/installation.html
   2. Follow their guide, (this guide does not support Windows, sorry)
   3. add the hook described here: https://direnv.net/docs/hook.html
      1. this will enable you to use Nix automatically in your local environment
      2. you may need to restart your shell to complete the install
4. Try it out

   1. run `direnv allow` in this directory
      1. you should see a message like this `entering dev environment...`
      2. you should see Nix load a bunch of dependencies
      3. your prompt should change to include the name of this directory
    2. source the .envrc from this directory once you have entered the Nix shell
      1. `source .envrc`
      2. you should see a message like this `setting up dev environment...`

The CI performs similar steps, but it does not use direnv, it uses the `nix` command directly.
It will enter the Nix shell, but will not source the .envrc file, this allows you to have different ways to load in secrets.
Your CI and your local environment should now be very silimar, if not identical.