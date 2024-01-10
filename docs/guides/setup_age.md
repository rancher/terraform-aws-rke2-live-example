# Setup Age

1. Install [age](https://github.com/FiloSottile/age)
   1. if you have already gotten Nix working it should be available in your environment already
2. Generate a new key `age-keygen -o age_key.txt`
3. Save the key as a secret in your repo
4. Make sure not to commit or push your key files to the repo
5. Create an .rc file saving the keys as environment variables
   1. generate `~/.config/age/default/rc`
   2. content:
      ```bash
      export AGE_SECRET_KEY="<your age secret key>"
      export AGE_RECIPIENTS_FILE="<path to your age recipients file>"
      ```
6. The rc file will be sourced by .envrc with the .rcs file