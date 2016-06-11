if !has('conceal')
	finish
endif

syntax match hsNiceOperator "->" conceal cchar=→

hi link hsNiceOperator Operator
hi! link Conceal Operator
setlocal conceallevel=2
