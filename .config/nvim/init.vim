" General
filetype indent on
syntax on

set history=500
set encoding=utf-8
set showcmd
set backspace=indent,eol,start
set ignorecase smartcase
set list
set listchars=trail:#,tab:\|\ ,
set mouse=a
set clipboard+=unnamedplus
set ruler
set tags=./tags;
set colorcolumn=81

" Backups
set backupdir=$HOME/.dotfiles/.config/nvim/backup//
set directory=$HOME/.dotfiles/.config/nvim/swap//
set undodir=$HOME/.dotfiles/.config/nvim/undo//

" GUI Specific
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

" Formatting
set softtabstop=4
set shiftwidth=4
set tabstop=4
set nowrap

" Custom to this vimrc
colorscheme himari

" Vim-Plug
call plug#begin('~/.nvim/plugged')

" Utils
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'

" Neovim stuff
Plug 'Shougo/deoplete.nvim'
" Plug 'benekastah/neomake'

" Syntax Plugins
Plug 'ElmCast/elm-vim'
Plug 'StanAngeloff/php.vim', {'for' : 'php' }
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'mattn/emmet-vim', { 'for': 'html' }
Plug 'neovimhaskell/haskell-vim', {'for': 'haskell'}
Plug 'othree/javascript-libraries-syntax.vim', {'for' : 'javascript' }
Plug 'othree/yajs.vim', {'for' : 'javascript' }
Plug 'plasticboy/vim-markdown', {'for' : 'markdown' }

call plug#end()

" Keybinds
let mapleader      = ' '
let maplocalleader = ' '

vmap <Enter> <Plug>(EasyAlign)

nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>

" NERDTree
map <Leader>n :NERDTreeToggle<CR>

" emmet-vim
let g:user_emmet_expandabbr_key = '<Tab>'

" deocomplete
let g:deoplete#enable_at_startup = 1

" GitGutter
nmap <Leader>gs <Plug>GitGutterStageHunk
nmap <Leader>gr <Plug>GitGutterRevertHunk
nmap <Leader>gp <Plug>GitGutterPreviewHunk

" Neomake
" autocmd BufWritePost * Neomake

" Escape terminal with <Esc>
tnoremap <Esc> <C-\><C-n>

" Because
command W w
command Q q

highlight OverLength ctermbg=1 ctermfg=white
match OverLength /\%81v.\+/
