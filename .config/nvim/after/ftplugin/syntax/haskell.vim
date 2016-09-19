syntax match hsLambda "\\" conceal cchar=λ
hi link hsLambda Operator
hi! link Conceal Operator

setlocal conceallevel=2
setlocal concealcursor=c
