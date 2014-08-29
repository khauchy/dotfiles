# Dotfiles

These are my dotfiles.

To clone:

    git clone https://github.com/khauchy/dotfiles.git
    cd dotfiles
    git submodule update --init

and create all the symlinks.

To ignore vim's tags, run the two following commands:

    git config --global core.excludesfile '~/.cvsignore'
    echo tags >> ~/.cvsignore

(see the FAQ on pathogen's [repository](https://github.com/tpope/vim-pathogen))
