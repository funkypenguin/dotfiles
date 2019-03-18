alias reload!='. ~/.zshrc'

# Occasionally (like when cloning VMs) it's necessary to ignore all the warnings from SSH about duplicate / mismatched keys
alias insecuressh='ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'

# Download youtube videos
alias youtube-dl='youtube-dl -t --audio-format mp3 --extract-audio --audio-quality 192'
