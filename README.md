
RZ CLI
======
Command line tools for RZ Developers

Installation
------------
The command line tools need to be symlinked and aws installed and configured.
- run `npm run setup:aws` from the main directory
- run `npm run setup` from the main directory

Individual command line tools might need their own setup

Installation
============
1. clone git repo
2. Install AWS CLI if needed (see next section for instructions)
3. from the location of the git repo, run `sudo cp session /usr/local/bin`
4. then restart your terminal, open a new tab, or type `source ~/.bash_profile`
5. run `aws_session init`
6. go in to the aws console->IAM->Users->{your-user}->Security Credentials Tab->Copy 'Assigned MFA Device'
7. run `aws_session config <MFA-Device-ARN-From-Last-Step>`
8. should be all set up!!

Install AWS CLI
===============
1. install aws cli (if you haven't done so already)
    * (if you don't have homebrew) `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
    * (if you don't have python3) `brew install python3`
    * `pip3 install --upgrade --user awscli`
    * type `aws --version` to see if it installed
    * (if that failed or returned nothing) add the aws path to PATH
    (aws cli downloaded to ~/Library/Python/{python version}/bin for me) (see nate or google for help)(you'll also have to add 'export PATH=~/Library/Python/{python version}/bin:$PATH' to your ~/.bash_profile if you have to do this step)
2. configure aws cli (if you haven't done it yet)
    * go to aws in browser
    * go to IAM
    * create access keys for your user
    * go to terminal
    * execute `aws configure`
    * enter access key and secret access key
    * enter 'us-east-1' for default region (don't listen to nate)
    * i like 'json' as the default output
3. run `./setup.sh`
    * this creates symlinks in the /usr/local/bin directory which should be accessible on your path

Updating
========
1. `git pull`
2. `./setup.sh`
3. updated!

Using Session
=============
- to initialize the tool:
    * `aws_session init`
- to configure the tool:
    * `aws_session config <MFA-Device-ARN>`
- to create a temporary session:
    * `session <Current-Auth-Code>`
- to clear a session:
    * `session clear`

Using ipseed
============
- nothing you really need to do except run it.
- `ipseed`
- is ran after successfully setting a session
- does need a session to be set for it run properly

Using ip
========
- execute ip with any number of arguments to reduce search down
- each arg runs as an 'and' statement
- for 'or' searches, put one arg in quotes with both options separated by a bar ('|')
- examples:
    - `ip dev` outputs all dev environment names
    - `ip stage web` outputs all stage web names
    - `ip prod 'web|app'` outputs all prod environment web and app ip names
- any names outputted can be ssh'd to, such as
    - `ip dev app` outputs `Host dev.app`
    - `ssh dev.app` will log you into the dev app instance

Notes
=====
- this tool uses environment variables, so if you create a new session and you already had tabs open, those old tabs won't have the new session available, unless you run `source ~/.bash_profile`
