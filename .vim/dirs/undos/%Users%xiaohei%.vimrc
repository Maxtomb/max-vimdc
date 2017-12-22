Vim�UnDo� D�Os�ɾs�p�Y�k1����չ@x/ �&�      8"         Bundle 'file:///Users/gmarik/path/to/plugin'        5                       Y\��    _�                    �        ����                                                                                                                                                                                                                                                                                                                                                             YY��    �  �  �          "�  �            5�_�                   �        ����                                                                                                                                                                                                                                                                                                                                                             Y[>     �  �  �          let mapleader=";"5�_�                   �        ����                                                                                                                                                                                                                                                                                                                                                             Y[>     �  �  �          nmap <Leader>a ggVG5�_�                   �        ����                                                                                                                                                                                                                                                                                                                                                             Y[>	     �  �  �          %vnoremap <Leader>y :w !pbcopy<CR><CR>5�_�                   �        ����                                                                                                                                                                                                                                                                                                                                                             Y[>	     �  �  �          "nmap <Leader>p :r !pbpaste<CR><CR>5�_�                   �        ����                                                                                                                                                                                                                                                                                                                                                             Y[>     �  �  �               5�_�                   �        ����                                                                                                                                                                                                                                                                                                                                                             Y[>    �  �               5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                             Y\�0     �             �   " Fisa-vim-config   +" http://fisadev.github.io/fisa-vim-config/   " version: 8.3       N" ============================================================================   " Vim-plug initialization   K" Avoid modify this section, unless you are very sure of what you are doing       let vim_plug_just_installed = 0   6let vim_plug_path = expand('~/.vim/autoload/plug.vim')   if !filereadable(vim_plug_path)   !    echo "Installing Vim-plug..."       echo ""   $    silent !mkdir -p ~/.vim/autoload   �    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim   #    let vim_plug_just_installed = 1   endif       '" manually load vim-plug the first time   if vim_plug_just_installed   1    :execute 'source '.fnameescape(vim_plug_path)   endif       N" Obscure hacks done, you can now modify the rest of the .vimrc as you wish :)       N" ============================================================================   " Active plugins   '" You can disable or add new ones here:       J" this needs to be here, so vim-plug knows we are declaring the plugins we   " want to use   !call plug#begin('~/.vim/plugged')       " Plugins from github repos:        " Override configs by directory    .Plug 'arielrossanigo/dir-configs-override.vim'   " Better file browser   Plug 'scrooloose/nerdtree'   " Code commenter   Plug 'scrooloose/nerdcommenter'   " Class/module browser   Plug 'majutsushi/tagbar'   " Code and files fuzzy finder   Plug 'ctrlpvim/ctrlp.vim'   ." Extension to ctrlp, for fuzzy command finder   #Plug 'fisadev/vim-ctrlp-cmdpalette'   " Zen coding   Plug 'mattn/emmet-vim'   " Git integration   Plug 'motemen/git-vim'   " Tab list panel   Plug 'kien/tabman.vim'   	" Airline   Plug 'vim-airline/vim-airline'   %Plug 'vim-airline/vim-airline-themes'   *" Terminal Vim with 256 colors colorscheme   #Plug 'fisadev/fisa-vim-colorscheme'   " Consoles as buffers   Plug 'rosenfeld/conque-term'   " Pending tasks list    Plug 'fisadev/FixedTaskList.vim'   
" Surround   Plug 'tpope/vim-surround'   " Autoclose   Plug 'Townk/vim-autoclose'   " Indent text object   &Plug 'michaeljsmith/vim-indent-object'   " Indentation based movements   #Plug 'jeetsukumaran/vim-indentwise'   *" Python autocompletion, go to definition.   Plug 'davidhalter/jedi-vim'   " Better autocompletion   Plug 'Shougo/neocomplcache.vim'   >" Snippets manager (SnipMate), dependencies, and snippets repo   #Plug 'MarcWeber/vim-addon-mw-utils'   Plug 'tomtom/tlib_vim'   Plug 'honza/vim-snippets'   Plug 'garbas/vim-snipmate'   ?" Git/mercurial/others diff icons on the side of the file lines   Plug 'mhinz/vim-signify'   #" Automatically sort python imports   Plug 'fisadev/vim-isort'   " Drag visual blocks arround   Plug 'fisadev/dragvisuals.vim'   " Window chooser   Plug 't9md/vim-choosewin'   )" Python and other languages code checker   Plug 'scrooloose/syntastic'   &" Paint css colors with the real color   Plug 'lilydjwg/colorizer'   8" Ack code search (requires ack installed in the system)   Plug 'mileszs/ack.vim'   if has('python')       " YAPF formatter for Python   #    Plug 'pignacio/vim-yapf-format'   endif   5" Relative numbering of lines (0 is the current line)   L" (disabled by default because is very intrusive and can't be easily toggled   H" on/off. When the plugin is present, will always activate the relative    N" numbering every time you go to normal mode. Author refuses to add a setting    " to avoid that)   " Plug 'myusuf3/numbers.vim'       !" Plugins from vim-scripts repos:       " Search results counter   Plug 'IndexedSearch'   " XML/HTML tags navigation   Plug 'matchit.zip'   " Gvim colorscheme   Plug 'Wombat'   " Yank history navigation   Plug 'YankRing.vim'       B" Tell vim-plug we finished declaring plugins, so it can load them   call plug#end()       N" ============================================================================   )" Install plugins the first time vim runs       if vim_plug_just_installed   C    echo "Installing Bundles, please ignore key map error messages"       :PlugInstall   endif       N" ============================================================================   " Vim settings and mappings   " You can edit them as you wish       " no vi-compatible   set nocompatible       4" allow plugins by file type (required for plugins!)   filetype plugin on   filetype indent on       " tabs and spaces handling   set expandtab   set tabstop=4   set softtabstop=4   set shiftwidth=4       *" tab length exceptions on some file types   Cautocmd FileType html setlocal shiftwidth=4 tabstop=4 softtabstop=4   Iautocmd FileType htmldjango setlocal shiftwidth=4 tabstop=4 softtabstop=4   Iautocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4       " always show status bar   set ls=2       " incremental search   set incsearch   " highlighted search results   set hlsearch       " syntax highlight on   	syntax on       " show line numbers   set nu       " tab navigation mappings   map tn :tabn<CR>   map tp :tabp<CR>   map tm :tabm    map tt :tabnew    map ts :tab split<CR>   map <C-S-Right> :tabn<CR>   imap <C-S-Right> <ESC>:tabn<CR>   map <C-S-Left> :tabp<CR>   imap <C-S-Left> <ESC>:tabp<CR>       #" navigate windows with meta+arrows   map <M-Right> <c-w>l   map <M-Left> <c-w>h   map <M-Up> <c-w>k   map <M-Down> <c-w>j   imap <M-Right> <ESC><c-w>l   imap <M-Left> <ESC><c-w>h   imap <M-Up> <ESC><c-w>k   imap <M-Down> <ESC><c-w>j       $" old autocomplete keyboard shortcut   imap <C-J> <C-X><C-O>       ;" Comment this line to enable autocompletion preview window   D" (displays documentation related to the selected completion option)   >" Disabled by default because preview makes the window flicker   set completeopt-=preview       " save as sudo   ca w!! w !sudo tee "%"       " simple recursive grep   nmap ,r :Ack    nmap ,wr :Ack <cword><CR>       " use 256 colors when possible   Dif (&term =~? 'mlterm\|xterm\|xterm-256\|screen-256') || has('nvim')   	let &t_Co = 256       colorscheme fisa   else       colorscheme delek   endif       " colors for gvim   if has('gui_running')       colorscheme wombat   endif       =" when scrolling, keep cursor 3 lines away from screen border   set scrolloff=3       9" autocompletion of files and commands behaves like shell   >" (complete only the common part, list the options that match)   set wildmode=list:longest       '" better backup, swap and undos storage   Dset directory=~/.vim/dirs/tmp     " directory to place swap files in   5set backup                        " make backup files   =set backupdir=~/.vim/dirs/backups " where to put backup files   Vset undofile                      " persistent undos - undo after you re-open the file   set undodir=~/.vim/dirs/undos   !set viminfo+=n~/.vim/dirs/viminfo   '" store yankring history file there too   +let g:yankring_history_dir = '~/.vim/dirs/'       /" create needed directories if they don't exist   if !isdirectory(&backupdir)       call mkdir(&backupdir, "p")   endif   if !isdirectory(&directory)       call mkdir(&directory, "p")   endif   if !isdirectory(&undodir)       call mkdir(&undodir, "p")   endif       N" ============================================================================   " Plugins settings and mappings   " Edit them as you wish.       '" Tagbar -----------------------------        " toggle tagbar display   map <F4> :TagbarToggle<CR>   " autofocus on tagbar open   let g:tagbar_autofocus = 1       )" NERDTree -----------------------------        " toggle nerdtree display   map <F3> :NERDTreeToggle<CR>   ." open nerdtree with the current file selected   nmap ,t :NERDTreeFind<CR>   " don;t show these file types   )let NERDTreeIgnore = ['\.pyc$', '\.pyo$']           )" Tasklist ------------------------------       " show pending tasks list   map <F2> :TaskList<CR>       &" CtrlP ------------------------------       " file finder mapping   let g:ctrlp_map = ',e'   /" tags (symbols) in current file finder mapping   nmap ,g :CtrlPBufTag<CR>   ," tags (symbols) in all files finder mapping   nmap ,G :CtrlPBufTagAll<CR>   *" general code finder in all files mapping   nmap ,f :CtrlPLine<CR>   " recent files finder mapping   nmap ,m :CtrlPMRUFiles<CR>   " commands finder mapping   nmap ,c :CtrlPCmdPalette<CR>   3" to be able to call CtrlP with default search text   =function! CtrlPWithSearchText(search_text, ctrlp_command_end)   *    execute ':CtrlP' . a:ctrlp_command_end        call feedkeys(a:search_text)   endfunction   J" same as previous mappings, but calling with current word as default text   Cnmap ,wg :call CtrlPWithSearchText(expand('<cword>'), 'BufTag')<CR>   Fnmap ,wG :call CtrlPWithSearchText(expand('<cword>'), 'BufTagAll')<CR>   Anmap ,wf :call CtrlPWithSearchText(expand('<cword>'), 'Line')<CR>   =nmap ,we :call CtrlPWithSearchText(expand('<cword>'), '')<CR>   =nmap ,pe :call CtrlPWithSearchText(expand('<cfile>'), '')<CR>   Enmap ,wm :call CtrlPWithSearchText(expand('<cword>'), 'MRUFiles')<CR>   Gnmap ,wc :call CtrlPWithSearchText(expand('<cword>'), 'CmdPalette')<CR>    " don't change working directory   !let g:ctrlp_working_path_mode = 0   /" ignore these files and folders on file finder   let g:ctrlp_custom_ignore = {   5  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|node_modules)$',     \ 'file': '\.pyc$\|\.pyo$',     \ }       *" Syntastic ------------------------------       6" show list of errors and warnings on the current file   nmap <leader>e :Errors<CR>   &" check also when just opened the file   !let g:syntastic_check_on_open = 1   O" don't put icons on the sign column (it hides the vcs status icons of signify)    let g:syntastic_enable_signs = 0   O" custom icons (enable them if you use a patched font, and enable the previous    
" setting)   %"let g:syntastic_error_symbol = '✗'   '"let g:syntastic_warning_symbol = '⚠'   +"let g:syntastic_style_error_symbol = '✗'   -"let g:syntastic_style_warning_symbol = '⚠'       )" Jedi-vim ------------------------------       /" All these mappings work only for python code:   " Go to definition   let g:jedi#goto_command = ',d'   " Find ocurrences    let g:jedi#usages_command = ',o'   " Find assignments   *let g:jedi#goto_assignments_command = ',a'   " Go to definition in new tab   +nmap ,D :tab split<CR>:call jedi#goto()<CR>       ." NeoComplCache ------------------------------       @" most of them not documented because I'm not sure how they work   @" (docs aren't good, had to do a lot of trial and error to make    " it play nice)   )let g:neocomplcache_enable_at_startup = 1   *let g:neocomplcache_enable_ignore_case = 1   )let g:neocomplcache_enable_smart_case = 1   *let g:neocomplcache_enable_auto_select = 1   /let g:neocomplcache_enable_fuzzy_completion = 1   4let g:neocomplcache_enable_camel_case_completion = 1   2let g:neocomplcache_enable_underbar_completion = 1   5let g:neocomplcache_fuzzy_completion_start_length = 1   4let g:neocomplcache_auto_completion_start_length = 1   6let g:neocomplcache_manual_completion_start_length = 1   *let g:neocomplcache_min_keyword_length = 1   )let g:neocomplcache_min_syntax_length = 1   +" complete with workds from any opened file   ,let g:neocomplcache_same_filetype_lists = {}   /let g:neocomplcache_same_filetype_lists._ = '_'       '" TabMan ------------------------------       0" mappings to toggle display, and to focus on it   let g:tabman_toggle = 'tl'   let g:tabman_focus  = 'tf'       *" Autoclose ------------------------------       7" Fix to let ESC work as espected with Autoclose plugin   @let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}       ," DragVisuals ------------------------------       )" mappings to move blocks in 4 directions   'vmap <expr> <S-M-LEFT> DVB_Drag('left')   )vmap <expr> <S-M-RIGHT> DVB_Drag('right')   'vmap <expr> <S-M-DOWN> DVB_Drag('down')   #vmap <expr> <S-M-UP> DVB_Drag('up')   " mapping to duplicate block   vmap <expr> D DVB_Duplicate()       (" Signify ------------------------------       I" this first setting decides in which order try to guess your current vcs   G" UPDATE it to reflect your preferences, it will speed up opening files   (let g:signify_vcs_list = [ 'git', 'hg' ]   $" mappings to jump to changed blocks   )nmap <leader>sn <plug>(signify-next-hunk)   )nmap <leader>sp <plug>(signify-prev-hunk)   " nicer colors   ?highlight DiffAdd           cterm=bold ctermbg=none ctermfg=119   ?highlight DiffDelete        cterm=bold ctermbg=none ctermfg=167   ?highlight DiffChange        cterm=bold ctermbg=none ctermfg=227   ?highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=119   ?highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167   ?highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=227       /" Window Chooser ------------------------------       	" mapping   nmap  -  <Plug>(choosewin)   " show big letters   "let g:choosewin_overlay_enable = 1       (" Airline ------------------------------       !let g:airline_powerline_fonts = 0   !let g:airline_theme = 'bubblegum'   /let g:airline#extensions#whitespace#enabled = 0       K" to use fancy symbols for airline, uncomment the following lines and use a   ," patched font (more info on the README.rst)    "if !exists('g:airline_symbols')   "   let g:airline_symbols = {}   "endif   "let g:airline_left_sep = '⮀'   #"let g:airline_left_alt_sep = '⮁'    "let g:airline_right_sep = '⮂'   $"let g:airline_right_alt_sep = '⮃'   %"let g:airline_symbols.branch = '⭠'   '"let g:airline_symbols.readonly = '⭤'   %"let g:airline_symbols.linenr = '⭡'   set clipboard=unnamed5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                             Y\�2     �                   5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                             Y\�7     �                 Cgit clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle 5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                             Y\�H     �                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Y\�H     �                filetype off                  "�                  "set nocompatible              "  "5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Y\�H     �                call vundle#rc"�                 "filetype off                  "  "5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Y\�H     �                7"           filetype plugin indent on     " required! "�                #"     Bundle 'rstacruz/sparkup',  "�                 "  "5�_�                       5    ����                                                                                                                                                                                                                                                                                                                                                             Y\�K     �               8"         Bundle 'file:///Users/gmarik/path/to/plugin'  5�_�                             ����                                                                                                                                                                                                                                                                                                                                                          Y\�    �                 " let Vundle manage Vundle     " " required!      " Bundle 'gmarik/vundle'     "      ;"   " 可以通过以下四种方式指定插件的来源     "   " a)   �"   指定Github中vim-scripts仓库中的插件，直接指定插件名称即可，插件明中的空格使用“-”代替。     "   Bundle 'L9'     "        m"     “ b) 指定Github中其他用户仓库的插件，使用“用户名/插件名称”的方式指定     #"     Bundle 'tpope/vim-fugitive'     ("     Bundle 'Lokaltog/vim-easymotion'     2"     Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}     $"     Bundle 'tpope/vim-rails.git'     "          K"       " c) 指定非Github的Git仓库的插件，需要使用git地址     6"       Bundle 'git://git.wincent.com/command-t.git'     
"            2"         " d) 指定本地Git仓库中的插件     8"         Bundle 'file:///Users/gmarik/path/to/plugin'     "              9"           filetype plugin indent on     " required!   "5��