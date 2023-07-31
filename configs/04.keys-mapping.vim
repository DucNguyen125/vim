"Start file [[
"End file ]]
" nnoremap: non-recursive version of map, example: :map ab abcd
" <CR> <enter>

" COCvim
" K show definition
" gd go definition

"Tab multiline
"Press "<SHIFT> + v" to enter VISUAL LINE mode.
"Select the text you wish to indent but using either the cursor keys or the "j" and "k" keys.
"To indent press "<SHIFT> + dot" (> character).
"You can then repeat the indentation by using the "." key.

" NERDTree
"t file in new tab
"s file in new split window

"Insert to normal
inoremap jk <ESC>
"Terminal to normal
tnoremap jk <C-\><C-n> 

" Remap scrolling
nnoremap <C-k> <C-u>
nnoremap <C-j> <C-d>

" Quit
nnoremap <C-c> :qa<CR>

" Save
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>i

" Paste
inoremap <C-v> <Esc>pi

" Remove one line
nnoremap <C-x> dd
inoremap <C-x> <Esc>ddi

" Comment
nmap <C-_> <leader>c<Space>
vmap <C-_> <leader>c<Space>
imap <C-_> <Esc><leader>c<Space>i

"Undo
" u

"Redo
nnoremap <C-u> <C-r>

" Go start, end file
nnoremap <A-Up> gg
nnoremap <A-Down> GG
vnoremap <A-Up> gg
vnoremap <A-Down> GG 

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

"Nerdtree focus
nnoremap <leader>b :NERDTreeFocus<CR>

" New Tab
noremap <C-\> :vsp<CR>
noremap <A-\> :sp<enter>

" End Tab
noremap <C-A-\> <C-w>q

" Terminal
nnoremap <A-t> :sp<CR><C-w>j:term<CR>12<C-w>_i

" Terminal Function
let g:term_win = 0
function! TermToggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        exec "norm \<A-t>"
        set nonumber
        set norelativenumber
        set signcolumn=no
        let g:term_win = win_getid()
    endif
endfunction

" Toggle terminal on/off (neovim)
nnoremap <C-t> :call TermToggle(12)<CR>
inoremap <C-t> <Esc>:call TermToggle(12)<CR>
tnoremap <C-t> <C-\><C-n>:call TermToggle(12)<CR>

" Git gutter
"preview the change <Leader>hp
"undo it with <Leader>hu
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

"Git (vim-furgitive) 
noremap <Leader>g :Git<CR> "Open git status
noremap <A-g> :Gvdiffsplit<CR> "Show change file

" Window navigation
nnoremap <C-Right> <C-w>l
nnoremap <C-Left> <C-w>h
nnoremap <C-Up> <C-w>k
nnoremap <C-Down> <C-w>j
vnoremap <C-Right> <C-w>l
vnoremap <C-Left> <C-w>h
vnoremap <C-Up> <C-w>k
vnoremap <C-Down> <C-w>j

" Tab navigation
nnoremap <A-Right> :tabn<CR>
nnoremap <A-Left> :tabp<CR>
vnoremap <A-Right> :tabn<CR>
vnoremap <A-Left> :tabp<CR>

" Minimap Toggle
nnoremap <A-m> :MinimapToggle<CR>

" Go file
noremap <silent> <C-p> :Files<CR>

" Turn off highlight
nnoremap <C-h> :nohl<CR>

" Search word below cursor in file
nnoremap <A-f> /<C-R><C-W><CR>

" Search word below cursor in folder
nnoremap <C-A-f> :Rg <C-R><C-W><CR>

" Search word in file
nnoremap <C-f> /

" Search word in folder
nnoremap <Leader>f :Rg<space>

" Move line
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
