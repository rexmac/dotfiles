# Cool tools
# - [LSD](https://github.com/Peltoche/lsd)
# - [lolcat](https://github.com/busyloop/lolcat)
# - [Powerline Extra Symbols](https://github.com/ryanoasis/powerline-extra-symbols)
# - [Powerlevel10k](https://github.com/romkatv/powerlevel10k/)
# - [Bullet Train](https://github.com/caiogondim/bullet-train.zsh)
# - [ripgrep](https://github.com/BurntSushi/ripgrep)
# - [fd](https://github.com/sharkdp/fd)
# - [fzf](https://github.com/junegunn/fzf)
# - [forgit](https://github.com/wfxr/forgit)
# - [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy)
# - [bat](https://github.com/sharkdp/bat)
# - [hexyl](https://github.com/sharkdp/hexyl)
# - [hyperfine](https://github.com/sharkdp/hyperfine)
# - [misc](https://remysharp.com/2018/08/23/cli-improved)
# - [htop](http://hisham.hm/htop/index.php)

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/rexmcconnell/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"
HIST_STAMPS="yyyy.mm.dd"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM="$HOME/.config/oh-my-zsh"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  common-aliases
  encode64
  fd
  fzf
  gh
  gitfast
  jsontools
  urltools
  yarn
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

unsetopt correct_all
setopt correct

# export MANPATH="/usr/local/man:$MANPATH"
export PATH="$PATH:/Users/rexmcconnell/bin"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
#export LC_ALL="en_US.UTF-8"
#export LANG="en_US"
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
##export NODE_PATH=/usr/local/node:/usr/local/node/lib/node_modules
##export NODE_PATH=/Users/rexmcconnell/.nvm/v0.10.32/lib/node_modules
#export NACL_SDK_ROOT=~/dev/nacl_sdk/pepper_16
#export EDITOR=/usr/local/bin/code
#export GOPATH=$HOME/go
#export MANPAGER="less -X"
#export NODE_ENV=development
#export HISTCONTROL=ignoredups
#export HISTFILESIZE=500000
#export HISTIGNORE="ls:ls *:ll:cd:cd *:pwd:exit:date:* --help"
#export PERL5LIB=/Users/rexmcconnell/perl5/lib/perl5

# Confgiure `fzf` to use `fd` rather than `find`
export FZF_DEFAULT_COMMAND='fd --type f --color=never'
export FZF_ALT_C_COMMAND='fd --type d . --color=never'

# ???
# zle -N zle-line-init

# ???
bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "^[b" beginning-of-line
bindkey "^[f" end-of-line

# ???
typeset -g ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE='20'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# MUST BE LAST LINE!
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

