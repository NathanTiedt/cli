#!/usr/bin/env bash

DIRECTORY=~/.node_modules
INSTRUCTIONS=(""
"You will need you mfa device arn from AWS console"
"Go to AWS Console -> IAM -> Users -> {YourUser} -> Security Credentials Tab -> Copy 'Assigned MFA Device'"
"")

function setupSession () {
  scripts/aws_session init
  printf "%s\n" "${INSTRUCTIONS[@]}"
  read -n 1 -s -r -p "Get MFA Device ARN and Press Any Key to Continue"
  read -r -p "Enter MFA Device Arn:" arn
  scripts/aws_session config $arn
}

##
# setup script for rz_cli tools!
##
if [ ! -d "$DIRECTORY" ]; then
  mkdir ~/.node_modules  # needed for user object for bitbucket
fi
setupSession

