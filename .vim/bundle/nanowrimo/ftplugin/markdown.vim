setlocal spell

" Display wordcount
set laststatus=2
fun! NanoWC()
        set stl=%{system('wc\ '.\ expand('%'))}
endfun
autocmd BufWritePost * :call NanoWC()

inoremap  <Up>     gk
inoremap  <Down>   gj
inoremap  <Left>   h
inoremap  <Right>  l
noremap   <Up>     gk
noremap   <Down>   gj
noremap  <Left>    h
noremap  <Right>   l

