

# git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
# ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
ZSH_THEME="spaceship"
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
# git clone https://github.com/lukechilds/zsh-nvm.git $ZSH_CUSTOM/plugins/zsh-nvm
plugins=(
  git
  zsh-nvm
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-z
)

# https://ohmyz.sh/
source $ZSH/oh-my-zsh.sh

# -------------------------------- #
# System
# -------------------------------- #

alias ls='eza'

# -------------------------------- #
# Git
# -------------------------------- #

# Go to project root
alias gitup='cd "$(git rev-parse --show-toplevel)"'

# -------------------------------- #
# Misc
# -------------------------------- #

export EDITOR=nvim

alias vim=nvim
alias ssho="ssh-add ~/.ssh/id_ed25519"

# -------------------------------- #
# Node
# -------------------------------- #

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# -------------------------------- #
# Golang
# -------------------------------- #

export PATH=$PATH:/usr/local/go/bin
export GOBIN=~/.local/bin/

# -------------------------------- #
# Extra
# -------------------------------- #

export PATH=$HOME/.local/bin:$PATH

