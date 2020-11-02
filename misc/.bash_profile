
##########
## SOURCES
##########
if [ -e $HOME/.bash_functions ]; then
  source $HOME/.bash_functions
fi
if [ -e $HOME/.bash_aliases ]; then
  source $HOME/.bash_aliases
fi


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
if [ -f /usr/local/share/bash-completion/bash_completion ]; then
  . /usr/local/share/bash-completion/bash_completion
fi
