###****************************************************************************
### Rex's .bashrc file
###
### rex@rexmac.com
###
### Last modified: 2013-02-13
###****************************************************************************

###******************************************************************
### Source global definitions
###
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

### Only source ~/.bash_profile for interactive shells
[ -n "$PS1" ] && source ~/.bash_profile

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}
