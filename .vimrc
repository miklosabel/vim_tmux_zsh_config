"mandatory defaults
"
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set rtp^=~/.vim/bundle/ctrlp.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'      "  nerdtree tab
Plugin 'vim-airline'
Plugin 'tpope/vim-surround'        " surroundings: {, (, quotes, HTML tags closer
Plugin 'majutsushi/tagbar'         " tableofcontents, functions, etc
Plugin 'python-mode/python-mode'
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

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
syntax on 

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

colorscheme onehalfdark

" Jedi completion
" let g:jedi#auto_initialization=1
" let g:jedi#auto_vim_configuration=1
" let g:jedi#use_tabs_not_buffers=1
" let g:jedi#popup_on_dot=1
" let g:jedi#show_call_signatures="1"
let g:jedi#goto_command="<leader>g"
let g:jedi#goto_definitions_command="<leader>gd"
let g:jedi#usages_command="<leader>gn"
" let g:jedi#completions_command="<leader>Space"
let g:jedi#rename_command="<leader>rr"

" " Pymode plugins
let g:pymode=1
let g:pymode_warnings=1
let g:pymode_paths=[]
let g:pymode_trim_whitespaces=1
let g:pymode_options=1 	" emiatt van format

let g:pymode_quickfix_minheight=3
let g:pymode_quickfix_maxheight=6

let g:pymode_python='python3'

let g:pymode_indent=1

" let g:pymode_folding=1
" vim motion dolgok
let g:pymode_motion=1

let g:pymode_doc=1 "show documentation for current word
let g:pymode_doc_bind='K'

let g:pymode_rope=0
"
" Code checking
let g:pymode_lint=1
let g:pymode_lint_on_write=1
let g:pymode_lint_on_fly=0
let g:pymode_lint_message=1
let g:pymode_lint_checkers=['pyflakes', 'pep8', 'pylint']
let g:pymode_lint_cwindow=1  " TODO should check this 

let g:pymode_signs=1
let g:pymode_lint_todo_symbol = 'WW'
let g:pymode_lint_comment_symbol = 'CC'
let g:pymode_lint_visual_symbol = 'RR'
let g:pymode_lint_error_symbol = 'EE'
let g:pymode_lint_info_symbol = 'II'
let g:pymode_lint_pyflakes_symbol = 'FF'

" pymode syntax
let g:pymode_syntax=0
let g:pymode_syntax_all=1
let g:pymode_syntax_print_as_function=0
let g:python_syntax_hightlight_equal_operator=g:pymode_syntax_all
let g:python_syntax_hightlight_stars_operator=g:pymode_syntax_all
let g:python_syntax_hightlight_self=g:pymode_syntax_all
let g:python_syntax_indent_errors=g:pymode_syntax_all
let g:python_syntax_space_errors=g:pymode_syntax_all

let g:pymode_syntax_string_formatting = g:pymode_syntax_all
let g:pymode_syntax_string_format = g:pymode_syntax_all
let g:pymode_syntax_string_templates = g:pymode_syntax_all
let g:pymode_syntax_doctests = g:pymode_syntax_all

let g:pymode_syntax_builtin_objs=g:pymode_syntax_all
let g:pymode_syntax_builtin_types=g:pymode_syntax_all
let g:pymode_syntax_highlight_exceptions=g:pymode_syntax_all
let g:pymode_syntax_docstrings=g:pymode_syntax_all

let b:fold_options = {
    \ 'fold_blank': 1,
    \ 'fold_includes': 1,
    \ 'ignored_doxygen_fields': ['class', 'ingroup', 'function', 'def', 'defgroup', 'exception', 'headerfile', 'namespace', 'property', 'fn', 'var'],
    \ 'max_foldline_length': 'win',
    \ 'merge_comments': 1,
    \ 'show_if_and_else': 1,
    \ 'strip_namespaces': 1,
    \ 'strip_template_arguments': 1,
    \ }

