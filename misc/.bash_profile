## brew install ack
    ## ack --create-ackrc >> ~/.ackrc
## brew install htop
## brew install thefuck
## brew install nnn
## brew install git-flow
## brew install tmux
## brew install telnet
ogre() {
  ogr2ogr -f "PostgreSQL" PG:"host:dev-pg-redzone.cryj1vgclkf9.us-east-1.rds.amazonaws.com user=rzpostgres password:clobber-recap-peculiar dbname=redzone" $1 -nln $2 -append
}

alias apps='cd ~/apps'
alias app='cd ~/apps/apps'
alias col='cd ~/apps/collectors'
alias ops='cd ~/apps/devops'
alias lib='cd ~/apps/Libraries'
alias repos='cd ~/apps'

alias awsip='cd /Users/ntiedt/apps/devops/aws_ip'
alias brokeralerts='cd /Users/ntiedt/apps/apps/rz_broker_alerts'
alias cachewf='cd ~/apps/apps/rzapi_cachefires'
alias cachehn='cd ~/apps/apps/rzapi_cachehurricanes'
alias cacheeq='cd ~/apps/apps/rzapi_cachequakes'
alias rz_cli='ops; cd rz_cli'
alias correlator='cd /Users/ntiedt/apps/apps/correlator'
alias daily='cd /Users/ntiedt/apps/apps/daily_queries'
alias dash='cd ~/apps/apps/rzdashboard'
alias dashboard='cd ~/apps/apps/rzdashboard'
alias fulcrum='cd /Users/ntiedt/apps/apps/rzapi_fulcrum'
alias geocoder='cd /Users/ntiedt/apps/Libraries/rzgeocode'
alias modis='cd ~/apps/collectors/modis'
alias notifier='cd /Users/ntiedt/apps/apps/notifier'
alias puppet='cd ~/apps/devops/puppet-aws'
alias pro='projects'
alias projects='cd /Users/ntiedt/projects'
alias rzapi='cd ~/apps/apps/rzapi'
alias riskportal='cd ~/apps/apps/rzrisk_portal'
alias scratch='atom ~/apps/scratch'
alias setup='cd ~/apps/devops/systemsetup'
alias systemsetup='cd ~/apps/devops/systemsetup'
alias wildcad='cd ~/apps/collectors/wildcad'
alias weather='cd ~/apps/collectors/weather'
alias wusp='cd /Users/ntiedt/apps/apps/wusp_alert'

alias update-dev='/Users/ntiedt/apps/devops/systemsetup/PostgreSQL/RZObjects/setup_database.sh -h dev-pg-redzone-write.redzone.aws -d redzone'
alias update-stage='/Users/ntiedt/apps/devops/systemsetup/PostgreSQL/RZObjects/setup_database.sh -h stage-pg-redzone-write.redzone.aws -d redzone'
alias update-prod='/Users/ntiedt/apps/devops/systemsetup/PostgreSQL/RZObjects/setup_database.sh -h prod-pg-redzone-write.redzone.aws -d redzone'
alias update-puppet='ssh -t ntiedt@10.1.60.9 "cd /etc/puppetlabs/code/environments/; sudo git pull"'

alias docker-build='docker-compose up --build'
alias docker-clean="docker container stop $(docker container ls -a -q); docker system prune -a -f --volumes"
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
# source /Users/ntiedt/.oh-my-git/prompt.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/.cargo/bin:$PATH"
source ~/.aws/temp_session

