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
   1. cat the contents of the key file
      1. `cat age_key.txt`
   2. copy the output
   3. go to the repo secrets page
   4. create a new secret
   5. name the secret `AGE_SECRET_KEY`
   6. paste the output of the key file into the value field
   7. follow the same process for `AGE_PUBLIC_KEY`
4. make sure not to commit or push your key files to the repo