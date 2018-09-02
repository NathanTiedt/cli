#!/usr/bin/env bash

DIRECTORY=~/.node_modules

##
# setup script for rz_cli tools!
# TODO: also install aws cli tools
##
if [ ! -d "$DIRECTORY" ]; then
  mkdir ~/.node_modules  # needed for user object for bitbucket
fi


