# Setup AGE

1. Install Age following their guide https://github.com/FiloSottile/age
   1. if you have already gotten Nix working it should be available in your environment already
2. Generate an AGE key
   1. `age-keygen -o age_key.txt`
   2. this will generate a key file in the current directory
   3. you can move this file to a more secure location if you wish
   4. you want to load this key into your environment when you want to decrypt a file
      1. the environment variables to save are `AGE_PUBLIC_KEY` and `AGE_PUBLIC_KEY`
3. Save AGE key repo secrets
   3. go to the repo secrets page https://github.com/<your user>/<your repo>/settings/secrets/actions
   4. create a new secret
   5. name the secret `AGE_SECRET_KEY`
   6. paste the output of the key file into the value field
   7. follow the same process for `AGE_PUBLIC_KEY` (using the public key file)
4. Make sure not to commit or push your key files to the repo
5. I add my AGE secrets to my development environment by setting up an RC file.
   1. the contents of my rc file are as follows:
      ```
      export AGE_SECRET_KEY=<secret key>
      export AGE_PUBLIC_KEY=<public key>
      ```
   2. I then save the rc file at `~/.config/age/rc` and link it with `ln -s ~/.config/age/rc ~/.config/age/default/rc`
   3. this allows me to load the keys into my environment with `source ~/.config/age/default/rc`
   4. you can see this in the .envrc file in this repo where is says `source .rcs` and the .rcs file where it says `source ~/.config/age/default/rc # add age secrets`
6. You should now be able to see the keys in your environment when you run `env | grep AGE`