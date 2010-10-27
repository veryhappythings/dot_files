" Vim filetype plugin
" Language:		Markdown
" Maintainer:		Tim Pope <vimNOSPAM@tpope.org>

if exists("b:did_ftplugin")
  finish
endif

runtime! ftplugin/html.vim ftplugin/html_*.vim ftplugin/html/*.vim
unlet! b:did_ftplugin

setlocal comments=fb:*,fb:-,fb:+,n:> commentstring=>\ %s
setlocal formatoptions+=tcqln
setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\|^[-*+]\\s\\+

:set wrap linebreak nolist

let b:undo_ftplugin .= "|setl cms< com< fo<"

" vim:set sw=2:

inoremap  <Up>     gk
inoremap  <Down>   gj
inoremap  <Left>   h
inoremap  <Right>  l
noremap   <Up>     gk
noremap   <Down>   gj
noremap  <Left>    h
noremap  <Right>   l

