export PATH="$PATH:/Library/PostgreSQL/13/bin"
[ -f "/Users/steven.li/.ghcup/env" ] && source "/Users/steven.li/.ghcup/env" # ghcup-env

eval "$(starship init zsh)"

alias alacritty="vim ~/.config/alacritty/alacritty.yml"
alias tmuxconf="vim ~/.tmux.conf"

alias vim=nvim


export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

alias config='/usr/bin/git --git-dir=/Users/steven.li/.dotfiles/ --work-tree=/Users/steven.li'
