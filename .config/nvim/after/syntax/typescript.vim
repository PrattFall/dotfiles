if exists("g:no_vim_conceal") || !has("conceal") || &enc != "utf-8"
	finish
endif

syntax match jsConceals "=>" conceal cchar=⇒

hi link jsConceals Operator
hi! link Conceal Operator

set conceallevel=2
