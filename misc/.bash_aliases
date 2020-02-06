
##########
## ALIASES
##########
alias ..='cd ..'
alias apps='source cd_apps'
alias base='cd `git rev-parse --show-toplevel`'
alias blame='tig blame'
alias bp='source ~/.bash_profile'
alias bpedit='vim ~/.bash_profile'
alias cd..='cd ..'
alias chr='chmod 644'
alias chx='chmod 755'
alias ctags='`brew --prefix`/usr/local/bin/ctags'
alias docker-build='docker-compose up --build'
alias docker-clean:all="docker container stop $(docker container ls -a -q); docker system prune -a -f --volumes"
alias docker-clean:layers='docker rmi $(docker images -f "dangling=true" -q)'
alias docker-clean:volumes='docker volume rm $(docker volume ls -qf dangling=true)'
alias docker-down='docker-compose down -v'
alias docker-up='docker-compose up'
alias down=docker-down
alias gb='cd `git rev-parse --show-toplevel`'
alias hist='history | grep'
alias ll='ls -lAGh'
alias lucky='vim $(ack -l "$1" | head -1)'
alias myip='curl http://ipecho.net/plain; echo'
alias pgpass='vim ~/.pgpass'
alias psg='ps aux | grep -v grep | grep -i -e VSZ -e'
alias puppet-pull="ssh -t 10.1.60.9 'cd /etc/puppetlabs/code/environments; sudo git pull'"
alias repos='cd ~/apps'
alias status='tig status'
alias tags='ctags -R -f .git/tags .'
alias tmux='tmux-work'
alias tmux-dev='tmux new-session -s $(basename "$PWD") "tmux source-file ~/.tmux/dev-session"'
alias tmux-single='tmux new-session -s $(basename "$PWD") "tmux source-file ~/.tmux/single-dev"'
alias tmux-work='tmux new-session -s $(basename "$PWD") "tmux source-file ~/.tmux/work-station"'
alias tr='mv --force -t ~/.Trash '
alias trash='mv --force -t ~/.Trash '
alias up=docker-up
alias update-puppet='ssh -t ntiedt@10.1.60.9 "cd /etc/puppetlabs/code/environments/; sudo git pull"'
alias venv='python3 -m venv .venv; source .venv/bin/activate'