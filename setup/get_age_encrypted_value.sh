#!/bin/bash
# Extract "content" and "recipients" arguments from the input into CONTENT and RECIPIENTS shell variables.
# jq will ensure that the values are properly quoted and escaped for consumption by the shell.
eval "$(jq -r '@sh "CONTENT=\(.content) RECIPIENTS=\(.recipients) STATE=\(.state) TYPE=\(.state_type) NAME=\(.state_name) ATTRIBUTE=\(.state_attribute)"')"

# hack to make script idepotent, attempt to get data from state file
DATA="$(echo "$STATE" | jq -r --arg type "$TYPE" --arg name "$NAME" --arg attribute "$ATTRIBUTE" '.resources[] | select(.type == $type) | select(.name == $name).instances[].attributes[$attribute]')"

# get new encrypted data if state not found
if [ "" = "$DATA" ]; then
  echo "$RECIPIENTS" > "tmp_age_recipients.txt"
  DATA="$(echo "$CONTENT" | age -e -R tmp_age_recipients.txt)"
  rm -f tmp_age_recipients.txt
fi
# Safely produce a JSON object containing the result value.
# jq will ensure that the value is properly quoted and escaped to produce a valid JSON string.
jq -n --arg data "$DATA" '{"data":$data}'
