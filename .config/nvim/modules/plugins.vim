" Vim-Plug
call plug#begin('$HOME/.nvim/plugged')

" Utils
source $HOME/.config/nvim/modules/plugins/nerdtree.vim
source $HOME/.config/nvim/modules/plugins/vim-easy-align.vim
source $HOME/.config/nvim/modules/plugins/fzf.vim
source $HOME/.config/nvim/modules/plugins/vim-lsp.vim
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'

" Neovim stuff
source $HOME/.config/nvim/modules/plugins/deoplete.vim
Plug 'Shougo/vimproc.vim'
Plug 'w0rp/ale'

" Syntax Plugins
source $HOME/.config/nvim/modules/plugins/vim-fireplace.vim
source $HOME/.config/nvim/modules/plugins/vim-markdown.vim
source $HOME/.config/nvim/modules/plugins/vim-mustache-handlebars.vim
Plug 'neovimhaskell/haskell-vim', { 'for' : 'haskell'}
Plug 'OmniSharp/omnisharp-vim'
Plug 'fsharp/vim-fsharp', {
			\ 'for': 'fsharp',
			\ 'do': 'make fsautocomplete',
			\ }
Plug 'cakebaker/scss-syntax.vim', { 'for' : 'scss' }
Plug 'hail2u/vim-css3-syntax',    { 'for' : 'css' }
Plug 'othree/html5.vim'
Plug 'reasonml-editor/vim-reason-plus'

" JavaScript
Plug 'othree/javascript-libraries-syntax.vim', { 'for' : 'javascript' }
Plug 'othree/yajs.vim',                        { 'for' : 'javascript' }
Plug 'mxw/vim-jsx'
" Typescript
Plug 'peitalin/vim-jsx-typescript'
Plug 'mhartington/nvim-typescript',            { 'do': './install.sh' }
Plug 'HerringtonDarkholme/yats.vim'

call plug#end()
