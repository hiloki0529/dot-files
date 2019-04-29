export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
rbenv init - | source

alias vim="nvim"
alias vi="nvim"
alias c="clear"
set -Ux GOPATH $HOME/.go
set -x PATH $GOPATH/bin $PATH
eval (direnv hook fish)

set -x PATH /home/hiroki/.pyenv/bin $PATH
. (pyenv init - | psub)
set -x PYENV_PATH $HOME/.pyenv

export EDITOR=vim
