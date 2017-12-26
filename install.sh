#!/bin/bash
set -e
cp .vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf
cp xh ~/ && source xh
type sshpass
if [ "$?" != "0" ]; then
    cp sshpass /usr/bin
fi
if test -e ~/.vim/bundle/Vundle.vim 
then
    echo "vundle exist"
else
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

