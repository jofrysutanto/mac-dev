# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git sublime zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Pure Prompt
autoload -U promptinit; promptinit
prompt pure

bindkey -e
# Use Ctrl+[ and Ctrl+] to go forward/backward on terminal
bindkey '^]' forward-word
bindkey '^[' backward-word

export PATH=/Applications/MAMP/bin/php/php7.1.6/bin:$PATH

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Aliases
alias htdocs="cd ~/Documents/htdocs"
alias theme="cd ./wp-content/themes/"
alias g='gulp'
alias art='php artisan'
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
