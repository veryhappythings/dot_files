" Pathogen
call pathogen#runtime_append_all_bundles()

colorscheme molokai_mac
let g:molokai_original = 0

" Default indenting etc
set expandtab
set tabstop=4
set ruler
set number
set nomousefocus
set mousehide
set nowrap

filetype plugin indent on

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
let NERDTreeIgnore = ['\.pyc$', '\~$']
let NERDTreeHighlightCursorline = 1

" Fuzzy Finder settings
let g:fuzzy_ignore = '*.pyc,*~,*.o,*.db,.DS_Store'

" Command-T settings
let g:CommandTNeverShowDotFiles=1
set wildignore+=*.o,*.obj,.git,*.pyc,*.swp,.DS_Store

" mappings

let mapleader = '\'

map <leader>cwd :cd %:p:h<CR>

" Textmate-Fuzzy-Finder
" map <leader>t :FuzzyFinderTextMate<CR>

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

inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

