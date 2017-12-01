set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'https://github.com/powerline/powerline.git'
Plugin 'jonathanfilip/vim-lucius'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on
"common
set number
set expandtab
set tabstop=8
set shiftwidth=4
set softtabstop=4
set autoindent
set background=dark
set nobackup
set cursorline
set showcmd
set laststatus=1
set foldenable
set foldmethod=manual
set clipboard=unnamed
"theme
colorscheme lucius

autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
