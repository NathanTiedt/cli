
CLI
======
Command line tools for Developers

Installation
------------
1. clone the repo: `git@github.com:NathanTiedt/cli.git`
1. to install base package, run `npm run setup` from base directory. This will:
    1. run npm install for dependecies
    1. clone all vim related files from related repo
    1. copy over hidden rc files to your home directory
    1. link all scripts to command line names (see package.json::bin)
1. if you want the aws ip tool, run `npm run setup:aws`

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


Notes
-----
- this tool uses environment variables, so if you create a new session and you already had tabs open, those old tabs won't have the new session available, unless you run `source ~/.bash_profile`
