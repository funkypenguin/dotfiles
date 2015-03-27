#!/bin/zsh
# If I'm SSHing to a host, launch a tmux session for me when I login
# From http://balist.es/blog/2015/02/09/firing-tmux-when-logging-in-via-ssh/

set -- "$SSH_CONNECTION"
if [[ ! -z $PS1 ]]; then
    if [[ ! -z $SSH_TTY ]]; then
        if [[ -z $TMUX ]]; then
            if [[ $1 != $3 ]]; then
                if [[ ! -r ~/.notmux ]]; then
                    if ! tmux has-session -t remote; then
                            exec tmux new-session -s remote
                    else
                            exec tmux \
                                    new-session -d -s remote_$$ -t remote \;\
                                    new-window \;\
                                    attach \;\
                                    set-option destroy-unattached on
                    fi
                fi
            fi
        fi
    fi
fi

alias detach='[[ ! -z $TMUX  ]] && tmux has-session -t remote && tmux detach-client'
alias exitmux='[[ ! -z $TMUX  ]] && tmux has-session -t remote && tmux detach-client \; kill-window'
alias usa='[[ ! -z $TMUX ]] && tmux has-session -t remote && eval $(tmux show-environment -t remote | grep ^SSH_AUTH_SOCK)'
