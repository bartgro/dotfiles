# bgro ZSH Theme

PROMPT='
${_current_dir} %{$FG[008]%}$(git_current_branch)$(parse_git_dirty)%{$reset_color%} $(git_prompt_behind)$(git_prompt_ahead)
%{$FG[$CARETCOLOR]%}❱%{$reset_color%} '

PROMPT2='%{$fg[$CARETCOLOR]%}❰%{$reset_color%} '

local _current_dir="%{$fg_bold[blue]%}%3~%{$reset_color%}"

function _current_dir() {
  local _max_pwd_length="65"
  if [[ $(echo -n $PWD | wc -c) -gt ${_max_pwd_length} ]]; then
    echo "%{$fg_bold[blue]%}%-2~ ... %3~%{$reset_color%} "
  else
    echo "%{$fg_bold[blue]%}%~%{$reset_color%} "
  fi
}

if [[ $USER == "root" ]]; then
  CARETCOLOR="red"
else
  CARETCOLOR="013"
fi

ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$FG[001]%}⇣%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$FG[002]%}⇡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
