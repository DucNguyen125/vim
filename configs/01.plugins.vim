let g:polyglot_disabled = []
call plug#begin('~/.config/nvim/bundle')
Plug 'APZelos/blamer.nvim' "Git lens alter
Plug 'tpope/vim-fugitive' "Git client
Plug 'airblade/vim-gitgutter' "Show git change in file  
Plug 'editorconfig/editorconfig-vim'
Plug 'unkiwii/vim-nerdtree-sync' "Sync folder with opening file
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter' "Comment code
Plug 'Xuyuanp/nerdtree-git-plugin' "Show git change in nerdtree
Plug 'ryanoasis/vim-devicons'
Plug 'terryma/vim-multiple-cursors'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'Yggdroot/indentLine'
Plug 'itchyny/lightline.vim' "Status bar
Plug 'josa42/vim-lightline-coc' "Lightline intergrate cocvim
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar' "Show tag(class,function,...)
Plug 'easymotion/vim-easymotion'
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Auto suggest
Plug 'sheerun/vim-polyglot' "Language highlight
Plug 'pangloss/vim-javascript' "Js highlight
Plug 'leafgarland/typescript-vim' "Ts highlight
Plug 'wfxr/minimap.vim' "Minimap
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "Fuzzy search
Plug 'junegunn/fzf.vim'
call plug#end()
