" Pathogen
call pathogen#infect()

if ! has('gui')
  set t_Co=256
endif

colorscheme molokai_mac
let g:molokai_original = 0
syntax on

" Default indenting etc
set expandtab
set ruler
set number
set nomousefocus
set mousehide
set nowrap

" My default tab prefs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent

filetype plugin indent on
" Load Less files as the CSS filetype
au BufRead,BufNewFile *.less setfiletype css

" Disable bell
set vb t_vb=

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

" NERDTree settings
let NERDTreeIgnore = ['\.pyc$', '\~$', '\.class$']
let NERDTreeHighlightCursorline = 1

" mappings

let mapleader = '\'

imap jj <esc>

" cwd to current file's path
map <leader>cwd :cd %:p:h<CR>

" NERDTree maps
map <F2> :NERDTreeToggle<CR>

" ConqueTerm map
map <leader>t :ConqueTerm bash <CR>

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

" Split navigation
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Quickfix window commands
function! QFixToggle(forced)
    if exists("g:qfix_win") && a:forced == 0
        cclose
    else
        execute "copen"
    endif
endfunction

" Used to track the quickfix window.
augroup QFixToggle
    autocmd!
    autocmd BufWinEnter quickfix let g:qfix_win = bufnr("$")
    autocmd BufWinLeave * if exists("g:qfix_win") && expand("<abuf>") == g:qfix_win | unlet! g:qfix_win | endif
augroup END

noremap <silent><leader>qq <Esc>:call QFixToggle(0)<CR>
map [q :cprev<CR>
map ]q :cnext<CR>

" Quicksilver
nmap <leader>e <Plug>ActivateQS

" Disable arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Bash like keys for the command line
" Thanks https://github.com/pjg/dotfiles
cnoremap <c-a> <Home>
cnoremap <c-e> <End>
cnoremap <c-p> <Up>
cnoremap <c-n> <Down>
cnoremap <c-b> <Left>
cnoremap <c-f> <Right>
cnoremap <c-d> <Del>
cnoremap <c-k> <C-\>estrpart(getcmdline(), 0, getcmdpos()-1)<cr>)

" Some mental screwing around with function arguments.
nmap <leader>w "adiww"sdw"aPF,"sPww
nmap <leader>b "sdiwF,b"adiw"sPww"aPbbb
