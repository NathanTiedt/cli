
RZ CLI
======
Command line tools for RZ Developers

Installation
------------
The command line tools need to be symlinked and aws installed and configured.
- FIRST: run `npm run setup:aws` from the main directory
- SECOND: run `npm run setup` from the main directory

Individual command line tools might need their own setup

Updating
--------
1. `git pull`
2. `npm run setup`
3. Maybe restart terminal
4. updated!

Using
-----
- run `cli list` to output available tools and brief description
- other commands should have `help` option
- Enjoy!

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
