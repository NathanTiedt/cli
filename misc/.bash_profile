## brew install ack
    ## ack --create-ackrc >> ~/.ackrc
## brew install htop
## brew install thefuck
## brew install nnn
## brew install git-flow
## brew install tmux
## brew install telnet
## brew install jq

alias apps='source cd_apps'
alias repos='cd ~/apps'

alias update-puppet='ssh -t ntiedt@10.1.60.9 "cd /etc/puppetlabs/code/environments/; sudo git pull"'

alias docker-build='docker-compose up --build'
alias docker-clean:all="docker container stop $(docker container ls -a -q); docker system prune -a -f --volumes"
alias docker-clean:layers='docker rmi $(docker images -f "dangling=true" -q)'
alias docker-clean:volumes='docker volume rm $(docker volume ls -qf dangling=true)'
alias docker-down='docker-compose down'
alias docker-up='docker-compose up'

alias puppet-pull="ssh -t 10.1.60.9 'cd /etc/puppetlabs/code/environments; sudo git pull'"
alias tmux-dev='tmux new-session -s $(basename "$PWD") "tmux source-file ~/.tmux/dev-session"'
alias branch='git branch'
alias create=createBranch
alias ll='ls -laG'
alias bp='source ~/.bash_profile'
alias pgpass='vim ~/.pgpass'
export PATH=/Users/ntiedt/Library/Python/2.7/bin:$PATH
export PATH=~/bin:$PATH

eval $(thefuck --alias)

export TERM=xterm-256color

export PS1="\e[0;37m(\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)) [\w]\n\e[0;35m[\!] \$  \e[m"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/.cargo/bin:$PATH"
source ~/.aws/temp_session

