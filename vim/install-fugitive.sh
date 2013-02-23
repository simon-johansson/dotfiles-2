#!/bin/bash
DIRECTORY="~/.vim/bundle/vim-fugitive"

if [ ! -d "`eval echo ${DIRECTORY//>}`" ]; then
    cd ~/.vim/bundle
    git clone git://github.com/tpope/vim-fugitive.git
else
    cd ~/.vim/bundle/vim-fugitive
    git pull
fi
