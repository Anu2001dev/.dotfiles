
set -o vi

plugins=(git zsh-syntax-highlighting zsh-autosuggestions vi-mode fzf)

ifexist-source () {
    [[ -e $1 ]] || source $1
}

ifexist-source ~/.env

source $ZSH/oh-my-zsh.sh
source ~/.bash_profile
ifexist-source ~/.alias
ifexist-source ~/.p10k.zsh
ifexist-source ~/.docker-alias.sh
ifexist-source ~/.prerun.sh
ifexist-source ~/.fzf.zsh

source ~/.nvm/nvm.sh
source ~/.nvm/bash_completion

source ~/.cache/p10k-instant-prompt-${USER}.zsh
