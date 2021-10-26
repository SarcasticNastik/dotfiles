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
  use { 'ms-jpq/coq_nvim',
      branch = 'coq',
      requires = { {'ms-jpq/coq.artifacts', branch = 'artifacts'}}
  }

  -- Theme
  use { 'navarasu/onedark.nvim' }


  -- Status bar
  use {
  'hoob3rt/lualine.nvim',
  requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  
  -- Nvim-Tree
  use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function() require'nvim-tree'.setup {} end
  }

  -- Lua lsp
  use { 'tjdevries/nlua.nvim' }

  -- Vim dispatch
  use { 'tpope/vim-dispatch' }

  -- Fugitive for Git
  use { 'tpope/vim-fugitive' }

  -- Dashboard-nvim
  use  { 'glepnir/dashboard-nvim' }


  end)
