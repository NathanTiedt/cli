#!/usr/bin/env bash

##
# Setup script for RZ CLI Tools
# Other setup tasks can be placed here
# Currently:
# - runs session setup 
##

INSTRUCTIONS=(""
"You will need you mfa device arn from AWS console"
"Go to AWS Console -> IAM -> Users -> {YourUser} -> Security Credentials Tab -> Copy 'Assigned MFA Device'"
"")

function setupSession () {
  if [[ ! -f ~/.aws/mfa_arn ]] || [[ ! $(cat ~/.aws/mfa) ]]; then
    scripts/aws_session init
    printf "%s\n" "${INSTRUCTIONS[@]}"
    read -n 1 -s -r -p "Get MFA Device ARN and Press Any Key to Continue"
    read -r -p "Enter MFA Device Arn:" arn
    scripts/aws_session config $arn
  fi
}


setupSession

