" Authored by dinghaifeng

" basic settings
set nocompatible
syntax on
set bs=2            " allow backspacing over everything in insert mode
set mouse=""        " disable mouse
" set wrapmargin=8
set ruler
set nowrap
set nobackup
set showmatch
set nonumber

" tab settings
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
autocmd FileType make setlocal noexpandtab   " turn off expandtab when editing Makefile

" indent settings
set cindent
set equalprg=/usr/bin/indent    " external indent

" filetype settings
filetype on
filetype plugin on
filetype indent on

" list hidden tabs with :set list
" set listchars=tab:>.,trail:-
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$

" encoding settings
set fileencodings=gbk,ucs-bom,cp936
" set encoding=gbk
" set fenc=prc

" search settings
set hlsearch
set incsearch

" colorscheme
colorscheme desert

" keyboard shortcuts
" custom copy'n'paste between different sessions
" copy the current visual selection to ~/.vbuf
vmap y :w! ~/.vbuf<CR>
" paste the contents of the buffer file
nmap p :r ~/.vbuf<CR>

" clist bindings
nmap * :vimgrep <cword> %<CR>
nmap n :cnext<CR>
nmap N :cprevious<CR>

" TagList settings
" let Tlist_Auto_Open = 1
" let Tlist_Use_Right_Window=1
" let Tlist_WinWidth = 50
" let Tlist_File_Fold_Andow = 1
" let Tlist_Exit_OnlyWindow = 1

" cscope database settings
" set csprg=/home/users/dinghaifeng/apps/bin/cscope
" let $CSCOPE_DB=""
" let $CSCOPE_DB_PATH=getcwd()
" while isdirectory($CSCOPE_DB_PATH)
"         let $CSCOPE_DB=$CSCOPE_DB_PATH."/cscope.out"
"         " echo $CSCOPE_DB $CSCOPE_DB_PATH
"         if filereadable($CSCOPE_DB)
"                 cs add $CSCOPE_DB $CSCOPE_DB_PATH
"                 break
"         else
"                 let $CSCOPE_DB_PATH=substitute($CSCOPE_DB_PATH, "\/[^/]*$", "", "")
"         endif
" endwhile

" for gnu screen
" if &term =~ "screen"
"    set t_ts=^[k
"    set t_fs=^[\
" endif
" if &term =~ "screen" || &term == "xterm"
"     autocmd BufEnter * let &titlestring = "[vim(" . expand("%:t") . ")]"
"     set title
" endif

