source ~/.aliases
source ~/.keys

export EDITOR="vim"

export PATH="$HOME/.rbenv/bin:/Applications/Postgres93.app/Contents/MacOS/bin:$PATH"

export PS1='\[$(tput setaf 8)\]\h \[$(tput setaf 12)\]\W$(tput setaf 10)$(git_prompt)\[$(tput sgr0)\] $ '

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Base 16

BASE16_SCHEME="ocean"
BASE16_SHELL="$HOME/.config/base16-shell/base16-$BASE16_SCHEME.dark.sh"
[[ -s $BASE16_SHELL ]] && . $BASE16_SHELL

# Git Prompt

git_prompt() {
  if [ -d .git ]; then
    echo " $(tput setaf 8)[$(git_minutes) $(git_branch)]"
  fi
}

git_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    echo "$(tput setaf 8)${ref#refs/heads/}"
  fi
}

git_minutes() {
  now=`date +%s`
  last_commit=`git log --pretty=format:'%at' -1`
  seconds=$((now-last_commit))
  minutes=$((seconds/60))
  hours=$((minutes/60))
  days=$((minutes/1440))

  if [ $minutes -lt 15 ]; then
    local string="${minutes}m"
  elif [ $minutes -lt 30 ]; then
    local string="$(tput setaf 11)${minutes}m"
  elif [ $minutes -lt 60 ]; then
    local string="$(tput setaf 1)${minutes}m"
  elif [ $minutes -lt 1440 ]; then
    local string="$(tput setaf 6)${hours}h"
  else
    local string="$(tput setaf 10)${days}d"
  fi

  echo $string
}
