#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias update-neovim='/home/nate/dev/scripts/update-neovim-nightly.sh'
alias vim="nvim"
alias update-all='sudo pacman -Syu && paru -Syu'
alias g="git"
alias ll="ls -l"
alias personal="cd ~/dev/repos/personal/"
alias cc="~/dev/scripts/cc.sh"
alias la="ls -la"
alias tmn="tmux new -s"
alias tmrm="tmux kill-ses -t"
alias clock="/home/nate/dev/repos/other/rsClock/target/release/rsclock -S -c"
alias n="nnn"
alias tm="tmux"
alias tmls="tmux ls"
alias gupdtdoc="g add . && g commit -m 'updated docs!' && g push"
alias nvdir="cd ~/.config/nvim/"
alias bashrc="nvim ~/.bashrc"
alias kittyrc="nvim ~/.config/kitty/kitty.conf"

if [ "$(id -u)" -eq 0 ]; then
	PS1="\[\033[m\]|\[\033[1;35m\]\t\[\033[m\]|\[\e[1;31m\]\u\[\e[1;36m\]\[\033[m\]@\[\e[1;36m\]\h\[\033[m\]:\[\e[0m\]\[\e[1;32m\][\W]> \[\e[0m\]"
else
	PS1="\[\033[m\]|\[\033[1;35m\]\t\[\033[m\]|\[\e[1m\]\u\[\e[1;36m\]\[\033[m\]@\[\e[1;36m\]\h\[\033[m\]:\[\e[0m\]\[\e[1;32m\][\W]> \[\e[0m\]"
fi
