syntax keyword Statement lambda conceal cchar=λ
hi! link Conceal Statement

syntax match scmNiceOperator "\<pi\>" conceal cchar=π

hi link scmNiceOperator Operator
hi! link Conceal Operator

setlocal conceallevel=1
setlocal concealcursor=v
set expandtab
