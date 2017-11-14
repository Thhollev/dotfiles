"
" NVIM CONFIG
"

set nocompatible
syntax enable
nohl			" no highlighting

set number 		" show line numbers
set autoindent		" auto indeting on 
set path+=**		" search down into subfolders
set wildmenu		" display all matching files on tab complete
set mouse=a		" enable mouse selection
set autoread		" auto reload file on change
set encoding=utf-8	" set default encoding

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
ino <left> <nop>
no <right> <nop>
ino <right> <nop>

"
" PLUGINS
"
call plug#begin('~/dotfiles/nvim/plugged')
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes' 
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'vimhaskell/haskell-vim', { 'for': 'haskell' }
call plug#end()

let g:airline_powerline_fonts=1
let g:airline_theme='bubblegum'

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


"YouCompleteMe
map <C-]> :YcmCompleter GoToImprecise<CR>

let g:ycm_error_symbol='!>'
let g:ycm_warning_symbol='-'
let g:ycm_enable_diagnostic_highlighting=0
let g:ycm_complete_in_comments=1

let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_add_preview_to_completeopt=1

let g:ycm_global_ycm_extra_conf='~/.config/nvim/ycm_extra_conf.py'
let g:ycm_extra_conf_globlist = ['~/Documents/*','~/development','!~/*']
let g:ycm_rust_src_path='/data/programming/rustc-1.7.0/src'
set completeopt=menu

let g:haskell_enable_quantification=1
let g:haskell_enable_recursivedo=1
let g:haskell_enable_arrowsyntax=1
let g:haskell_enable_pattern_synonyms=1
let g:haskell_enable_typeroles=1
let g:haskell_enable_static_pointers=1

