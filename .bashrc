###****************************************************************************
### Rex's .bashrc file
###
### rex@webjuice.com
###
### Last modified: 2008-12-20
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
