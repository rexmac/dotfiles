" Local dirs
set backupdir=$HOME/.vim/backup
set directory=$HOME/.vim/swap
set undodir=$HOME/.vim/undo
set viewdir=$HOME/.vim/views
silent execute '!mkdir -p $HOME/.vim/backup'
silent execute '!mkdir -p $HOME/.vim/swap'
silent execute '!mkdir -p $HOME/.vim/undo'
silent execute '!mkdir -p $HOME/.vim/views'

" Use pathogen plugin manager
call pathogen#infect()

" Change mapleader
let mapleader=","

" Settings
syntax on
filetype plugin indent on
set fileencodings=utf-8,latin1
set nocompatible        " Use Vim defaults (much better!)
set encoding=utf-8
set autoindent          " autoindent
set background=dark
set backup
set bs=2                " allow backspacing over everything in insert mode
set copyindent          " use indent from previous line
set expandtab           " Insert spaces for <Tab>
set fileformats=unix,dos,mac
set history=1000        " keep 1000 lines of command line history
set hlsearch            " highlight search pattern matches
set ignorecase          " case insensitive search
set incsearch           " highlight search pattern matches as it is typed
set laststatus=2        " Always show status line
set noshowmode          " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set list                " show invisible characters
set lcs=tab:>.,trail:.,extends:#,nbsp:.
set noerrorbells        " no bells for errors with messages
set nostartofline       " Don't reset cursor to start of line when moving around
set nowrap              " disable line wrapping
set number              " show line numbers
set ruler               " show the cursor position all the time
"set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set shiftround          " round indent to multiple of 'shiftwidth'
set showcmd             " show (partial) command on last line
set showmatch           " show matching brackets/parenthesis
set smartcase           " case sensitive when uc present
set softtabstop=2 tabstop=2 shiftwidth=2
set title               " show filename in title of window
set ttyfast             " fast terminal connection
set undofile
set undolevels=1000     " keep 1000 lines of undo history
set viminfo='20,\"50    " read/write a .viminfo file, don't store more than 50 lines of registers
set visualbell          " use visual bell instead of beep
set wildignore=*.swp,*.bak
set wildmode=longest,list

" Stupid shift key fixes
command WQ wq
command Wq wq
command W w
command Q q

" Backups and views
au BufWinLeave * silent! mkview  "make vim save view (state) (folds, cursor, etc)
au BufWinEnter * silent! loadview "make vim load view (state) (folds, cursor, etc)

" Non-Powerline status line
"if has("statusline")
" set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
"endif

" Powerline status line
"set guifont=Bitstream\ Vera\ Sans\ Mono\ for\ Powerline:h14
"let g:Powerline_symbols = 'fancy'
set rtp+=~/.local/lib/python2.7/site-packages/powerline/bindings/vim

" In text files, always limit the width of text to 78 characters
"au BufRead *.txt set tw=78
" When editing a file, always jump to the last cursor position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Don't use Ex mode, use Q for formatting
map Q gq

" Enable 256 colors
set t_Co=256
"set t_AB=^[[48;5;%dm    " ANSI version of t_Sb?
"set t_AF=^[[38;5;%dm    " ANSI version of t_Sf?

if &term=="xterm"
  set t_Sb=^[4%dm     " Escape sequence to set bg color?
  set t_Sf=^[3%dm     " Escape sequence to set fg color?
endif

" some extra commands for HTML editing
nmap ,mh wbgueyei<<ESC>ea></<ESC>pa><ESC>bba
nmap ,h1 _i<h1><ESC>A</h1><ESC>
nmap ,h2 _i<h2><ESC>A</h2><ESC>
nmap ,h3 _i<h3><ESC>A</h3><ESC>
nmap ,h4 _i<h4><ESC>A</h4><ESC>
nmap ,h5 _i<h5><ESC>A</h5><ESC>
nmap ,h6 _i<h6><ESC>A</h6><ESC>
nmap ,hb wbi<b><ESC>ea</b><ESC>bb
nmap ,he wbi<em><ESC>ea</em><ESC>bb
nmap ,hi wbi<i><ESC>ea</i><ESC>bb
nmap ,hu wbi<u><ESC>ea</i><ESC>bb
nmap ,hs wbi<strong><ESC>ea</strong><ESC>bb
nmap ,ht wbi<tt><ESC>ea</tt><ESC>bb
nmap ,hx wbF<df>f<df>

" File-type settings
"au BufNewFile *.html 0r ~/.vim/templates/html.txt
au BufRead,BufNewFile *.json setfiletype json syntax=javascript
au BufRead,BufNewFile *.t set syntax=perl
au BufRead,BufNewFile *.xul setfiletype xml
au FileType html,xml set listchars-=tab:>.
au FileType html,markdown set wrap linebreak nolist

" Save a file as root
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Paste toggle
set pastetoggle=<leader>p
map <leader>p :set invpaste paste?<CR>

" Line number toggle
nnoremap <leader>n :set invnumber<CR>

" Spell check toggle
map <F6> :setlocal spell! spelllang=en_us<CR>

""""""""""""""""""" CUSTOM FUNCTIONS

" Toggle relative/absolute line numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc
nnoremap <F10> :call NumberToggle()<CR>

" FocusMode
function! ToggleFocusMode()
  if(&foldcolumn != 12)
    set laststatus=0
    set numberwidth=10
    set foldcolumn=12
    set noruler
    hi FoldColumn ctermbg=none
    hi LineNr ctermfg=0 ctermbg=none
    hi NonText ctermfg=0
  else
    set laststatus=2
    set numberwidth=4
    set foldcolumn=0
    set ruler
    execute 'colorscheme ' . g:colors_name
  endif
endfunc
nnoremap <F1> :call ToggleFocusMode()<cr>

colorscheme molokai


