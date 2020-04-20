export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

alias vim="nvim"
alias vi="nvim"
alias c="clear"

set -x PATH /home/hiroki/.pyenv/bin $PATH
source (pyenv init - | psub)
set -x PYENV_PATH $HOME/.pyenv

export EDITOR=vim

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end
