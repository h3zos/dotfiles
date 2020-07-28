call plug#begin('~/.vim/plugged')
" Theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'crusoexia/vim-monokai'
" Tools
Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-fugitive'
call plug#end()

" Some basics:
    set nocompatible
    filetype plugin on
    syntax on
    colorscheme monokai
    set termguicolors
    set encoding=utf-8
    set tabstop=4
    set shiftwidth=4
    set expandtab
    set number relativenumber
    set path+=**
    set clipboard=unnamedplus
    set cursorline
    set mouse=a

" Removing trailing white space
    autocmd BufWritePre * %s/\s\+$//e
" Modif command for switch
    nnoremap <C-J> <C-W><C-J>
    nnoremap <C-K> <C-W><C-K>
    nnoremap <C-L> <C-W><C-L>
    nnoremap <C-H> <C-W><C-H>

    highlight Cursor gui=reverse
    set guicursor=n-v-c-i:block-Cursor
    set guicursor+=n-v-c-i:blinkon1
" Airline theme
    let g:airline_theme="bubblegum"
