return require('packer').startup(function()

  -- Add the required plugins here
  use {'wbthomason/packer.nvim', opt = true}
  
  -- Fuzzy finder
  use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  
  -- LSP and completion
  use { 'neovim/nvim-lspconfig' }
  use { 'nvim-lua/completion-nvim' }

  use { 'navarasu/onedark.nvim' }

  -- Status bar
  use {
  'hoob3rt/lualine.nvim',
  requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  
  -- Snippets
  use { 'honza/vim-snippets' }
  use { 'SirVer/ultisnips' } 

  -- Lua lsp
  use { 'tjdevries/nlua.nvim' }

  -- Vim dispatch
  use { 'tpope/vim-dispatch' }

  -- Fugitive for Git
  use { 'tpope/vim-fugitive' }

  end)