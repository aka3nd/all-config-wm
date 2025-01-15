#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"


#export CPATH=$CPATH:/usr/include/gtk-3.0/
#export PKG_CONFIG_PATH=/usr/lib/pkgconfig:$PKG_CONFIG_PATH
#export CPPFLAGS="-I/usr/include/gtk-3.0 -I/usr/include/pango-1.0 -I/usr/include/glib-2.0 -I/usr/lib/glib-2.0/include $CPPFLAGS"
#export LDFLAGS="-L/usr/lib/x86_64-linux-gnu -L/usr/lib $LDFLAGS"

#export CPPFLAGS="-I/usr/include/gtk-4.0 -I/usr/include/pango-1.0 -I/usr/include/glib-2.0 -I/usr/lib/glib-2.0/include $CPPFLAGS"
#export LDFLAGS="-L/usr/lib/x86_64-linux-gnu -L/usr/lib $LDFLAGS"

#export C_INCLUDE_PATH=/usr/include/gtk-3.0:/usr/include/gtk-4.0:$C_INCLUDE_PATH
#export CPLUS_INCLUDE_PATH=/usr/include/gtk-3.0:/usr/include/gtk-4.0:$CPLUS_INCLUDE_PATH

export CPATH="$CPATH:/usr/include"

