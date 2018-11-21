set background=light
highlight clear
let g:colors_name = "himari"
set t_Co=256

syn match Parens /[(){}\[\]]/

" System and directory stuff
hi Normal       ctermfg=NONE ctermbg=NONE cterm=NONE
hi Cursor       ctermfg=NONE ctermbg=NONE cterm=NONE
hi Visual       ctermfg=0    ctermbg=6    cterm=NONE
hi Search       ctermfg=0    ctermbg=4    cterm=NONE
hi CursorLine   ctermfg=NONE ctermbg=0    cterm=NONE
hi CursorLineNR ctermfg=6    ctermbg=NONE cterm=NONE
hi LineNr       ctermfg=7    ctermbg=NONE cterm=NONE
hi VertSplit    ctermfg=0    ctermbg=0    cterm=NONE
hi MatchParen   ctermfg=0    ctermbg=4    cterm=NONE
hi StatusLine   ctermfg=7    ctermbg=0    cterm=NONE
hi StatusLineNC ctermfg=7    ctermbg=0    cterm=NONE
hi Pmenu        ctermfg=6    ctermbg=0    cterm=NONE
hi Directory    ctermfg=6    ctermbg=NONE cterm=NONE
hi Parens       ctermfg=7    ctermbg=NONE cterm=NONE
hi ColorColumn  ctermfg=NONE ctermbg=0    cterm=NONE

" Defaults
hi Constant   ctermfg=1
hi Identifier ctermfg=2
hi Special    ctermfg=7
hi Statement  ctermfg=4
hi PreProc    ctermfg=13
hi Type       ctermfg=6

" Things that break from defaults
hi String     ctermfg=2    ctermbg=NONE
hi Function   ctermfg=6    ctermbg=NONE
hi Title      ctermfg=13   ctermbg=NONE
hi SpellBad   ctermfg=7    ctermbg=1
hi DiffAdd    ctermfg=10   ctermbg=0
hi DiffDelete ctermfg=9    ctermbg=0
hi DiffChange ctermfg=12   ctermbg=0
hi DiffText   ctermfg=0    ctermbg=4
hi Folded     ctermfg=5    ctermbg=0
hi FoldColumn ctermfg=NONE ctermbg=8

" Things that should be mostly hidden
hi NonText    ctermfg=7
hi Comment    ctermfg=7
hi SpecialKey ctermfg=7
hi Define     ctermfg=7
hi Tag        ctermfg=7
hi htmlTag    ctermfg=7
hi htmlEndTag ctermfg=7

" Things that should just be normal text color
hi javascriptBraces ctermfg=NONE


" hi Boolean guifg=#5c8d9d ctermfg=6
" hi Keyword guifg=#5c8d9d ctermfg=6
" hi Label guifg=#5c8d9d ctermfg=6

" hi Conditional guifg=#7ba4b1 ctermfg=14
" hi Operator guifg=#7ba4b1 ctermfg=14

" hi ErrorMsg guibg=#6f5c9d guifg=#1d2333 ctermbg=4 ctermfg=0
" hi WarningMsg guibg=#6f5c9d guifg=#1d2333 ctermbg=4 ctermfg=0
" hi StorageClass guifg=#ffffff
" hi Tag guifg=#ffffff ctermfg=white
" hi Underlined guifg=#5c8d9d ctermfg=6 cterm=NONE

" hi htmlSpecialChar guifg=#9d9c5c ctermfg=3
" hi htmlArg guifg=#6d9c5c ctermfg=2
" hi htmlTagName guifg=#6f5c9d ctermfg=4

" hi javaScriptNumber guifg=#9d5c5d ctermfg=1
" hi javaScriptFunction guifg=#6d9c5c ctermfg=2
" hi javaScriptIdentifier guifg=#6d9c5c ctermfg=2
" hi javaScriptBoolean guifg=#5c8d9d ctermfg=6
" hi javaScriptNull guifg=#5c8d9d ctermfg=6

" hi javaScriptDeprecated guibg=#9d5c5d guifg=#1d2333 ctermbg=1 ctermfg=0
" hi javaScriptRailsFunction 

" hi PmenuSel
" hi IncSearch
" hi String
" hi Float
" hi Todo
" hi CursorColumn

" hi rubyClass 
" hi rubyFunction 
" hi rubyInterpolationDelimiter 
" hi rubySymbol 
" hi rubyConstant 
" hi rubyStringDelimiter 
" hi rubyBlockParameter 
" hi rubyInstanceVariable 
" hi rubyInclude 
" hi rubyGlobalVariable 
" hi rubyRegexp 
" hi rubyRegexpDelimiter 
" hi rubyEscape 
" hi rubyControl 
" hi rubyClassVariable 
" hi rubyOperator 
" hi rubyException 
" hi rubyPseudoVariable 
" hi rubyRailsUserClass 
" hi rubyRailsARAssociationMethod 
" hi rubyRailsARMethod 
" hi rubyRailsRenderMethod 
" hi rubyRailsMethod 
" hi erubyDelimiter 
" hi erubyComment 
" hi erubyRailsMethod 
" hi yamlKey 
" hi yamlAnchor 
" hi yamlAlias 
" hi yamlDocumentHeader 
" hi cssURL 
" hi cssFunctionName 
" hi cssColor 
" hi cssPseudoClassId 
" hi cssClassName 
" hi cssValueLength 
" hi cssCommonAttr 
" hi cssBraces 
