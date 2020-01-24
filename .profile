export PATH=$HOME/.rbenv/bin:$PATH
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:/sbin
export PATH=$PATH:~/.yarn/bin
export NVM_DIR="$HOME/.nvm"
export PATH="$PATH:./node_modules/.bin"
#export NODE_PATH=/usr/lib/node_modules:$NODE_PATH
#export NODE_PATH=$HOME/.nvm/versions/node/v12.9.1/lib/node_modules
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" --no-use # This loads nvm

alias node='unalias node ; unalias npm ; nvm use default ; node $@'
alias npm='unalias node ; unalias npm ; nvm use default ; npm $@'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
