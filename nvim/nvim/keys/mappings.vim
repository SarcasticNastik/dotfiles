" Configuring MouseSettings {{{
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
" }}}

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Mapping Esc -> jk and kj {{{
inoremap jk <esc>
inoremap kj <esc>
"}}}

" Configuring Tab movement {{{
"" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>tab mappings
noremap <leader><Tab> gt
" }}}

" TAB Movement in general mode b/w buffers {{{
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>
" }}}
 
" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>

