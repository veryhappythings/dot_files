colorscheme molokai

set expandtab
set tabstop=4
set ruler

filetype plugin indent on

" Strip trailing whitespace on save while retaining cursor position
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Syntastic
:highlight SignColumn guibg=darkgrey
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=0
