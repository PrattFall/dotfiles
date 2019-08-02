set background=dark
hi clear
let g:colors_name = "himari"
set t_Co=256

syn match Parens /[(){}\[\]]/

" GUI
" ------------------------------------------------------------------------------

let GuiBackground = '#222d31'
let GuiForeground = '#d8d8d8'
let GuiBlack      = '#161d1f'
let GuiRed        = '#ab4642'
let GuiGreen      = '#6d956d'
let GuiGreenLight = '#7bb97b'
let GuiYellow     = '#f7ca88'
let GuiBlue       = '#7cafc2'
let GuiMagenta    = '#ba8baf'
let GuiCyan       = '#1abb9b'
let GuiWhite      = '#4f6972'
let GuiWhiteLight = '#f8f8f8'

hi Normal       guifg=#d8d8d8 guibg=#222d31
hi Visual       guifg=#161d1f guibg=#1abb9b

hi ColorColumn  guifg=NONE    guibg=#161d1f
hi Cursor       guifg=NONE    guibg=NONE
hi CursorLine   guifg=NONE    guibg=#161d1f
hi CursorLineNR guifg=#1abb9b guibg=NONE
hi Directory    guifg=#1abb9b guibg=NONE
hi LineNr       guifg=#4f6972 guibg=NONE
hi MatchParen   guifg=#161d1f guibg=#7cafc2
hi Parens       guifg=#4f6972 guibg=NONE
hi Pmenu        guifg=#1abb9b guibg=#161d1f
hi Search       guifg=#161d1f guibg=#7cafc2
hi StatusLine   guifg=#4f6972 guibg=#161d1f
hi StatusLineNC guifg=#4f6972 guibg=#161d1f
hi VertSplit    guifg=#161d1f guibg=#161d1f

" Defaults
hi Constant     guifg=#ab4642 guibg=#222d31
hi Identifier   guifg=#7bb97b guibg=#222d31
hi Keyword      guifg=#1abb9b guibg=#222d31
hi PreProc      guifg=#ba8baf guibg=#222d31
hi Statement    guifg=#7cafc2 guibg=#222d31
hi Type         guifg=#1abb9b guibg=#222d31

" Things that break from defaults
hi DiffAdd      guifg=#6d956d guibg=#161d1f
hi DiffChange   guifg=#7cafc2 guibg=#161d1f
hi DiffDelete   guifg=#ab4642 guibg=#161d1f
hi DiffText     guifg=#161d1f guibg=#7cafc2
hi FoldColumn   guifg=NONE    guibg=#4f6972
hi Folded       guifg=#ba8baf guibg=#161d1f
hi Function     guifg=#1abb9b guibg=NONE
hi SpellBad     guifg=#4f6972 guibg=#ab4642
hi String       guifg=#6d956d guibg=NONE
hi Title        guifg=#ba8baf guibg=NONE

" Things that should be mostly hidden
hi Comment    guifg=#4f6972 guibg=NONE
hi Define     guifg=#4f6972 guibg=NONE
hi NonText    guifg=#4f6972 guibg=NONE
hi Special    guifg=#4f6972 guibg=NONE
hi SpecialKey guifg=#4f6972 guibg=NONE
hi Tag        guifg=#4f6972 guibg=NONE
hi htmlEndTag guifg=#4f6972 guibg=NONE
hi htmlTag    guifg=#4f6972 guibg=NONE

" Things that should just be normal text color
hi javascriptBraces guifg=NONE guibg=NONE

" TERMINAL
" ------------------------------------------------------------------------------

" System and directory stuff
hi Normal ctermfg=NONE            ctermbg=NONE     cterm=NONE
hi Visual ctermfg=Black           ctermbg=DarkCyan cterm=NONE

hi ColorColumn  ctermfg=NONE      ctermbg=Black    cterm=NONE
hi Cursor       ctermfg=NONE      ctermbg=NONE     cterm=NONE
hi CursorLine   ctermfg=NONE      ctermbg=Black    cterm=NONE
hi CursorLineNR ctermfg=DarkCyan  ctermbg=NONE     cterm=NONE
hi Directory    ctermfg=DarkCyan  ctermbg=NONE     cterm=NONE
hi LineNr       ctermfg=LightGray ctermbg=NONE     cterm=NONE
hi MatchParen   ctermfg=Black     ctermbg=DarkBlue cterm=NONE
hi Parens       ctermfg=LightGray ctermbg=NONE     cterm=NONE
hi Pmenu        ctermfg=DarkCyan  ctermbg=Black    cterm=NONE
hi Search       ctermfg=Black     ctermbg=DarkBlue cterm=NONE
hi StatusLine   ctermfg=LightGray ctermbg=Black    cterm=NONE
hi StatusLineNC ctermfg=LightGray ctermbg=Black    cterm=NONE
hi VertSplit    ctermfg=Black     ctermbg=Black    cterm=NONE

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
hi SpellBad   ctermfg=LightGray   ctermbg=DarkRed
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
