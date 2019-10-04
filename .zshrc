export ZSH="/home/bartosz/.oh-my-zsh"

ZSH_THEME="bgro"

eval "$(rbenv init - zsh)"

DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  extract
  heroku
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code --wait'
fi

fancy-ctrl-z () {
 if [[ $#BUFFER -eq 0 ]]; then
   fg
   zle redisplay
 else
   zle push-input
   zle clear-screen
 fi
}

# binds
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^H" backward-kill-word
bindkey -M emacs '^[[3;5~' kill-word

