" Display wordcount
set laststatus=2
fun! NanoWC()
        set stl=%{system('wc\ '.\ expand('%'))}
endfun
autocmd BufWritePost * :call NanoWC()

