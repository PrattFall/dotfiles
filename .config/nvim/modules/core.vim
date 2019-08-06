filetype indent on
syntax on
color himari

set backspace=indent,eol,start
set clipboard+=unnamedplus
set encoding=utf-8
set history=500
set ignorecase smartcase
set list
set listchars=trail:#,tab:\|\ ,
set mouse=a
set ruler
set showcmd
set tags=./tags;

" Backups
set backupdir=$HOME/.config/nvim/backup//
set directory=$HOME/.config/nvim/swap//
set undodir=$HOME/.config/nvim/undo//

" Formatting
set softtabstop=4
set shiftwidth=4
set tabstop=4
set nowrap

" Because
command W w
command Q q

let mapleader      = ' '
let maplocalleader = ' '

if has("win32")
	set shell=powershell
endif
