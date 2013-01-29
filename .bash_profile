###****************************************************************************
### Rex's .bash_profile file
###
### rex@rexmac.com
###
### Last modified: 2012-02-22
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

[[ -r $HOME/.dircolors ]] && eval $(gdircolors -b $HOME/.dircolors)

### Generic Colouriser
source "`brew --prefix`/etc/grc.bashrc"

### Node Version Manager
if [ -f ~/.nvm/nvm.sh ]; then
  . ~/.nvm/nvm.sh
fi
nvm use 0.6.14


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
