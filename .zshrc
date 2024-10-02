# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

#Adding gopath to path
export PATH=$PATH:$(go env GOPATH)/bin
export PATH=$PATH:/home/aztral/.cargo/bin

# Function to create a directory and navigate into it
mkcd() {
  mkdir -p "$1" && cd "$1"
}


# General Aliases
# alias ..="cd .."
# alias ...="cd ../.."
# alias ....="cd ../../.."
# alias ~="cd ~"
alias c="clear"

# Listing files
alias ls="lsd"
alias ll="lsd -l"
alias la="lsd -a"
alias lla="lsd -la"
alias l="lsd -CF"
alias lt="lsd --tree"

# Quick edit and source .zshrc
alias e='nvim ~/.zshrc'
alias zshconfig="nvim ~/.zshrc"
alias reload="source ~/.zshrc"

# Common commands with sudo
alias please="sudo"
alias update="sudo apt update && sudo apt upgrade"

# Git shortcuts
alias g="git"
alias ga="git add"
alias gaa="git add --all"
alias gau="git add -u"
alias gc="git commit"
alias gcm="git commit -m"
alias gca="git commit --amend"
alias gp="git push"
alias gl="git pull"
alias gst="git status"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gcl="git clone"
alias gb="git branch"
alias gbd="git branch -d"
alias gm="git merge"

# File management
# alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
alias mkdir="mkdir -p"
alias df="df -h"
alias du="du -h"
alias duf="du -sh *"

# Network
alias ping="ping -c 5"
alias ports="netstat -tulanp"
alias myip="curl ifconfig.me"

# System monitoring
alias top="htop"
alias meminfo="free -m -l -t"
alias cpuinfo="lscpu"


eval "$(zoxide init --cmd cd zsh)"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
fastfetch
