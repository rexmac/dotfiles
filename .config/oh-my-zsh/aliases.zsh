#!/bin/zsh

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias cat="/usr/local/bin/bat"
alias ci="/usr/bin/vim"
alias df="/bin/df -h"
#alias diff=""
#alias du="/usr/bin/du -h"
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"
alias ffs="/usr/bin/sudo !!"
alias la="ls -a -h"
alias lf="ls -l -F -h"
alias ll="ls -l -h"
alias lla="ls -l -a"
alias ls="lsd"
alias lt="ls -l -F -h -t -r"
alias man="~/bin/batman"
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias pstree="pstree -g 3"
alias sv="/usr/bin/sudo -e"
alias top="htop"
alias vi="/usr/bin/vim"
alias yarn="nocorrect yarn"
#alias whois="whois -h whois-servers.net"

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

