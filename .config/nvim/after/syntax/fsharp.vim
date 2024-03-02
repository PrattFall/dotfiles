if exists("g:no_vim_conceal") || !has("conceal") || &enc != "utf-8"
	finish
endif

syntax match fsConceals "\[|" conceal cchar=『
syntax match fsConceals "|\]" conceal cchar=』
syntax match fsConceals "|>" conceal cchar=▶
syntax match fsConceals "*" conceal cchar=×
syntax match fsConceals "<>" conceal cchar=≠
syntax match fsConceals "<=" conceal cchar=≤
syntax match fsConceals ">=" conceal cchar=≥
syntax match fsConceals "->" conceal cchar=→
syntax keyword fsConceals fun conceal cchar=λ

hi link fsConceals Operator
hi! link Conceal Operator

set conceallevel=2
