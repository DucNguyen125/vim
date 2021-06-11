let mapleader = "\<Space>"
filetype plugin on
let &runtimepath.=',~/.vim/bundle/neoterm'
filetype plugin indent on

set nocompatible
set hidden

"Set color
set termguicolors

" Update time
set updatetime=100

" Give more space for displaying messages.
set cmdheight=2

" no backup files
set nobackup

" Turn on syntax
syntax on

set encoding=UTF-8

" Use mouse
set mouse=a

" Highlight cursor
set cursorline

" incremental search
set incsearch

" highlighted search results
set hlsearch

" search ignore case
set ignorecase

" tabs and spaces handling
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" always show status bar
set laststatus=2

" Show number line
set number
set relativenumber

" Copy from VIM to Clipboard
set clipboard=unnamedplus 

" Auto update file
set autoread
set autowrite

" Auto remove trailing spaces
autocmd BufWritePre * %s/\s\+$//e

" Use statusline instead
set noshowmode

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright



