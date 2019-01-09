export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
rbenv init - | source
eval (python -m virtualfish)
alias vim="nvim"
alias vi="nvim"
alias c="clear"
set -Ux GOPATH $HOME/.go
set -x PATH $GOPATH/bin $PATH
eval (direnv hook fish)
export EDITOR=vim
