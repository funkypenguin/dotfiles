# Load my antigen config
source ~/.antigen/antigen.zsh

antigen-use oh-my-zsh
# Un-break LS on osx
alias ls='ls -G'

antigen-bundle git
antigen-bundle vagrant
antigen-bundle docker
antigen-bundle rsync
antigen-bundle tmux
antigen-bundle zsh-users/zsh-syntax-highlighting
antigen-bundle zsh-users/zsh-history-substring-search


if [ "$OSTYPE"="darwin11.0" ]; then
      antigen-bundle osx
fi

antigen-apply
