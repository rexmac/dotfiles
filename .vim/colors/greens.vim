" Vim color file
" Maintainer:   Yuheng Xie <elephant@linux.net.cn>
" Last Change:  2006 May 10

" This color scheme uses a black background.

" First remove all existing highlighting.
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "greens"

hi Cursor                         guifg=Black      guibg=#FFBF00
hi Normal      ctermfg=Grey       guifg=#A4A090    guibg=Black
hi Visual                         guifg=Black      guibg=#C4C090  gui=NONE

hi Comment     ctermfg=DarkGrey   guifg=DarkGreen
hi Constant    ctermfg=DarkRed    guifg=#FF0000
hi Special     ctermfg=Magenta    guifg=DarkRed
hi Identifier  ctermfg=DarkCyan   guifg=#40D8D0
hi Statement   ctermfg=DarkYellow guifg=Yellow  gui=NONE
hi PreProc     ctermfg=Green      guifg=Green
hi Type        ctermfg=White      guifg=White   gui=NONE
hi Ignore      ctermfg=DarkGrey   guifg=#22201C

hi FoldColumn                     guifg=#C4C0B0    guibg=#42403C
hi Folded                         guifg=#C4C0B0    guibg=#22201C

hi DiffAdd                        guifg=White      guibg=DarkBlue
hi DiffDelete                     guifg=Black      guibg=LightCyan
hi DiffText                       guifg=White      guibg=DarkRed    gui=NONE
hi DiffChange                     guifg=Black      guibg=LightYellow

if v:version >= 700

hi CursorLine                                      guibg=#403820
hi CursorColumn                                    guibg=#403820

hi MatchParen  ctermfg=White      guifg=White      guibg=DarkGreen    ctermbg=DarkGreen

hi Pmenu                          guifg=Black      guibg=#C4C090
hi PmenuSel                       guifg=Black      guibg=#FFBF00
hi PmenuSbar                      guifg=Black      guibg=LightGray
hi PmenuThumb                     guifg=Black      guibg=White        gui=NONE

hi TabLine                        guifg=Black      guibg=#A4A090      gui=NONE
hi TabLineFill                    guifg=Black      guibg=#A4A090      gui=NONE
hi TabLineSel                     guifg=White      guibg=Black

endif

" vim: ts=2 sw=2
