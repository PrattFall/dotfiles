set background=dark
hi clear
let g:colors_name = "andromeda"
set t_Co=256

" All base styles
" hi NonText ctermfg=none ctermbg=none cterm=none "not really needed
" TODO: Test
hi LineNr    ctermfg=darkgrey     ctermbg=none  cterm=none
hi Search    ctermfg=yellow       ctermbg=none  cterm=underline
hi VertSplit ctermfg=none         ctermbg=black cterm=none
hi Constant  ctermfg=yellow       ctermbg=none  cterm=bold
hi Value     ctermfg=red          ctermbg=none  cterm=none
hi Statement ctermfg=green        ctermbg=none  cterm=none
hi PreProc   ctermfg=blue         ctermbg=none  cterm=none
hi Type      ctermfg=magenta      ctermbg=none  cterm=bold
hi Special   ctermfg=lightmagenta ctermbg=none  cterm=none
hi Todo      ctermfg=yellow       ctermbg=none  cterm=bold
hi Comment   ctermfg=gray         ctermbg=none  cterm=italic
hi Identifier ctermfg=cyan        ctermbg=none  cterm=none
hi Error      ctermfg=red         ctermbg=none  cterm=none
hi link Title Special

hi link Number  Value
hi link Boolean Value
hi link WarningMsg Error

" Pmenu
hi Pmenu      ctermfg=none  ctermbg=black    cterm=none
hi PmenuSel   ctermfg=black ctermbg=green    cterm=none
hi PmenuSbar  ctermfg=black ctermbg=darkgray cterm=none
hi PmenuThumb ctermfg=black ctermbg=gray     cterm=none

" Diff
hi DiffAdd    ctermfg=green  ctermbg=none cterm=bold
hi DiffChange ctermfg=yellow ctermbg=none cterm=bold
hi DiffDelete ctermfg=red    ctermbg=none cterm=bold

" Spell
hi SpellBad   ctermfg=red    ctermbg=none cterm=underline
hi SpellCap   ctermfg=blue   ctermbg=none cterm=underline
hi SpellRare  ctermfg=yellow ctermbg=none cterm=underline
hi SpellLocal ctermfg=cyan   ctermbg=none cterm=underline

" Misc
" hi Struct ctermfg=lightyellow ctermbg=none cterm=none
" hi Method ctermfg=lightyellow ctermbg=none cterm=none
hi String      ctermfg=lightgreen ctermbg=none  cterm=none
hi SignColumn  ctermfg=none       ctermbg=none  cterm=none
hi ColorColumn ctermfg=red        ctermbg=black cterm=none

" TreeSitter
"
hi TSParameter ctermfg=none ctermbg=none cterm=none
" TSNote         xxx links to SpecialComment
" TSWarning      xxx links to Todo
" TSDanger       xxx links to WarningMsg
" TSConstructor  xxx links to Special
" TSField        xxx links to Identifier
" TSKeyword      xxx links to Keyword
" TSKeywordFunction xxx links to Keyword
" TSLabel        xxx links to Label
" TSOperator     xxx links to Operator
" TSParameter    xxx links to Identifier
" TSProperty     xxx links to Identifier
" TSPunctDelimiter xxx links to Delimiter
" TSPunctBracket xxx links to Delimiter
" TSStringRegex  xxx links to String
" TSStringEscape xxx links to SpecialChar
" TSVariable     xxx cleared
" TSVariableBuiltIn xxx links to Special
" TSTextReference xxx links to Constant
" TSTag          xxx links to Label
" TSTagDelimiter xxx links to Delimiter
" TSStrike       xxx cleared
" TSNone         xxx cleared
" TSPunctSpecial xxx links to Delimiter
" TSConstant     xxx links to Constant
" TSConstBuiltin xxx links to Special
" TSConstMacro   xxx links to Define
" TSString       xxx links to String
" TSStringSpecial xxx links to SpecialChar
" TSCharacter    xxx links to Character
" TSNumber       xxx links to Number
" TSBoolean      xxx links to Boolean
" TSFloat        xxx links to Float
" TSFunction     xxx links to Function
" TSFuncBuiltin  xxx links to Special
" TSFuncMacro    xxx links to Macro
" TSParameterReference xxx links to TSParameter
" TSMethod       xxx links to Function
" TSAnnotation   xxx links to PreProc
" TSAttribute    xxx links to PreProc
" TSNamespace    xxx links to Include
" TSSymbol       xxx links to Identifier
" TSConditional  xxx links to Conditional
" TSRepeat       xxx links to Repeat
" TSKeywordOperator xxx links to TSOperator
" TSKeywordReturn xxx links to TSKeyword
" TSException    xxx links to Exception
" TSType         xxx links to Type
" TSTypeBuiltin  xxx links to Type
" TSInclude      xxx links to Include
" TSText         xxx links to TSNone
" TSStrong       xxx cleared
" TSEmphasis     xxx cleared
" TSUnderline    xxx cleared
" TSMath         xxx links to Special
" TSEnvironment  xxx links to Macro
" TSEnvironmentName xxx links to Type
" TSTitle        xxx links to Title
" TSLiteral      xxx links to String
" TSURI          xxx links to Underlined
" TSComment      xxx links to Comment
" TSTagAttribute xxx links to TSProperty
