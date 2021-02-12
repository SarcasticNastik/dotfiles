set runtimepath^=~/.vim
let &packpath = &runtimepath

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    "autocmd VimEnter * PlugInstall
    "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin(stdpath('data') . '/plugged') 
" Syntax Highlighting
Plug 'sheerun/vim-polyglot'
Plug 'romainl/vim-cool'
Plug 'scrooloose/NERDTree'
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'chriskempson/base16-vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'Yggdroot/indentLine'
Plug 'luochen1990/rainbow'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lervag/vimtex'
Plug 'KeitaNakamura/tex-conceal.vim'
Plug 'psliwka/vim-smoothie'
Plug 'tpope/vim-commentary'
"Plug 'wellle/context.vim'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug '~/.fzf'
Plug 'tommcdo/vim-ninja-feet'
" Don't know how to use :(
" Plug 'jpalardy/vim-slime', {'branch': 'main'}
Plug 'dart-lang/dart-vim-plugin'
Plug 'plasticboy/vim-markdown'
Plug 'ryanoasis/vim-devicons'   
call plug#end()
