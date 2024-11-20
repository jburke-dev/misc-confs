# call this to add a directory to the PATH if it exists and is not already in the PATH
# usage: safely_add_to_path /path/to/dir
safely_add_to_path() {
  local dir="$1"
  if [[ -d "$dir" && ! ":$PATH:" == *":$dir:"* ]]; then
    export PATH="$dir:$PATH"
  fi
}

safely_add_to_path "$HOME/.local/bin"

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# This is empty since I'm using either my own prompt or a prompt engine
ZSH_THEME="typewritten"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

ZSH_CUSTOM=~/confs/zsh-config

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Add wisely, as too many plugins slow down shell startup.
# note that zsh-syntax-highlighting must be last
plugins=(git zoxide git-prompt nvm zsh-autosuggestions fzf zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
