####################################
# GIT AUTOCOMPLETE
####################################

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

### COLOR ###
RESET="\[\017\]"
NORMAL="\[\033[0m\]"
CYAN="\[\033[1;36m\]"
GREEN="\[\033[1;32m\]"
RED="\[\033[31;1m\]"
MAGENTA="\[\033[35m\]"
YELLOW="\[\033[33;1m\]"
WHITE="\[\033[37;1m\]"
STAR="${YELLOW} ★ "

# \h = machine name
# \n = new line
# \u = user
# \w = working directory

# Display unstaged (*) and staged(+) changes
export GIT_PS1_SHOWDIRTYSTATE="1"
# Display whether there are stashed ($) changes
export GIT_PS1_SHOWSTASHSTATE="1"
# Display if there are untracked (%) files
export GIT_PS1_SHOWUNTRACKEDFILES="1"
# Display if we're ahead (>) or behind (<) or diverged (<>) relative
# to upstream
export GIT_PS1_SHOWUPSTREAM="auto"

if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
  GIT_PROMPT_THEME=Default
  source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
else
  echo "Did you update brew? Probably should reinstall bash-git-prompt."
fi

### END CUSTOM PROMPT ###

## RB ENV ##
export RBENV_ROOT="${HOME}/.rbenv"

if [ -d "${RBENV_ROOT}" ]; then
  export PATH="${RBENV_ROOT}/bin:${PATH}"
  eval "$(rbenv init -)"
fi

## NVM ##
export NVM_DIR=~/.nvm
source ~/.nvm/nvm.sh
