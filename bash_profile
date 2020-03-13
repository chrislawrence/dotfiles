source ~/.aliases
source ~/.keys

export EDITOR="vim"

export PATH="/usr/local/opt/qt/bin:$HOME/.rbenv/bin:/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

export PS1='\[$(tput setaf 8)\]\h \[$(tput setaf 2)\]\W\[$(tput setaf 10)\]$(git_prompt)\[$(tput setaf 6)\] $ \[$(tput sgr0)\]'

eval "$(rbenv init -)"

# Base 16

BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# for automatic running spring
# mkdir .git/safe in the root of repositories you trust
export PATH=".git/safe/../../bin:$PATH"

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
  elif [ $minutes -lt 1440 ]; then
    local string="${hours}h"
  else
    local string="${days}d"
  fi

  echo $string
}
export PATH="/usr/local/opt/qt/bin:$PATH"
export PATH="/usr/local/opt/qt/bin:$PATH"
