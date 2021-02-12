" Enable ftplugins {{{
filetype plugin indent on
syntax enable
" }}}

" General Settings {{{
set guifont=DroidSansMono\ Nerd\ Font\ 12
set encoding=UTF-8
set fileencoding=UTF-8
"set nowrap

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set nu rnu
set smartindent
set hidden
set mouse=a

" Spawned window orientation {{{
set splitbelow                          
set splitright                          
"}}}

" treat dash separated words as a word text object
set iskeyword+=-                      	

" Prevents swap file generation and autoreads any external changes in the file
set nobackup nowritebackup noswapfile nowb
set autoread

" What is this?
set viminfo='100,<1000,s100,h

set noshowmode
set showcmd
set cursorline
" }}}

"
" Xclipboard compatibility {{{
set clipboard=unnamed
set clipboard+=unnamedplus
set virtualedit=onemore
" }}}


" base16-shell {{{
if filereadable(expand("~/.config/nvim/nvim_bg"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
" }}}
"

" Editing req. files in sudo mode 
cmap w!! w !sudo tee %                  
