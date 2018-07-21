"mandatory defaults
"
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set rtp^=~/.vim/bundle/ctrlp.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'      " nice colors!
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-nerdtree-tabs'
Plugin 'vim-airline'
Plugin 'tpope/vim-surround'        " surroundings: {, (, quotes, HTML tags closer
Plugin 'vim-windowswap'
Plugin 'majutsushi/tagbar'         " tableofcontents, functions, etc
Plugin 'godlygeek/tabular'         " indention tool

Plugin 'benmills/vimux'            " multiwindow
Plugin 'gilsondev/searchtasks.vim' " TODO, FIXME, XXX
Plugin 'Townk/vim-autoclose'       " automatically close characters. 
Plugin 'tomtom/tcomment_vim'       " line comment, block comment
Plugin 'tmhedberg/SimpylFold'      " code folding
Plugin 'vim-scripts/indentpython.vim' "auto-indent
Plugin 'Valloric/YouCompleteMe'     "autocomplete
Plugin 'vim-syntastic/syntastic'    "syntax highlighting
Plugin 'nvie/vim-flake8'            "syntax checking
Plugin 'jnurmine/Zenburn'           "zenburn colorscheme
Plugin 'altercation/vim-colors-solarized' "solarized colorscheme
Plugin 'tpope/vim-commentary'       "commentary


call vundle#end()
filetype plugin indent on

"show line numbers
set number
set ruler

set showmatch   "show bracket matches
set hlsearch    "highlight all search matches
set smartcase   "pay attention to the case when capslock are used
set clipboard=unnamed "use system clipboard


"set proper tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

"Open new splitpanes to right
set splitright

"always display the status line
set laststatus=2

"no arrows
let g:elite_mode=1

"highlight current line
set cursorline

"setting up autoclose 
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'", '#{': '}' }
let g:AutoCloseProtectedRegions = ["Character"]
let g:autoclose_vim_commentmode = 1

"give us nice EOL characters
"	set list
"	set listchars=tab:>-\,eol:¬

"to keep indent in new line
" set autoindent  

"to increase indent in new block
set smartindent

"set leader to ','
let mapleader=","

"start scrolling when we're 8 lines away from margins
set scrolloff=20
set sidescrolloff=150
set sidescroll=1

"toggle relative numbering and set to absolrute on loss of focus or insert mode
set rnu
function! ToggleNumbersOn()
    set nu!
    set rnu
endfunction
function! ToggleRelativeOn()
    set rnu!
    set nu
endfunction
autocmd FocusLost * call ToggleRelativeOn()
autocmd FocusGained * call ToggleRelativeOn()
autocmd InsertEnter * call ToggleRelativeOn()
autocmd InsertLeave * call ToggleRelativeOn()

" When editing a file, always jump to the last known cursor position.
"   " Don't do it for commit messages, when the position is invalid, or when
"     " inside an event handler (happens when dropping a file on gvim).
autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif


"newline 
inoremap <S-Enter> O
nmap <CR> o

"open NERDTree
nmap <F9> :NERDTreeTabsToggle<CR>

"shortcut to open tagbar
map <F8> :TagbarToggle <CR>

"Prompt for a command to run
map <leader>vp :VimuxPromptCommand<CR>

"clang directory
let g:clang_library_path='/usr/lib/llvm-3.8/lib'

"Save whenever switching windows or leaving vim
au FocusLost,Winleave * :silent! wa


"multiple tabs
map <C-left> :tabp<CR>
map <C-right> :tabn<CR>
map <C-up> :tabr<CR>
map <C-down> :tabl<CR>


"""python cuccok
"split remake
set splitbelow
set splitright

"key combos to switch splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-W>

"enable folding
set foldmethod=indent
set foldlevel=99
"enable folding with spacebar
nnoremap <space> za

"add proper PEP8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4         | 
    \ set softtabstop=4     |
    \ set shiftwidth=4      |
    \ set textwidth=79      |
    \ set expandtab         |
    \ set autoindent        |
    \ set fileformat=unix   

set encoding=utf-8

"YouCompleteMe custimization
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_python_binary_path = '/usr/bin/python'

"syntax highlighting
let python_highlight_all=1
syntax on 

colorscheme zenburn

"switch between solarized dark and light
call togglebg#map("<F5>")

