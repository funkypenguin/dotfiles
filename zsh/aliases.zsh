alias reload!='. ~/.zshrc'

# Occasionally (like when cloning VMs) it's necessary to ignore all the warnings from SSH about duplicate / mismatched keys
alias insecuressh='ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'
