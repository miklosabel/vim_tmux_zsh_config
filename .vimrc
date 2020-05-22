"mandatory defaults
"
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set rtp^=~/.vim/bundle/ctrlp.vim

"install vundle : cd ~ && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"install pathogen: cd ~ && mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'      "  nerdtree tab
Plugin 'vim-airline'
Plugin 'tpope/vim-surround'        " surroundings: {, (, quotes, HTML tags closer
Plugin 'majutsushi/tagbar'         " tableofcontents, functions, etc
Plugin 'davidhalter/jedi-vim' 	   " Completion

Plugin 'gilsondev/searchtasks.vim' " TODO, FIXME, XXX
Plugin 'Townk/vim-autoclose'       " automatically close characters. 
Plugin 'tomtom/tcomment_vim'       " line comment, block comment
Plugin 'tpope/vim-unimpaired'       "commentary
Plugin 'lervag/vimtex'              "latex plugin for vim
Plugin 'LucHermitte/VimFold4C'     "folding plugin for C and C++
Plugin 'WolfgangMehner/bash-support'

"Themes
Plugin 'sonph/onehalf', {'rtp': 'vim/'} 

call vundle#end()

execute pathogen#infect()
execute pathogen#helptags()

set guifont=Monospace:h12

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
syntax on 

"capital w to save
command! W write

"capital Q to quit
command! Q quit

"show line numbers
set number
set ruler

set showmatch   "show bracket matches
set smartcase   "pay attention to the case when capslock are used
set clipboard=unnamed "use system clipboard

"set hightlight search
set hlsearch    "highlight all search matches
nnoremap <F3> :set hlsearch!<CR>

"Open new splitpanes to right
set splitright
set splitbelow


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

"to increase indent in new block
set smartindent

"set leader to ','
let mapleader=","

"start scrolling when we're 8 lines away from margins
set scrolloff=999
set sidescrolloff=999
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
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

"open NERDTree
nmap <F9> :NERDTreeToggle<CR>

"shortcut to open tagbar
map <F8> :TagbarToggle <CR>

" SearchTasks
let g:searchtasks_list=["TODO"]
map <leader>rs :SearchTasks %<CR>


"clang directory
let g:clang_library_path='/usr/lib/llvm-3.8/lib'

"Save whenever switching windows or leaving vim
au FocusLost,Winleave * :silent! wa

"multiple tabs
map <C-left> :tabp<CR>
map <C-right> :tabn<CR>
map <C-up> :tabr<CR>
map <C-down> :tabl<CR>

"key combos to switch splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-W>

"enable folding
set foldmethod=indent
set foldlevel=99
" enable folding with spacebar
nnoremap <space> za

" Enable scrolling vim in tmux
set mouse=a

set encoding=utf-8

set background=dark
set t_Co=256

colorscheme torte
