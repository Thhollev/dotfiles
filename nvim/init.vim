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
call plug#begin('~/.config/nvim/plugged')
call plug#end()
