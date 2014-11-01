" Based on Gary Bernhardt's reset.
runtime colors/Default.vim

hi clear

set background=dark

syntax reset

let g:colors_name = "chrislawrence"

hi Comment ctermfg=8
hi markdownHeadingDelimiter ctermfg=0
hi markdownListMarker ctermfg=0
hi Title ctermfg=12 cterm=bold
hi Error ctermbg=8
hi htmlBold cterm=bold ctermfg=7
hi htmlItalic cterm=italic ctermfg=7
hi htmlBoldItalic ctermfg=8
hi markdownRule ctermfg=0
hi StatusLine ctermfg=7
hi StatusLineNC ctermfg=8

hi SpellBad ctermbg=0 ctermfg=9
hi SpellLocal ctermbg=none 
hi SpellCap ctermbg=none
