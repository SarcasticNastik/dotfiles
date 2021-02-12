" Plugin Manager: vim-plug

source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim

" Add paths to node and python here
if !empty(glob("~/.config/nvim/paths.vim"))
  source $HOME/.config/nvim/paths.vim
  let g:webdevicons_conceal_nerdtree_brackets = 1
endif

" {{{ internal vim packages
packadd matchit
" }}}

" Rainbow {{{
let g:rainbow_active = 1
" }}}


" Startify {{{
let g:webdevicons_enable_startify = 1
" }}}


" Context {{{
let g:context_enabled = 1
" Separate the context from your buffer context
let g:context_highlight_normal = 'Normal'
let g:context_highlight_border = 'Comment'
let g:context_highlight_tag    = 'Special'
" }}}


" VimTeX {{{
let g:tex_flavor='latex'
let g:vimtex_compiler_progname = 'nvr' 
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
" }}}

" TeX-Conceal {{{
let g:tex_conceal_frac=1
" Figure out setting different conceallevel for markdown and tex
" set conceallevel=3
let g:tex_conceal='sabdmg'
" }}}

" NERDTree {{{
nnoremap <leader>nt :NERDTreeToggle<CR>
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
" }}}

"  AirLine {{{
"let g:airline_theme='base16color'
"let g:airline_theme='hybrid'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#ale#enabled=1
"have buffer names be unique
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
"let g:airline#extensions#tabline#formatter = 'default'
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
" EasyAlign {{{
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
"}}}

" Vim-slime {{{
let g:slime_target = "kitty"
" }}}

" Enable Autocorrection {{{
setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
"}}}

" Vim-Markdown {{{
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_math = 1
let g:vim_markdown_follow_anchor = 1
let g:vim_markdown_math = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_autowrite = 1
set conceallevel=3
" }}}

" ALE {{{
let g:ale_disable_lsp = 1
" }}}
" Enable Left-term debugger {{{
let g:termdebug_wide=1
" }}}

" Re-do after closing {{{
set undofile
set undodir=~/.vim/undodir
" }}}

" Setting Background{{{
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
colorscheme onehalfdark
"}}}

" Set linewrap
" set textwidth=80

source $HOME/.config/nvim/coc-init.vim 
