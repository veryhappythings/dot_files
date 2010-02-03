" Colour scheme
colorscheme molokai
let g:molokai_original = 1

" Gui options
set guioptions -=T
set guioptions +=b
set number
set fuoptions=maxvert,maxhorz
set columns=136
set lines=40
set nomousefocus
set mousehide
set nowrap

" NERDTree settings
let NERDTreeIgnore=['\.pyc$', '\~$']
let NERDTreeHighlightCursorline = 1

" Disable bell
set vb t_vb=

" Syntastic


" NERDTree maps
map <F2> :NERDTreeToggle<CR>

" Firefox-style command-N to jump to tabs
map <silent> <D-1> :tabn 1<CR>
map <silent> <D-2> :tabn 2<CR>
map <silent> <D-3> :tabn 3<CR>
map <silent> <D-4> :tabn 4<CR>
map <silent> <D-5> :tabn 5<CR>
map <silent> <D-6> :tabn 6<CR>
map <silent> <D-7> :tabn 7<CR>
map <silent> <D-8> :tabn 8<CR>
map <silent> <D-9> :tabn 9<CR>

" bind command-] to shift right
nmap <D-]> >>
vmap <D-]> >>
imap <D-]> <C-O>>>

" bind command-[ to shift left
nmap <D-[> <<
vmap <D-[> <<
imap <D-[> <C-O><<

