set nocompatible
filetype on
syntax on
set number
set cursorline
" set cursorcolumn
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set autoindent
set showmode
set ruler
colorscheme murphy
set colorcolumn=80
set laststatus=2
set encoding=utf-8
set fileencoding=utf-8

" highlight trailing spaces
highlight TrailingSpace ctermbg=red guibg=red
match TrailingSpace /\s\+$/

" autoremove trailing spaces
autocmd BufWritePre * let save_view = winsaveview() | :%s/\s\+$//e |
    \ :%s/\(\n\s*\)\{2,}$/\r/e |
    \ call winrestview(save_view)

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'

call plug#end()
