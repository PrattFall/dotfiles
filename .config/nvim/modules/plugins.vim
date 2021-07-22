" Vim-Plug
call plug#begin('$HOME/.nvim/plugged')

" Utils
" Plug 'neovim/nvim-lspconfig'
source $HOME/.config/nvim/modules/plugins/nerdtree.vim
source $HOME/.config/nvim/modules/plugins/vim-easy-align.vim
source $HOME/.config/nvim/modules/plugins/fzf.vim
" source $HOME/.config/nvim/modules/plugins/vim-lsp.vim
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'

" Syntax Plugins
let g:conjure_log_direction = "horizontal"
Plug 'Olical/conjure', {'tag': 'v0.22.0', 'do': 'bin/compile' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
source $HOME/.config/nvim/modules/plugins/vim-markdown.vim
" source $HOME/.config/nvim/modules/plugins/vim-mustache-handlebars.vim
Plug 'neovimhaskell/haskell-vim', { 'for' : 'haskell'}
Plug 'cakebaker/scss-syntax.vim', { 'for' : 'scss' }
Plug 'hail2u/vim-css3-syntax',    { 'for' : 'css' }

" JavaScript
Plug 'othree/javascript-libraries-syntax.vim', { 'for' : 'javascript' }
Plug 'othree/yajs.vim',                        { 'for' : 'javascript' }
"
" Typescript
Plug 'peitalin/vim-jsx-typescript'
Plug 'HerringtonDarkholme/yats.vim'

call plug#end()
