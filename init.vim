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

" Indent and line formating
    set tabstop=4
    set shiftwidth=4
    set expandtab

    syntax on
    colorscheme monokai
    set termguicolors
    set number relativenumber
    set path+=**
    set clipboard=unnamedplus
    set cursorline
    set mouse=a "integer the mouse management
    set noshowmode "as we got the status through airline don't need to display twice
    set autowrite "autosaves before changin buffers
    set lazyredraw "attemps to kill vim lag
    set ttimeoutlen=0 "no timeout when switching modes

" Removing trailing white space
    autocmd BufWritePre * %s/\s\+$//e

" Modif command for switch
    nnoremap <C-J> <C-W><C-J>
    nnoremap <C-K> <C-W><C-K>
    nnoremap <C-L> <C-W><C-L>
    nnoremap <C-H> <C-W><C-H>

" autoclose
    inoremap " ""<left>
    inoremap ' ''<left>
    inoremap ( ()<left>
    inoremap [ []<left>
    inoremap { {}<left>

" Cursor config
    highlight Cursor gui=reverse
    set guicursor=n-v-c-i:block-Cursor
    set guicursor+=n-v-c-i:blinkon1

" Set Backup directory
    set backupdir=.nvim/backup/,~/.nvim/backup/,/tmp//
    set directory=.nvim/swp/,~/.nvim/swp/,/tmp//
    set undodir=.nvim/undo/,~/.nvim/undo/,/tmp//

" Airline theme
    let g:airline_theme="bubblegum"
