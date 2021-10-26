vim.g.mapleader = '\\'

local fn = vim.fn
local execute = vim.api.nvim_command


-- Auto install `packer.nvim`
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end
vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto-compile on changes to plugins.lua


-- Sensible defaults
require('settings')

require('plugins')

require('keymappings')

require('config')

require('lang')
