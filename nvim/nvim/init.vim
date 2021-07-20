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
let g:airline_theme='onehalfdark'
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
" let g:vim_markdown_folding_disabled = 1
" let g:vim_markdown_math = 1
" let g:vim_markdown_follow_anchor = 1
" let g:vim_markdown_math = 1
" let g:vim_markdown_strikethrough = 1
" let g:vim_markdown_autowrite = 1
" set conceallevel=3
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
let g:coc_root_patterns = ['.git', '.env']

" Startify session {{{
" Have to set this up properly
let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_session_autload =  1
" }}}

" FZF {{{
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" An action can be a reference to a function that processes selected lines
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - Popup window (center of the screen)
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

" - Popup window (center of the current window)
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true } }

" - Popup window (anchored to the bottom of the current window)
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true, 'yoffset': 1.0 } }

" - down / up / left / right
let g:fzf_layout = { 'down': '40%' }

" - Window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10new' }

" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history
" - History files will be stored in the specified directory
" - When set, CTRL-N and CTRL-P will be bound to 'next-history' and
"   'previous-history' instead of 'down' and 'up'.
let g:fzf_history_dir = '~/.local/share/fzf-history'
" }}}

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

source $HOME/.config/nvim/coc-init.vim 
