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

" Colors
colorscheme himari

" Vim-Plug
call plug#begin('~/.nvim/plugged')

" Utils
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'autozimu/LanguageClient-neovim', {
			\ 'branch': 'next',
			\ 'do': 'bash install.sh'
			\}

" Neovim stuff
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/vimproc.vim'
Plug 'w0rp/ale'

" Syntax Plugins
Plug 'OmniSharp/omnisharp-vim'
Plug 'cakebaker/scss-syntax.vim',              { 'for' : 'scss' }
Plug 'hail2u/vim-css3-syntax',                 { 'for' : 'css' }
Plug 'neovimhaskell/haskell-vim',              { 'for' : 'haskell'}
Plug 'othree/html5.vim'
Plug 'othree/javascript-libraries-syntax.vim', { 'for' : 'javascript' }
Plug 'othree/yajs.vim',                        { 'for' : 'javascript' }
Plug 'plasticboy/vim-markdown',                { 'for' : 'markdown' }
Plug 'reasonml-editor/vim-reason-plus'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript',            { 'do': './install.sh' }

call plug#end()

" Keybinds
let mapleader      = ' '
let maplocalleader = ' '

vmap <Enter> <Plug>(EasyAlign)

nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>

" LanguageClient
let g:LanguageClient_serverCommands = {
			\ "ocaml": ["ocaml-language-server", "--stdio"]
			\ }

nnoremap <silent> <Leader>cd :call LanguageClient_textDocument_definition()<cr>
nnoremap <silent> <Leader>cf :call LanguageClient_textDocument_formatting()<cr>
nnoremap <silent> <cr> :call LanguageClient_textDocument_hover()<cr>

" NERDTree
map <Leader>n :NERDTreeToggle<CR>

" ALE
let g:ale_completion_enabled = 1

" Deoplete
let g:deoplete#enable_at_startup = 1

" GitGutter
nmap <Leader>gs <Plug>GitGutterStageHunk
nmap <Leader>gr <Plug>GitGutterRevertHunk
nmap <Leader>gp <Plug>GitGutterPreviewHunk

" Vim-markdown
let g:vim_markdown_folding_disabled = 1

" Escape terminal with <Esc>
tnoremap <Esc> <C-\><C-n>

" Because
command W w
command Q q

" Column Toggling
nnoremap <Leader>cc :call ColumnGuideToggle()<CR>

let g:showColumnGuide = 1

function! ColumnGuideToggle()
	if g:showColumnGuide == 1
		let g:showColumnGuide = 0
	else
		let g:showColumnGuide = 1
	endif

	call ShowColumnGuide()
endfunction

function! ShowColumnGuide()
	if g:showColumnGuide == 1
		set colorcolumn=80
		highlight OverLength ctermbg=1 ctermfg=white
		match OverLength /\%81v.\+/
	else
		set colorcolumn=0
		match none
	endif
endfunction

call ShowColumnGuide()
