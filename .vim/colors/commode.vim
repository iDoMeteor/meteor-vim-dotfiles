" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Jason White <vim@a-little-taste-of-j.com>
" Last Change:	20091117
" Based on:     koehler

" Notes
" :highlight item key=value     " set highlight item property value
" :help group-name              " see available groups
" :help cterm-colors            " show available color codes

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "commode"
hi Normal		  guifg=white  guibg=black
hi Scrollbar	  guifg=darkcyan guibg=cyan
hi Menu			  guifg=black guibg=cyan
hi SpecialKey	  term=bold  cterm=bold  ctermfg=darkred  guifg=#cc0000
hi NonText		  term=bold  cterm=bold  ctermfg=darkred  gui=bold      guifg=#cc0000
hi Directory	  term=bold  cterm=bold  ctermfg=brown  guifg=#cc8000
hi ErrorMsg		  term=standout  cterm=bold  ctermfg=grey  ctermbg=red  guifg=White  guibg=Red
hi Search		  term=reverse  ctermfg=white  ctermbg=red      guifg=white  guibg=Red
hi MoreMsg		  term=bold  cterm=bold  ctermfg=darkgreen	gui=bold  guifg=SeaGreen
hi ModeMsg		  term=bold  cterm=bold  gui=bold  guifg=White	guibg=Blue
hi LineNr		  term=underline  cterm=bold  ctermfg=darkcyan	guifg=Yellow
hi Question		  term=standout  cterm=bold  ctermfg=darkgreen	gui=bold  guifg=Green
hi StatusLine	  term=bold,reverse  cterm=bold ctermfg=lightblue gui=bold guifg=blue guibg=white
hi StatusLineNC   term=reverse	ctermfg=white ctermbg=lightblue guifg=white guibg=blue
hi Title		  term=bold  cterm=bold  ctermfg=darkmagenta  gui=bold	guifg=Magenta
hi Visual		  term=reverse	cterm=reverse  gui=reverse
hi WarningMsg	  term=standout  cterm=bold  ctermfg=darkred guifg=Red
hi Cursor		  guifg=bg	guibg=Green
hi Comment		  term=bold  cterm=bold ctermfg=cyan  guifg=#80a0ff
hi Constant		  term=underline  cterm=bold ctermfg=magenta  guifg=#ffa0a0
hi Special		  term=bold  cterm=bold ctermfg=red  guifg=Orange
hi Identifier	  term=underline   ctermfg=brown  guifg=#40ffff
hi Statement	  term=bold  cterm=bold ctermfg=yellow	gui=bold  guifg=#ffff60
hi PreProc		  term=underline  ctermfg=cyan  guifg=#ff80ff
hi Type			  term=underline  cterm=bold ctermfg=lightgreen  gui=bold  guifg=#60ff60
hi Error		  term=reverse	ctermfg=darkcyan  ctermbg=black  guifg=Red	guibg=Black
hi Todo			  term=standout  ctermfg=black	ctermbg=darkcyan  guifg=Blue  guibg=Yellow
hi CursorLine	  term=underline  guibg=#555555 cterm=underline
hi CursorColumn	  term=underline  guibg=#555555 cterm=underline
hi MatchParen	  term=reverse  ctermfg=blue guibg=Blue
hi TabLine		  term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=white gui=bold guifg=blue guibg=white
hi TabLineFill	  term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=white gui=bold guifg=blue guibg=white
hi TabLineSel	  term=reverse	ctermfg=white ctermbg=lightblue guifg=white guibg=blue
hi link IncSearch		Visual
hi link String			Constant
hi link Character		Constant
hi link Number			Constant
hi link Boolean			Constant
hi link Float			Number
hi link Function		Identifier
hi link Conditional		Statement
hi link Repeat			Statement
hi link Label			Statement
hi link Operator		Statement
hi link Keyword			Statement
hi link Exception		Statement
hi link Include			PreProc
hi link Define			PreProc
hi link Macro			PreProc
hi link PreCondit		PreProc
hi link StorageClass	Type
hi link Structure		Type
hi link Typedef			Type
hi link Tag				Special
hi link SpecialChar		Special
hi link Delimiter		Special
hi link SpecialComment	Special
hi link Debug			Special

" TagList
" TagListTagName      Used for tag names
" TagListTagScope      Used for tag scope
" TagListTitle        Used for tag titles
" TagListComment      Used for comments
" TagListFileName     Used for filenames

" ShowMarks
" highlight ShowMarksHLl guifg=red guibg=green
" ShowMarksHLl : This group is used to highlight all the lowercase marks.
" ShowMarksHLu : This group is used to highlight all the uppercase marks.
" ShowMarksHLo : This group is used to highlight all other marks.
" ShowMarksHLm : This group is used when multiple marks are on the same line.
