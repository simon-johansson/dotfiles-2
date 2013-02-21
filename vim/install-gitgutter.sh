#!/bin/bash
DIRECTORY="~/.vim/bundle/vim-gitgutter"

if [ ! -d "`eval echo ${DIRECTORY//>}`" ]; then
    cd ~/.vim/bundle
    git clone git://github.com/airblade/vim-gitgutter.git
else
    cd ~/.vim/bundle/vim-gitgutter
    git pull
fi
