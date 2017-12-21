#!/bin/bash
cp .vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf
if test -e ~/.vim/bundle/Vundle.vim 
then
    echo "vundle exist"
else
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

