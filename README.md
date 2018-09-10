
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


Notes
-----
- this tool uses environment variables, so if you create a new session and you already had tabs open, those old tabs won't have the new session available, unless you run `source ~/.bash_profile`
