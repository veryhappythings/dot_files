set background=dark
" set termguicolors
let g:hybrid_custom_term_colors = 1
colorscheme hybrid
syntax on

" Default indenting etc
set expandtab
set ruler
set number
set nomousefocus
set mousehide
set mouse=a
set nowrap

" My default tab prefs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent

" Sensible backspace behaviour in terminal
set backspace=2

" Scroll 2 lines from edge of screen
set scrolloff=2

" Immediately time out when leaving modes
set timeoutlen=1000 ttimeoutlen=0

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
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

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

let g:python3_host_prog = '/home/mac/.pyenv/versions/vi/bin/python'

" NERDTree settings
let NERDTreeIgnore = ['\.pyc$', '\~$', '\.class$']
let NERDTreeHighlightCursorline = 1

" Ctrl-P settings
let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules',
  \ }

" LSP
" gopls for golang
" Autocomplete from ALE
lua <<EOF
vim.cmd('packadd nvim-lspconfig')
require'lspconfig'.gopls.setup{}
EOF
let g:ale_completion_enabled = 1
let g:ale_linters_ignore = ['golint']

let g:lightline = {
  \ 'colorscheme': 'solarized',
  \ }

set wildignore+=*.so,*.swp,*.zip,*.pyc,*.class

" mappings

let mapleader = '\'

imap jj <esc>

" cwd to current file's path
map <leader>cwd :cd %:p:h<CR>

" NERDTree maps
map <F2> :NERDTreeToggle<CR>

" Tagbar maps
map <F3> :TagbarToggle<CR>

" fzf map
map <leader>p :Files<CR>
map <C-p> :Files<CR>
map <C-b> :Buffers<CR>

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

" Make Ack.vim run ag
" Maybe fzf just replaces this?
"let g:ackprg = 'ag --vimgrep --smart-case'
" cnoreabbrev Ag Ack

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
