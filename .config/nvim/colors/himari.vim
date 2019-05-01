set background=dark
set t_Co=256
highlight clear
let g:colors_name = "himari"

syn match Parens /[(){}\[\]]/

" System and directory stuff
hi Normal       ctermfg=NONE     ctermbg=NONE     cterm=NONE
hi Visual       ctermfg=Black    ctermbg=DarkCyan cterm=NONE

hi ColorColumn  ctermfg=NONE     ctermbg=Black    cterm=NONE
hi Cursor       ctermfg=NONE     ctermbg=NONE     cterm=NONE
hi CursorLine   ctermfg=NONE     ctermbg=Black    cterm=NONE
hi CursorLineNR ctermfg=DarkCyan ctermbg=NONE     cterm=NONE
hi Directory    ctermfg=DarkCyan ctermbg=NONE     cterm=NONE
hi LineNr       ctermfg=LightGray     ctermbg=NONE     cterm=NONE
hi MatchParen   ctermfg=Black    ctermbg=DarkBlue cterm=NONE
hi Parens       ctermfg=LightGray     ctermbg=NONE     cterm=NONE
hi Pmenu        ctermfg=DarkCyan ctermbg=Black    cterm=NONE
hi Search       ctermfg=Black    ctermbg=DarkBlue cterm=NONE
hi StatusLine   ctermfg=LightGray     ctermbg=Black    cterm=NONE
hi StatusLineNC ctermfg=LightGray     ctermbg=Black    cterm=NONE
hi VertSplit    ctermfg=Black    ctermbg=Black    cterm=NONE

" Defaults
hi Constant   ctermfg=DarkRed   ctermbg=NONE cterm=NONE
hi Identifier ctermfg=DarkGreen ctermbg=NONE cterm=NONE
hi Keyword    ctermfg=DarkCyan  ctermbg=NONE cterm=NONE
hi PreProc    ctermfg=Magenta   ctermbg=NONE cterm=NONE
hi Statement  ctermfg=DarkBlue  ctermbg=NONE cterm=NONE
hi Type       ctermfg=DarkCyan  ctermbg=NONE cterm=NONE

" Things that break from defaults
hi DiffAdd    ctermfg=Green       ctermbg=Black
hi DiffChange ctermfg=Blue        ctermbg=Black
hi DiffDelete ctermfg=Red         ctermbg=Black
hi DiffText   ctermfg=Black       ctermbg=DarkBlue
hi FoldColumn ctermfg=NONE        ctermbg=DarkGray
hi Folded     ctermfg=DarkMagenta ctermbg=Black
hi Function   ctermfg=DarkCyan    ctermbg=NONE
hi SpellBad   ctermfg=LightGray        ctermbg=DarkRed
hi String     ctermfg=DarkGreen   ctermbg=NONE
hi Title      ctermfg=Magenta     ctermbg=NONE

" Things that should be mostly hidden
hi Comment    ctermfg=LightGray ctermbg=NONE
hi Define     ctermfg=LightGray ctermbg=NONE
hi NonText    ctermfg=LightGray ctermbg=NONE
hi Special    ctermfg=LightGray ctermbg=NONE
hi SpecialKey ctermfg=LightGray ctermbg=NONE
hi Tag        ctermfg=LightGray ctermbg=NONE
hi htmlEndTag ctermfg=LightGray ctermbg=NONE
hi htmlTag    ctermfg=LightGray ctermbg=NONE

" Things that should just be normal text color
hi javascriptBraces ctermfg=NONE


" hi Boolean guifg=#5c8d9d ctermfg=DarkCyan
" hi Keyword guifg=#5c8d9d ctermfg=DarkCyan
" hi Label guifg=#5c8d9d ctermfg=DarkCyan

" hi Conditional guifg=#7ba4b1 ctermfg=DarkCyan
" hi Operator guifg=#7ba4b1 ctermfg=DarkCyan

" hi ErrorMsg guibg=#6f5c9d guifg=#1d2333 ctermbg=DarkBlue ctermfg=Black
" hi WarningMsg guibg=#6f5c9d guifg=#1d2333 ctermbg=DarkBlue ctermfg=Black
" hi StorageClass guifg=#ffffff
" hi Tag guifg=#ffffff ctermfg=white
" hi Underlined guifg=#5c8d9d ctermfg=DarkCyan cterm=NONE

" hi htmlSpecialChar guifg=#9d9c5c ctermfg=DarkYellow
" hi htmlArg guifg=#6d9c5c ctermfg=DarkGreen
" hi htmlTagName guifg=#6f5c9d ctermfg=DarkBlue

" hi javaScriptNumber guifg=#9d5c5d ctermfg=DarkRed
" hi javaScriptFunction guifg=#6d9c5c ctermfg=DarkGreen
" hi javaScriptIdentifier guifg=#6d9c5c ctermfg=DarkGreen
" hi javaScriptBoolean guifg=#5c8d9d ctermfg=DarkCyan
" hi javaScriptNull guifg=#5c8d9d ctermfg=DarkCyan

" hi javaScriptDeprecated guibg=#9d5c5d guifg=#1d2333 ctermbg=DarkRed ctermfg=Black
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
