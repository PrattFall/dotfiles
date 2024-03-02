set background=dark
hi clear
let g:colors_name = "himari"
set t_Co=256

syn match Parens /[(){}\[\]]/

" System and directory stuff
hi Normal ctermfg=NONE            ctermbg=NONE      cterm=NONE
hi Visual ctermfg=Black           ctermbg=DarkCyan  cterm=NONE

hi ColorColumn  ctermfg=NONE      ctermbg=Black     cterm=NONE
hi Conceal      ctermfg=NONE      ctermbg=NONE      cterm=NONE
hi Cursor       ctermfg=NONE      ctermbg=NONE      cterm=NONE
hi CursorLine   ctermfg=NONE      ctermbg=Black     cterm=NONE
hi CursorLineNR ctermfg=DarkCyan  ctermbg=NONE      cterm=NONE
hi Directory    ctermfg=DarkCyan  ctermbg=NONE      cterm=NONE
hi LineNr       ctermfg=8         ctermbg=NONE      cterm=NONE
hi MatchParen   ctermfg=8         ctermbg=DarkBlue  cterm=NONE
hi Operator     ctermfg=NONE      ctermbg=NONE      cterm=NONE
hi Parens       ctermfg=8         ctermbg=NONE      cterm=NONE
hi Pmenu        ctermfg=DarkCyan  ctermbg=Black     cterm=NONE
hi PmenuSel     ctermfg=White     ctermbg=DarkGreen cterm=NONE
hi Search       ctermfg=Black     ctermbg=DarkBlue  cterm=NONE
hi StatusLine   ctermfg=NONE      ctermbg=Black     cterm=NONE
hi StatusLineNC ctermfg=NONE      ctermbg=Black     cterm=NONE
hi VertSplit    ctermfg=Black     ctermbg=Black     cterm=NONE
hi SignColumn   ctermfg=NONE      ctermbg=NONE      cterm=NONE

" Defaults
hi Constant   ctermfg=DarkRed     ctermbg=NONE cterm=NONE
hi Identifier ctermfg=NONE        ctermbg=NONE cterm=NONE
hi Keyword    ctermfg=DarkMagenta ctermbg=NONE cterm=NONE
hi PreProc    ctermfg=Magenta     ctermbg=NONE cterm=NONE
hi Statement  ctermfg=DarkBlue    ctermbg=NONE cterm=NONE
hi Type       ctermfg=DarkBlue    ctermbg=NONE cterm=NONE
hi Number     ctermfg=Red         ctermbg=NONE cterm=NONE
hi Float      ctermfg=Red         ctermbg=NONE cterm=NONE

" Things that break from defaults
hi diffadd    ctermfg=green       ctermbg=black
hi diffchange ctermfg=blue        ctermbg=black
hi diffdelete ctermfg=red         ctermbg=black
hi DiffText   ctermfg=Black       ctermbg=DarkBlue
hi FoldColumn ctermfg=NONE        ctermbg=8
hi Folded     ctermfg=DarkMagenta ctermbg=Black
hi Function   ctermfg=DarkCyan    ctermbg=NONE
hi SpellBad   ctermfg=8           ctermbg=DarkRed
hi String     ctermfg=DarkGreen   ctermbg=NONE
hi Title      ctermfg=Magenta     ctermbg=NONE
hi Special    ctermfg=DarkMagenta ctermbg=NONE

" Things that should be mostly hidden
hi Comment    ctermfg=8 ctermbg=NONE
hi Define     ctermfg=8 ctermbg=NONE
hi NonText    ctermfg=8 ctermbg=NONE
hi SpecialKey ctermfg=8 ctermbg=NONE
hi Tag        ctermfg=8 ctermbg=NONE
hi htmlEndTag ctermfg=8 ctermbg=NONE
hi htmlTag    ctermfg=8 ctermbg=NONE

" Things that should just be normal text color
hi javascriptBraces ctermfg=NONE

" Lsp Stuff
hi LspCodeLens ctermfg=Black ctermbg=NONE

" GitSigns
hi GitSignsAdd      ctermfg=Green      ctermbg=NONE cterm=NONE
hi GitSignsAddLn    ctermfg=Green      ctermbg=NONE cterm=NONE
hi GitSignsAddNr    ctermfg=Green      ctermbg=NONE cterm=NONE
hi GitSignsChange   ctermfg=DarkYellow ctermbg=NONE cterm=NONE
hi GitSignsChangeLn ctermfg=DarkYellow ctermbg=NONE cterm=NONE
hi GitSignsChangeNr ctermfg=DarkYellow ctermbg=NONE cterm=NONE
hi GitSignsDelete   ctermfg=Red        ctermbg=NONE cterm=NONE
hi GitSignsDeleteLn ctermfg=Red        ctermbg=NONE cterm=NONE
hi GitSignsDeleteNr ctermfg=Red        ctermbg=NONE cterm=NONE

" treesitter
hi TSNote            ctermbg=NONE ctermfg=Green     cterm=bold
hi TSWarning         ctermbg=NONE ctermfg=Yellow    cterm=underline
hi TSDanger          ctermbg=NONE ctermfg=Red       cterm=underline
hi TSConstructor     ctermbg=NONE ctermfg=Magenta   cterm=NONE
hi TSField           ctermbg=NONE ctermfg=Green     cterm=NONE
hi TSKeyword         ctermbg=NONE ctermfg=Blue      cterm=NONE
hi TSKeywordFunction ctermbg=NONE ctermfg=Cyan      cterm=NONE
hi TSLabel           ctermbg=NONE ctermfg=8         cterm=NONE
hi TSOperator        ctermbg=NONE ctermfg=NONE      cterm=NONE
hi TSParameter       ctermbg=NONE ctermfg=NONE      cterm=NONE
hi TSNumber          ctermbg=NONE ctermfg=Red
hi TSProperty        ctermbg=NONE ctermfg=Green     cterm=NONE
hi TSPunctDelimiter  ctermbg=NONE ctermfg=8         cterm=NONE
hi TSPunctBracket    ctermbg=NONE ctermfg=8         cterm=NONE
hi TSStringRegex     ctermbg=NONE ctermfg=Yellow    cterm=NONE
hi TSStringEscape    ctermbg=NONE ctermfg=8         cterm=NONE
hi TSString          ctermbg=NONE
hi TSVariable        ctermbg=NONE ctermfg=NONE      cterm=bold
hi TSVariableBuiltIn ctermbg=NONE ctermfg=Blue      cterm=bold
hi TSTextReference   ctermbg=NONE ctermfg=Cyan      cterm=NONE
hi TSTag             ctermbg=NONE ctermfg=Magenta   cterm=NONE
hi TSTagDelimiter    ctermbg=NONE ctermfg=8         cterm=NONE
hi TSStrike          ctermbg=NONE ctermfg=8         cterm=NONE
hi @punctuation.bracket.javascript   ctermfg=8
hi @punctuation.delimiter.javascript ctermfg=8
