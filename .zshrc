# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# This is empty since I'm using either my own prompt or a prompt engine
ZSH_THEME=""

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

ZSH_CUSTOM=~/confs/zsh-config

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zoxide git-prompt nvm zsh-autosuggestions fzf)

source $ZSH/oh-my-zsh.sh
