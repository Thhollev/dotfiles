"
" NVIM CONFIG
"

set nocompatible
syntax enable
nohl			" no highlighting

let mapleader=";"

set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4 smarttab

set number 		" show line numbers
set autoindent		" auto indeting on 
set path+=**		" search down into subfolders
set wildmenu		" display all matching files on tab complete
set mouse=a		" enable mouse selection
set autoread		" auto reload file on change
set encoding=utf-8	" set default encoding
set splitright

" color scheme
source /usr/share/nvim/runtime/colors/ron.vim

" use zsh
set shell=/bin/zsh

" disable arrow keys
no <up> <nop>
ino <up> <nop>
no <down> <nop>
ino <down> <nop>
no <left> <nop>
no <left> <nop>
no <right> <nop>
ino <right> <nop>

" better window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"
" PLUGINS
"
call plug#begin('~/dotfiles/nvim/plugged')
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes' 
Plug 'junegunn/vim-easy-align'
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
Plug 'airblade/vim-gitgutter'
Plug 'derekwyatt/vim-fswitch', { 'for': ['c','cpp'] }
Plug 'tpope/vim-fugitive'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'godlygeek/tabular'
Plug 'Valloric/YouCompleteMe', { 'do': 'git submodule update --init --recursive && ./install.py' }
Plug 'vim-syntastic/syntastic'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
call plug#end()

"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:airline_powerline_fonts=1
let g:airline_theme='bubblegum'

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" NerdTree
let NERDTreeIgnore = ['\.pyc$', '__pycache__', 'node_modules', 'package-lock.json', 'env']

"YouCompleteMe
map <C-]> :YcmCompleter GoToImprecise<CR>

let g:ycm_error_symbol='!>'
let g:ycm_warning_symbol='-'
let g:ycm_enable_diagnostic_highlighting=0
let g:ycm_complete_in_comments=1

let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_add_preview_to_completeopt=1

let g:ycm_server_python_interpreter='/usr/bin/python3'
let g:ycm_global_ycm_extra_conf='~/.config/nvim/ycm_extra_conf.py'
let g:ycm_extra_conf_globlist = ['~/Documents/*','~/develop','!~/*']
set completeopt=menu

let g:haskell_enable_quantification=1
let g:haskell_enable_recursivedo=1
let g:haskell_enable_arrowsyntax=1
let g:haskell_enable_pattern_synonyms=1
let g:haskell_enable_typeroles=1
let g:haskell_enable_static_pointers=1

let g:session_directory = "~/dotfiles/nvim/session/"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1
nnoremap <leader>so :OpenSession
nnoremap <leader>ss :SaveSession
nnoremap <leader>sd :DeleteSession
nnoremap <leader>sc :CloseSession

" make < > shifts keep selection
vnoremap < <gv
vnoremap > >gv

nnoremap <silent> <leader>n :noh<cr>

" Copy to clipboard            " Paste from clipboard
vnoremap  <leader>y  "+y    |  nnoremap <leader>p "+p
nnoremap  <leader>Y  "+yg_  |  nnoremap <leader>P "+P
nnoremap  <leader>y  "+y    |  vnoremap <leader>p "+p
nnoremap  <leader>yy "+yy   |  vnoremap <leader>P "+P

nnoremap <silent> <leader>t :NERDTreeToggle<CR><CR>

set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_eslint_exe = 'npm run lint --'
"let g:syntastic_disabled_filetypes=['js']
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
