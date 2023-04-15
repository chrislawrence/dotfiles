export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH

export ZSH="/Users/Chris/.oh-my-zsh"

plugins=(git git-prompt)

source $ZSH/oh-my-zsh.sh

# User configuration
source ~/.aliases

# Base16 Shell
# BASE16_SHELL="$HOME/.config/base16-shell/"
# [ -n "$PS1" ] && \
    # [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        # source "$BASE16_SHELL/profile_helper.sh"
# base16_tomorrow-night

# Prompt
PROMPT="%F{0}%m %F{13}%1~ %F{7}$ %f"

# Load rbenv
eval "$(rbenv init -)"

function aud() {
  ffmpeg -activation_bytes 7b745b01 -i "$1" -c copy "${1%.*}.m4b"
}

