" Markdown specific settings

let g:auto_save = 1
setlocal tabstop=4
setlocal shiftwidth=4

set formatoptions+=ro
set com=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,b:*

hi markdownBold cterm=bold ctermfg=7
hi markdownItalic cterm=italic ctermfg=7
hi markdownItalicDelimiter ctermfg=11
hi markdownBoldDelimiter ctermfg=11
hi markdownHeadingDelimiter ctermfg=11
hi markdownListMarker ctermfg=11
