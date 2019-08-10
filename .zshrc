source "$HOME/.slimzsh/slim.zsh"

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^H" backward-kill-word
bindkey -M emacs '^[[3;5~' kill-word
#bindkey "^[[1;6D" backward-word
#bindkey "^[[1;6C" forward-word

# bindkey -v

unsetopt correct_all

lazynvm() {
  unset -f nvm node npm
  export NVM_DIR=~/.nvm
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
}

nvm() {
  lazynvm
  nvm $@
}

node() {
  lazynvm
  node $@
}

npm() {
  lazynvm
  npm $@
}

# fancy-ctrl-z () {
#  if [[ $#BUFFER -eq 0 ]]; then
#    fg
#    zle redisplay
#  else
#    zle push-input
#    zle clear-screen
#  fi
#}

# zle -N fancy-ctrl-z
# bindkey '^Z' fancy-ctrl-z

eval "$(rbenv init -)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/bartosz/.sdkman"
[[ -s "/home/bartosz/.sdkman/bin/sdkman-init.sh" ]] && source "/home/bartosz/.sdkman/bin/sdkman-init.sh"
