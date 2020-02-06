
##########
## SOURCES
##########
source .bash_functions/index


##########
## ALIASES
##########
alias ..='cd ..'
alias apps='source cd_apps'
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
alias up=docker-up
alias update-puppet='ssh -t ntiedt@10.1.60.9 "cd /etc/puppetlabs/code/environments/; sudo git pull"'
alias venv='python3 -m venv .venv; source .venv/bin/activate'


##########
## EXPORTS
##########
export NVM_DIR="$HOME/.nvm"
export PATH=/Users/ntiedt/Library/Python/2.7/bin:$PATH
export PATH=~/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"
#export PS1="\e[0;37m(\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)) [\w]\n\e[0;35m[\!] \$  \e[m"
export PS1="\n\e[0;36m\$(/bin/date)\n\e[0;37m(\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)) [\w]\n\e[0;35m[\!] \$  \e[m"
export TERM=xterm-256color


#########
## RANDOM
#########
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
eval $(thefuck --alias)
set -o vi  # sets bash prompt to use vi movements after hitting `ESC`
#source ~/.aws/temp_session
