## brew install thefuck nnn git-flow tmux telnet jq fzf ack htop tig typescript terraform postgres docker
    ## ack --create-ackrc >> ~/.ackrc
## npm install -g taskbook gulp-cli
## mkdir -p ~/.vim/autoload ~/.vim/bundle && \
####  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

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
alias tmux-single='tmux new-session -s $(basename "$PWD") "tmux source-file ~/.tmux/single-dev"'
alias tmux-work='tmux new-session -s $(basename "$PWD") "tmux source-file ~/.tmux/work-station"'
alias branch='git branch'
alias create=createBranch
alias status='tig status'
alias blame='tig blame'
alias ll='ls -laG'
alias bp='source ~/.bash_profile'
alias bpedit='vim ~/.bash_profile'
alias pgpass='vim ~/.pgpass'
export PATH=/Users/ntiedt/Library/Python/2.7/bin:$PATH
export PATH=~/bin:$PATH

eval $(thefuck --alias)

export TERM=xterm-256color

export PATH="$HOME/.cargo/bin:$PATH"
#source ~/.aws/temp_session

alias lucky='vim $(ack -l "$1" | head -1)'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PS1="\e[0;37m(\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)) [\w]\n\e[0;35m[\!] \$  \e[m"
