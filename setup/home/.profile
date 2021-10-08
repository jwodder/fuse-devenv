[ -t 0 ] && mesg n
umask 0022

export LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
export PATH="$PATH:$HOME/bin:$HOME/.local/bin"
export MANPATH="$MANPATH:$HOME/man"

export PAGER=/usr/bin/less
export MANPAGER="$PAGER -is"
export LESS=-iRS
export EDITOR=/usr/bin/vim
export VISUAL="$EDITOR"
export SYSTEMD_LESS=-iRS

[ -z "$BASH" ] || . ~/.bashrc
