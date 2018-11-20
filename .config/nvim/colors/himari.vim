set background=light
highlight clear
let g:colors_name = "himari"
set t_Co=256

" Background = #1d2333
" Foreground = #d1c2af

" 0 Black   = #171c29
" 1 Red     = #9d5c5d
" 2 Green   = #6d9c5c
" 3 Yellow  = #9d9c5c
" 4 Blue    = #6f5c9d
" 5 Magenta = #8d5c84
" 6 Cyan    = #5c8d9d
" 7 White   = #d9d9d9

" 8  Bright Black  = #394463
" 9  Bright Red    = #b17b7b
" 10 Bright Green  = #89b17b
" 11 Bright Yellow = #b1b17b
" 12 Bright Blue   = #8b7bb1
" 13 Bright Purple = #b17b9c
" 14 Bright Cyan   = #7ba4b1
" 15 Bright White  = #f3f3f3

syn match Parens /[(){}]/

" System and directory stuff
hi Normal       ctermbg=NONE ctermfg=NONE
hi Cursor       ctermbg=NONE
hi Visual       ctermbg=6    ctermfg=0
hi Search       ctermbg=4    ctermfg=0
hi CursorLine   ctermbg=0              cterm=NONE
hi CursorLineNR ctermfg=6
hi LineNr       ctermfg=7
hi VertSplit    ctermbg=0    ctermfg=0 cterm=NONE
hi MatchParen   ctermbg=4    ctermfg=0
hi StatusLine   ctermbg=0    ctermfg=7 cterm=NONE
hi StatusLineNC ctermbg=0    ctermfg=7 cterm=NONE
hi Pmenu        ctermbg=0    ctermfg=6
hi Directory    ctermfg=6
hi Parens       ctermfg=7
hi ColorColumn  ctermbg=0

" Defaults
hi Constant   ctermfg=1
hi Identifier ctermfg=2
hi Special    ctermfg=7
hi Statement  ctermfg=4
hi PreProc    ctermfg=13
hi Type       ctermfg=6

" Things that break from defaults
hi String     ctermfg=2
hi Function   ctermfg=6

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

hi SpellBad ctermbg=1 ctermfg=7

" hi Boolean guifg=#5c8d9d ctermfg=6
" hi Keyword guifg=#5c8d9d ctermfg=6
" hi Label guifg=#5c8d9d ctermfg=6

" hi Conditional guifg=#7ba4b1 ctermfg=14
" hi Operator guifg=#7ba4b1 ctermfg=14

" hi ErrorMsg guibg=#6f5c9d guifg=#1d2333 ctermbg=4 ctermfg=0
" hi WarningMsg guibg=#6f5c9d guifg=#1d2333 ctermbg=4 ctermfg=0
" hi StorageClass guifg=#ffffff
" hi Tag guifg=#ffffff ctermfg=white
hi Title ctermfg=13
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
" hi DiffAdd
" hi DiffDelete
" hi DiffChange
" hi DiffText
" hi Folded
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
