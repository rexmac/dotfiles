# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Cool tools
# - [LSD](https://github.com/Peltoche/lsd)
# - [lolcat](https://github.com/busyloop/lolcat)
# - [Powerline Extra Symbols](https://github.com/ryanoasis/powerline-extra-symbols)
# - [Powerlevel9k](https://github.com/Powerlevel9k/powerlevel9k/)
# - [Bullet Train](https://github.com/caiogondim/bullet-train.zsh)
# - [ripgrep](https://github.com/BurntSushi/ripgrep)
# - [fd](https://github.com/sharkdp/fd)
# - [fzf](https://github.com/junegunn/fzf)
# - [forgit](https://github.com/wfxr/forgit)
# - [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy)

# Path to your oh-my-zsh installation.
export ZSH="/Users/rexmcconnell/.oh-my-zsh"

set -K

BULLETTRAIN_TIME_BG="236"
BULLETTRAIN_TIME_FG="243"
BULLETTRAIN_DIR_BG="053"
BULLETTRAIN_DIR_FG="139"
BULLETTRAIN_GIT_BG="236"
BULLETTRAIN_GIT_FG="243"
#BULLETTRAIN_GIT_DIRTY=" %F{red}✘%F{black} "
#BULLETTRAIN_GIT_CLEAN=" %F{green}✔%F{black} "

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bullet-train"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
HIST_STAMPS="yyyy.mm.dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  common-aliases
  encode64
  gitfast
  jsontools
  urltools
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
source $ZSH/custom/plugins/forgit.zsh

# User configuration

unsetopt correct_all
setopt correct

export PATH="$PATH:/Users/rexmcconnell/Library/Android/sdk/platform-tools/:/Users/rexmcconnell/bin"
# export MANPATH="/usr/local/man:$MANPATH"

[[ -r $HOME/.dircolors ]] && eval "$(gdircolors -b ~/.dircolors)" || eval "$(gdircolors -b)"

PERL_MB_OPT="--install_base \"/Users/rexmcconnell/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/rexmcconnell/perl5"; export PERL_MM_OPT;

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

export LC_ALL="en_US.UTF-8"
export LANG="en_US"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
##export NODE_PATH=/usr/local/node:/usr/local/node/lib/node_modules
##export NODE_PATH=/Users/rexmcconnell/.nvm/v0.10.32/lib/node_modules
#export NACL_SDK_ROOT=~/dev/nacl_sdk/pepper_16
export EDITOR=/usr/local/bin/code
export GITHUB_TOKEN=""
export GOPATH=$HOME/go
export MANPAGER="less -X"
export NODE_ENV=development
export HISTCONTROL=ignoredups
export HISTFILESIZE=500000
export HISTIGNORE="ls:ls *:ll:cd:cd *:pwd:exit:date:* --help"
export PERL5LIB=/Users/rexmcconnell/perl5/lib/perl5

# export PATH="$PATH:${GOPATH//://bin:}/bin"

export FZF_DEFAULT_COMMAND='fd --type f --color=never'
export FZF_ALT_C_COMMAND='fd --type d . --color=never'

### Node Version Manager
export NVM_DIR="$HOME/.nvm"
if [ -f "$NVM_DIR/nvm.sh" ]; then
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
 nvm use default
fi

### Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

zle -N zle-line-init

bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "^[b" beginning-of-line
bindkey "^[f" end-of-line

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# load dev, but only if present and the shell is interactive
if [[ -f /opt/dev/dev.sh ]] && [[ $- == *i* ]]; then
  source /opt/dev/dev.sh
fi

typeset -g ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE='20'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/rexmcconnell/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/rexmcconnell/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/rexmcconnell/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/rexmcconnell/google-cloud-sdk/completion.zsh.inc'; fi
