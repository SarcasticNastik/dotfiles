"let g:node_host_prog = expand("/usr/local/lib/node_modules")
let g:ruby_host_prog = expand('~/.gem/ruby/2.7.0/bin/neovim-ruby-host')
let g:loaded_python_provider = 0
" For setting up env with conda
if has('nvim') && !empty($CONDA_PREFIX)
  let g:python3_host_prog = $CONDA_PREFIX . '/bin/python'
endif

" If it doesn't have a conda prefix, use the current pipenv environment stored
" at ${HOME}/.local/share/virtualenvs/
let g:python3_host_prog = '~/.pyenv/shims/python'
