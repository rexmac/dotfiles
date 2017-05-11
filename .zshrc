# Path to your oh-my-zsh installation.
export ZSH=/Users/rmcconnell/.oh-my-zsh


set -K

BULLETTRAIN_TIME_BG="236"
BULLETTRAIN_TIME_FG="243"
BULLETTRAIN_DIR_BG="053"
BULLETTRAIN_DIR_FG="139"
BULLETTRAIN_GIT_BG="236"
BULLETTRAIN_GIT_FG="243"
#BULLETTRAIN_GIT_DIRTY=" %F{red}✘%F{black} "
#BULLETTRAIN_GIT_CLEAN=" %F{green}✔%F{black} "


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bullet-train"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(ant brew common-aliases encode64 gitfast git-extras jsontools tmuxinator urltools vagrant zsh-syntax-highlighting zsh-autosuggestions)

# User configuration

export PATH="/Users/rmcconnell/bin:/Users/rmcconnell/.rvm/bin:/Users/rmcconnell/Library/Python/2.7/bin:/Users/rmcconnell/pear/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"
# export MANPATH="/usr/local/man:$MANPATH"

[[ -r $HOME/.dircolors ]] && eval "$(gdircolors -b ~/.dircolors)" || eval "$(gdircolors -b)"

PERL_MB_OPT="--install_base \"/Users/rmcconnell/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/rmcconnell/perl5"; export PERL_MM_OPT;

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

export LC_ALL="en_US.UTF-8"
export LANG="en_US"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
##export NODE_PATH=/usr/local/node:/usr/local/node/lib/node_modules
##export NODE_PATH=/Users/rmcconnell/.nvm/v0.10.32/lib/node_modules
#export NACL_SDK_ROOT=~/dev/nacl_sdk/pepper_16
export EDITOR=/usr/bin/vim
export GOPATH=$HOME/go
export MANPAGER="less -X"
export NODE_ENV=local
export HISTCONTROL=ignoredups
export HISTFILESIZE=500000
export HISTIGNORE="ls:ls *:ll:cd:cd *:pwd:exit:date:* --help"
export PERL5LIB=/Users/rmcconnell/perl5/lib/perl5

export PATH="/Users/rmcconnell/.composer/vendor/bin:$PATH"

### Node Version Manager
export NVM_DIR="$HOME/.nvm"
if [ -f "$NVM_DIR/nvm.sh" ]; then
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
 nvm use default
fi
export PATH="/Users/rmcconnell/.rvm/gems/ruby-2.1.2/bin:/Users/rmcconnell/.rvm/gems/ruby-2.1.2@global/bin:/Users/rmcconnell/.rvm/rubies/ruby-2.1.2/bin:$PATH"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ci="/usr/bin/vim"
alias df="/bin/df -h"
alias diff="/usr/local/bin/colordiff"
alias du="/usr/bin/du -h"
alias ffs="/usr/bin/sudo !!"
alias grep="/usr/bin/grep --color=auto --exclude-dir .git --exclude-dir .svn --exclude-dir .tags"
alias ls="gls --color"
alias ll="gls --color -l -h"
alias la="gls --color -a -h"
alias lla="gls --color -l -a"
alias lf="gls --color -l -F -h"
alias lt="gls --color -l -F -h -t -r"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias sv="/usr/bin/sudo -e"
alias vi="/usr/bin/vim"
alias whois="whois -h whois-servers.net"

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

### Delete merged branches
deleteMerged() {
    git branch --merged | grep -v "\*" | xargs -n 1 git branch -d
}
alias deletemerged=deleteMerged

### Colored MAN pages
man() {
  env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}

# Enable autosuggestions automatically. (deprecated)
#zle-line-init() {
#    zle autosuggest-start
#}
zle -N zle-line-init

bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "^[b" beginning-of-line
bindkey "^[f" end-of-line
