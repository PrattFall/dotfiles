Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'

if executable('ocaml-language-server')
	au User lsp_setup call lsp#register_server({
				\ 'name': 'ocaml-language-server',
				\ 'cmd': {server_info->[&shell, &shellcmdflag, 'ocaml-language-server --stdio']},
				\ 'whitelist': ['ocaml'],
				\ })
endif

nmap <silent> <Leader>cd :LspDefinition<cr>
nmap <silent> <Leader>cf :LspDocumentFormat<cr>
nmap <silent> <cr> :LspHover<cr>

