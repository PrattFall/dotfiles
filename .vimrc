set nocompatible
filetype off

" General
filetype indent on
syntax on

if has("gui_running")
	if has("gui_gtk2")
		set guifont=Inconsolata\ 10
	elseif has("gui_macvim")
		set guifont=Consolas:h14
	endif
endif
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

set t_Co=256

set history=500
set encoding=utf-8
set showcmd
set backspace=indent,eol,start
set ignorecase smartcase
set list
set listchars=trail:#,tab:\|\ ,
set mouse=a
set clipboard=unnamed

color kyouko

" Formatting
set softtabstop=4
set shiftwidth=4
set tabstop=4
set nowrap

" Syntax-y stuff
autocmd FileType html :setlocal sw=2 ts=2 sts=2
autocmd FileType cpp set formatprg=astyle\ -s2pPA1

" Backups
set backupdir=~/.nvim/backup//
set directory=~/.nvim/swap//
set undodir=~/.nvim/undo//

" Vim-Plug
call plug#begin('~/.nvim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

" Snipmate stuff
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

" Syntax Plugins
Plug 'scrooloose/syntastic'
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'othree/yajs.vim', {'for' : 'javascript' }
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'plasticboy/vim-markdown'
Plug 'kchmck/vim-coffee-script'
Plug 'fatih/vim-go'
Plug 'StanAngeloff/php.vim'
Plug 'zah/nim.vim'

call plug#end()

" Keybinds
let mapleader      = ' '
let maplocalleader = ' '

vmap <Enter> <Plug>(EasyAlign)
nnoremap <leader>n :NERDTreeToggle<cr>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" vim-fugitive
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr>

" vim-markdown
let g:vim_markdown_folding_disabled=1
set nofoldenable

" Because
command W w
command Q q
