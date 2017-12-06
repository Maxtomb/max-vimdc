set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'https://github.com/powerline/powerline.git'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'msanders/snipmate.vim'
"Plugin 'davidhalter/jedi-vim'
Plugin 'brookhong/DBGPavim'
"Plugin 'vim-scripts/DBGPavim'

call vundle#end()            " required
filetype plugin indent on    " required
let mapleader=","
map<silent><leader>e :e ~/.vimrc<cr>
map<silent><leader>t :NERDTree<cr>
map<silent><leader>p :set paste<cr>
""""""""""""""""""""""
"Common
""""""""""""""""""""""
syntax on
set number
set expandtab
set tabstop=8
set shiftwidth=4
set softtabstop=4
set autoindent
set background=dark
set nobackup
set showcmd
set laststatus=1
set foldenable
set foldmethod=manual
set clipboard=unnamed
colorscheme lucius
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul


""""""""""""""""""""""
"xdebug
""""""""""""""""""""""
let g:dbgPavimPort=9020
let g:dbgPavimBreakAtEntry=0
let g:dbgPavimPathMap = [['/root/csmp_build/application','/opt/csmp/application'],]
""""""""""""""""""""""
"Shortcut
""""""""""""""""""""""
map <F9> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        exec "!time python2.7 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
        "        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
    endif
endfunc

