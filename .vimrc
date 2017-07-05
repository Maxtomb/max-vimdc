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
colorscheme lucius
filetype on
filetype plugin on
set background=dark
set nu
set tabstop
set nobackup
set cursorline
set ruler
set autoindent
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
set showcmd
set laststatus=1
set foldenable
set foldmethod=manual
set clipboard=unnamed
