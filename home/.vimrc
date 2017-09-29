set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'nvie/vim-flake8'
Plugin 'tmhedberg/SimpylFold'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set number
set numberwidth=2

set pastetoggle=<F2>

" Strip Whitespace on save
autocmd BufWritePre * StripWhitespace

syntax on

au FileType python setlocal colorcolumn=80
au FileType gitcommit setlocal tw=68 spell spelllang=en_au
au FileType tex setlocal spell spelllang=en_au wrap linebreak nolist tabstop=2 shiftwidth=2 expandtab softtabstop=2
au FileType bib setlocal spell spelllang=en_au wrap linebreak nolist tabstop=2 shiftwidth=2 expandtab softtabstop=2
au FileType markdown setlocal textwidth=80 formatoptions+=t
" au BufWritePost *.tex !pdflatex <afile>

" Skeleton files
au BufNewFile * silent! 0r ~/.vim/skeleton/template.%:e

set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap Q gqip
nnoremap <F5> "=strftime("%a %d %b %Y\n---------------\n")<CR>P
inoremap <F5> <C-R>=strftime("%a %d %b %Y\n---------------\n")<CR>

let g:vim_markdown_folding_style_pythonic = 1
