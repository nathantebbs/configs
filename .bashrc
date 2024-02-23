#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias update-neovim='/home/nate/dev/scripts/update-neovim-nightly.sh'
alias vim="nvim"
alias g="git"
alias ll="ls -l"
alias personal="cd ~/dev/repos/personal/"
alias cc="~/dev/scripts/cc.sh"
alias la="ls -la"
alias tmn="tmux new -s"
alias tmrm="tmux kill-ses -t"
alias clock="/home/nate/dev/repos/other/rsClock/target/release/rsclock -S -c"
alias tm="tmux"
alias tmls="tmux ls"
alias gupdtdoc="g add . && g commit -m 'updated docs!' && g push"
alias nvdir="cd ~/.config/nvim/"
alias bashrc="nvim ~/.bashrc"
alias kittyrc="nvim ~/.config/kitty/kitty.conf"

# Define colors for formatting
RESET='\[\033[0m\]'
RED='\[\033[0;31m\]'
GREEN='\[\033[0;32m\]'
YELLOW='\[\033[0;33m\]'
BLUE='\[\033[0;34m\]'
PURPLE='\[\033[0;35m\]'
CYAN='\[\033[0;36m\]'
WHITE='\[\033[0;37m\]'
BOLD='\[\033[1m\]'

# Function to get current git branch
parse_git_branch() {
	git branch 2>/dev/null | sed -n -e 's/^\* \(.*\)/ (\1)/p'
}

# Custom PS1 prompt
PS1="${BOLD}${GREEN}\u${RESET}@${BOLD}${YELLOW}\h${RESET}:${BOLD}${BLUE}\w${RESET}\$(parse_git_branch) ${BOLD}${CYAN}\$${RESET} "
