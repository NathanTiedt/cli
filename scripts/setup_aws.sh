#!/usr/bin/env bash

configInfo=(""
"We need info from AWS for this step."
"Secret Key and Access Key can be found in AWS Console"
"Go to AWS Console -> IAM -> Users -> <YourUser> -> Security Credentials Tab -> Access Keys Section -> Create New Access Keys"
"Default Region should be 'us-east-1'"
"Default Output should be 'json'"
"")

function checkConfigs () {
  if [[ $(grep -R '[default]' ~/.aws/) ]]; then
    echo "AWS Installed and Configured"
    exit 0
  fi
}

function installAWS () {
  PIP=$(which pip) || $(which pip3)
  if [[ -z "$PIP" ]]; then
    echo "pip isn't installed"
    echo "installing python to get pip"
    brew install python
  fi
  pip install awscli --upgrade --user
}

function runAwsConfigure () {
  printf "%s\n" "${configInfo[@]}"
  read -n 1 -s -r -p "Get Access Keys and Press Any Key to Continue"
  aws configure
}

if which aws; then
  checkConfigs
  runAwsConfigure
else
  installAWS
  runAwsConfigure
fi
