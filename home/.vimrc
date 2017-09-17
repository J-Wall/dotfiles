set nocompatible              " be iMproved, required
filetype off                  " required

set number
set numberwidth=2

set pastetoggle=<F2>

execute pathogen#infect()

" Strip Whitespace on save
autocmd BufWritePre * StripWhitespace

syntax on
filetype indent plugin on

au FileType python setlocal colorcolumn=80
au FileType gitcommit setlocal tw=68 spell spelllang=en_au
au FileType tex setlocal spell spelllang=en_au wrap linebreak nolist tabstop=2 shiftwidth=2 expandtab softtabstop=2
au FileType bib setlocal spell spelllang=en_au wrap linebreak nolist tabstop=2 shiftwidth=2 expandtab softtabstop=2
" au BufWritePost *.tex !pdflatex <afile>

" Skeleton files
au BufNewFile * silent! 0r ~/.vim/skeleton/template.%:e

set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
