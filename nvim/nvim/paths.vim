"let g:node_host_prog = expand("/usr/local/lib/node_modules")
let g:ruby_host_prog = expand('~/.gem/ruby/2.7.0/bin/neovim-ruby-host')

" For setting up env with conda
if has('nvim') && !empty($CONDA_PREFIX)
  let g:python3_host_prog = $CONDA_PREFIX . '/bin/python'
endif
