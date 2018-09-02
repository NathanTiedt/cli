
BIT
===
Git Flow Replacement
--------------------

This is designed to be a replacement for git flow, where pull requests are triggered instead of simply local merges

Feature
-------
- Meant for new features for the code
-- pulls from develop
-- creates new branch named `feature/<ticket_id>`
-- pushes new branch to origin

- base command: `bit feature` or `bit f`
-- to start add `start <ticket_id>`
--- ticket id could be replaced with some other identifier
-- to end add `end <ticket_id>`

- Examples:
-- `bit feature start TWP-1301`
-- `bit f end TWP-1301`


Release
-------
- Meant for new releases for the code
-- pulls from develop
-- creates new branch named `release/<ticket_id>`
-- pushes new branch to origin

- base command: `bit release` or `bit r`
-- to start add `start <ticket_id>`
--- ticket id could be replaced with some other identifier
-- to end add `end <ticket_id>`

- Examples:
-- `bit release start TWP-1301`
-- `bit r end TWP-1301`
