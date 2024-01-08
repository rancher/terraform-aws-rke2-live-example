#!/bin/bash

# Exit if any of the intermediate steps fail
set -e

# try getting secret key from state before generating new one
# WARNING! assumes state file is terraform.tfstate
SECRET_KEY="$(jq -r '.resources[] | select(.name=="age_key").instances[].attributes.result.secret_key' terraform.tfstate)"
if [ "" = "$SECRET_KEY" ]; then SECRET_KEY="$(age-keygen 2>/dev/null | grep -v '^#')"; fi
PUBLIC_KEY="$(age-keygen -y <<< $SECRET_KEY)"

# Safely produce a JSON object containing the result value.
# jq will ensure that the value is properly quoted and escaped to produce a valid JSON string.
jq -n --arg secret_key "$SECRET_KEY" --arg public_key "$PUBLIC_KEY" '{"secret_key":$secret_key,"public_key":$public_key}'
