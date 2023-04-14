syntax on
filetype indent on
set nocp hi=1000 rnu wmnu ic scs ls=2 sc report=0 mat=0 sm nu si ts=4 hls sw=4 sts=4 sta et


:inoremap ( ()<ESC>i
:inoremap [ []<ESC>i
:inoremap { {}<ESC>i
:inoremap < <><ESC>i
:inoremap {<CR> {<CR>}<ESC>O

:inoremap ) <c-r>=Close(')')<CR>
:inoremap ] <c-r>=Close(']')<CR>
:inoremap > <c-r>=Close('>')<CR>
:inoremap } <c-r>=Close('}')<CR>

:inoremap jk <ESC>

func! Close(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunc


map <C-A> ggVG"+y
map <C-X> ggVGc
map <F5> :w<CR>:!g++ -g -O2 -std=c++11 -Wall -Wextra -Wshadow % -o ./%<.out<CR>
map <F6> :!time ./%<.out < ./%<.in<CR>
map <F7> :!gdb ./%<.out<CR>
