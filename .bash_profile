###****************************************************************************
### Rex's .bash_profile file
###
### rex@rexmac.com
###
### Last modified: 2013-02-13
###****************************************************************************

### Load ~/.bash_ files
for file in ~/.bash_{exports,colors,prompt,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file

unset USERNAME

#set -o vi
set -o notify
set -o noclobber
#set -o nounset
shopt -s cdspell
shopt -s histappend

[[ -r $HOME/.dircolors ]] && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"

### Node Version Manager
if [ -f ~/.nvm/nvm.sh ]; then
  . ~/.nvm/nvm.sh
fi
nvm use 0.10.1

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

### tmux
if [ "$PS1" != "" -a "${STARTED_TMUX:-x}" = x -a "${SSH_TTY:-x}" != x ]; then
  STARTED_TMUX=1; export STARTED_TMUX
  sleep 1
  ( (tmux has-session -t remote && tmux attach-session -t remote) || (tmux new-session -s remote) ) && exit 0
  echo "tmux failed to start"
fi
