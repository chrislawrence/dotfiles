export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH

export ZSH="/Users/Chris/.oh-my-zsh"

plugins=(git git-prompt)

source $ZSH/oh-my-zsh.sh

# User configuration
source ~/.aliases

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        source "$BASE16_SHELL/profile_helper.sh"
base16_tomorrow-night

# Prompt
PROMPT="%F{19}%m %F{12}%1~ %F{8}$ %f"

# Load rbenv
eval "$(rbenv init -)"
