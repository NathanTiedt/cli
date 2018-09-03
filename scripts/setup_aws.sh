#!/usr/bin/env bash

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

if which aws; then
  checkConfigs
else
  installAWS
fi
