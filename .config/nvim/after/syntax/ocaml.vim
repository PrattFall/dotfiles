if exists("g:no_vim_conceal") || !has("conceal") || &enc != "utf-8"
	finish
endif

syntax match ocamlConceals "|>" conceal cchar=▶
syntax match ocamlConceals "*" conceal cchar=×
syntax match ocamlConceals "<>" conceal cchar=≠
syntax match ocamlConceals "<=" conceal cchar=≤
syntax match ocamlConceals ">=" conceal cchar=≥
syntax match ocamlConceals "->" conceal cchar=→
syntax keyword ocamlConceals fun conceal cchar=λ

hi link ocamlConceals Operator
hi! link Conceal Operator

set conceallevel=2
