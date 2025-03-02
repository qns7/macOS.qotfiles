# env vars to set on login, zsh settings in ~/.zshrc
# read first

eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="$HOME/bin:$PATH"
export HOMEBREW_INSTALL_BADGE="🐧"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export PATH="/usr/local/bin:/opt/homebrew/bin:$PATH"
clear
