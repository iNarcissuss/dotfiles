color jellybeans
":cANSI


set guioptions-=r
set guioptions-=m
set guioptions-=T
set guioptions-=L
set guioptions-=e
set guioptions+=c

set noballooneval
set nomousehide

" Make pretend like we're a urxvt
imap <M-C-p> <C-r>*
nmap <M-C-p> i<C-r>*<esc>
cmap <M-C-p> <C-r>*
" This doesn't work in a console, makes sense to only bind it in gvim
nmap        <C-Tab> :tabnext<cr>
nmap        <C-S-Tab> :tabprev<cr>

if has("gui_macvim")
    set transparency=2
endif

" XXX Important, code here and below will only be evaluated on first boot.
" Don't make changes that should be loaded again here
if exists('g:resized_terminal') || &cp
    finish
endif

if has("gui_macvim")
    set guifont=Bitstream\ Vera\ Sans\ Mono:h10
else
    set guifont=Bitstream\ Vera\ Sans\ Mono\ 8
endif

let g:resized_terminal = 1
set columns=120
set lines=40
