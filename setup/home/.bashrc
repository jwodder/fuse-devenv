[ -n "$PS1" ] || return

alias ls='LC_ALL=C.UTF-8 ls'
alias toc='ls -ACF --color'
alias sort='LC_ALL=C.UTF-8 sort'
alias tree="LC_ALL=C.UTF-8 tree -aF -I '__pycache__|.git|venv|.nox|.tox|*.egg-info|.cache' --matchdirs --noreport"

PS1='\u@\h:\w\$ '

shopt -s checkwinsize globstar no_empty_cmd_completion progcomp
set -o ignoreeof -o pipefail

HISTCONTROL=ignoredups
HISTSIZE=1000
HISTFILESIZE=2000

function _have_command {
    command -V "$1" >/dev/null 2>&1
}

if _have_command lesspipe
then eval "$(lesspipe)"
fi

if _have_command dircolors
then if [ -r ~/.dircolors ]
     then eval "$(dircolors -b ~/.dircolors)"
     else eval "$(dircolors -b)"
     fi
fi

function show_exit_status {
    CHILD_ERROR="${?:-0}"
    [ "$CHILD_ERROR" = 0 ] || printf '\033[1;31m[%d]\033[0m\n' "$CHILD_ERROR"
}

PROMPT_COMMAND=show_exit_status

if [ -e "$HOME/share/ps1.py" ]
then PS1_GIT=on
     PROMPT_COMMAND="$PROMPT_COMMAND"'; PS1="$(python3 ~/share/ps1.py "$PS1_GIT")"'
fi

BASH_COMPLETION_COMPAT_DIR=/etc/bash_completion.d
for compfile in /usr/local/share/bash-completion/bash_completion \
                /usr/share/bash-completion/bash_completion \
                /etc/bash_completion
do if [ -r "$compfile" ]
   then . "$compfile"
        break
   fi
done
