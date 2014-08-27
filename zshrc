# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="gentoo"

# Plugins
plugins=(git battery)

source $ZSH/oh-my-zsh.sh
source ~/.private.zshrc

# Aliases
alias latexcount='perl ~/Documents/Scripts/latexcount.pl'
alias gitlog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# Text corrections, taken from http://matt.might.net/articles/shell-scripts-for-passive-voice-weasel-words-duplicates/
alias weasel='bash /home/plajoiem/Documents/Scripts/./weasel.sh'
alias duplicates='perl /home/plajoiem/Documents/Scripts/./duplicates.perl'
alias passive='bash /home/plajoiem/Documents/Scripts/./passive.sh'
text_check() { weasel $*;  duplicates $*;  passive $*; }
# generates a pdf and crop it (useful for TikZ-generated PDFs)
xelfig() {
    xelatex $1.tex
    pdfcrop $1.pdf $1.pdf
}
#alias xelfig=xelfig

eval $(keychain --eval --agents ssh -Q --quiet id_ecdsa)

export TERM=xterm
