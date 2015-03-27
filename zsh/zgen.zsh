# Load my zgen config
source ~/.zgen/zgen.zsh

# Un-break LS on osx
alias ls='ls -G'

# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh
    # Un-break LS on osx
    alias ls='ls -G'

    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/vagrant
    zgen oh-my-zsh plugins/docker
    zgen oh-my-zsh plugins/rsync
    zgen oh-my-zsh plugins/tmux
    zgen load nojhan/liquidprompt
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-history-substring-search


    if [ "$OSTYPE"="darwin11.0" ]; then
          zgen oh-my-zsh plugins/osx
    fi

    zgen save
fi
