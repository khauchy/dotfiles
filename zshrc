# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="gentoo"

# Plugins
plugins=(git virtualenvwrapper)

source $ZSH/oh-my-zsh.sh
source ~/.private.zshrc

# Aliases
alias gitlog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

alias normalfont="printf '\33]50;%s\007' \"xft:Inconsolata for Powerline:pixelsize=15:antialias=true:hinting=true\""
alias bigfont="printf '\33]50;%s\007' \"xft:Inconsolata for Powerline:pixelsize=22:antialias=true:hinting=true\""

alias socks="echo 'SOCKS on port 12345'; ssh -D localhost:12345 khauchy@khauchy.fr"
