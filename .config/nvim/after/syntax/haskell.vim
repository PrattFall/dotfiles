syntax match hsNiceOperator "\\\ze[[:alpha:][:space:]_([]" conceal cchar=λ
syntax match hsNiceOperator "<-" conceal cchar=←
syntax match hsNiceOperator "->" conceal cchar=→
syntax match hsNiceOperator "\<pi\>" conceal cchar=π
" syntax match hsNiceOperator "\/=" conceal cchar=≠
syntax match hsNiceOperator "!!" conceal cchar=‼
syntax match hsNiceOperator "=>" conceal cchar=⇒

" syntax match hsNiceOperator "`elem`" conceal cchar=∈
" syntax match hsNiceOperator "`notElem`" conceal cchar=∉

syntax match hs_DeclareFunction /^[a-z_(]\S*\(\s\|\n\)*::/me=e-2 nextgroup=hsNiceOperator contains=hs_FunctionName,hs_OpFunctionName
syntax match hsNiceOperator "\:\:" conceal cchar=∷

syntax match hsNiceOperator "`union`" conceal cchar=∪

hi link hsNiceOperator Operator
hi! link Conceal Operator

setlocal conceallevel=2
setlocal concealcursor=v
