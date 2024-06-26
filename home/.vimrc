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
Plugin 'preservim/vim-markdown'
Plugin 'JuliaEditorSupport/julia-vim'
Plugin 'chrisbra/csv.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'ajh17/VimCompletesMe'
Plugin 'https://github.com/snakemake/snakemake.git', {'rtp': 'misc/vim/'}
Plugin 'whonore/vim-sentencer'
Plugin 'psf/black'
Plugin 'lindemann09/jags.vim'
Plugin 'salsifis/vim-transpose'

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
set expandtab
set tabstop=4

set pastetoggle=<F2>

" Strip Whitespace on save
autocmd BufWritePre * StripWhitespace

syntax on

au BufRead,BufNewFile *.rs set filetype=rust
au FileType python setlocal colorcolumn=89
au FileType julia setlocal colorcolumn=89 tabstop=4 shiftwidth=4 expandtab softtabstop=4 foldmethod=indent foldnestmax=10 nofoldenable foldlevel=2
au FileType R setlocal colorcolumn=89 tabstop=2 shiftwidth=2 expandtab softtabstop=2 foldmethod=indent foldnestmax=10 nofoldenable foldlevel=2
au FileType gitcommit setlocal tw=68 spell spelllang=en_au
au FileType tex setlocal spell spelllang=en_au wrap linebreak nolist tabstop=2 shiftwidth=2 expandtab softtabstop=2
au FileType bib setlocal spell spelllang=en_au wrap linebreak nolist tabstop=2 shiftwidth=2 expandtab softtabstop=2
au FileType markdown setlocal spell spelllang=en_au formatoptions+=t syntax=off
au BufRead,BufNewFile *.rst setlocal spell spelllang=en_au formatoptions+=t
au FileType yaml setlocal wrap linebreak nolist tabstop=2 shiftwidth=2 expandtab softtabstop=2
au FileType json setlocal wrap linebreak nolist tabstop=2 shiftwidth=2 expandtab softtabstop=2
au FileType jags setlocal colorcolumn=89 tabstop=2 shiftwidth=2 expandtab softtabstop=2 foldmethod=indent foldnestmax=10 nofoldenable foldlevel=2
au BufNewFile,BufRead Snakefile setlocal syntax=snakemake colorcolumn=88 tabstop=4 shiftwidth=4 expandtab softtabstop=4
au BufNewFile,BufRead *.rules setlocal syntax=snakemake colorcolumn=88 tabstop=4 shiftwidth=4 expandtab softtabstop=4
au BufNewFile,BufRead *.snakefile setlocal syntax=snakemake colorcolumn=88 tabstop=4 shiftwidth=4 expandtab softtabstop=4
au BufNewFile,BufRead *.snake setlocal syntax=snakemake colorcolumn=88 tabstop=4 shiftwidth=4 expandtab softtabstop=4
au BufNewFile,BufRead *.smk setlocal syntax=snakemake colorcolumn=88 tabstop=4 shiftwidth=4 expandtab softtabstop=4
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

let g:vim_markdown_folding_style_pythonic=1

let g:csv_delim_test = ',;|'

set list lcs=tab:→\ ·,nbsp:␣,trail:•,extends:⟩,precedes:⟨
