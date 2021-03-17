vim.cmd [[packadd packer.nvim]]

local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end


return require('packer').startup(function()

-- Packer can manage itself as an optional plugin
use {'wbthomason/packer.nvim', opt = true}


-- Colorschemes
use 'lifepillar/vim-gruvbox8'
use 'phanviet/vim-monokai-pro'
use 'mhartington/oceanic-next'
use 'morhetz/gruvbox'


-- Telescope
use 'nvim-lua/popup.nvim'                                                                    
use 'nvim-lua/plenary.nvim'                                                                  
use 'nvim-telescope/telescope.nvim'                                                          
use 'nvim-telescope/telescope-fzy-native.nvim'                                               

-- LSP 
use 'neovim/nvim-lspconfig'
use 'nvim-lua/completion-nvim'
use 'mattn/vim-lsp-settings'
use 'tjdevries/nlua.nvim'
use 'tjdevries/lsp_extensions.nvim'


-- TreeSitter
use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
use 'nvim-treesitter/playground'

-- System Copy
use 'christoomey/vim-system-copy'

-- Cheat Sheet
use 'dbeniamine/cheat.sh-vim'

-- Colorizer
use 'norcalli/nvim-colorizer.lua'

-- AutoPairs
use 'jiangmiao/auto-pairs'

-- Vim Surround
use 'tpope/vim-surround'

-- NERD Commenter
use 'scrooloose/nerdcommenter'

-- Undo Tree
use 'mbbill/undotree'

-- lua development
use 'rafcamlet/nvim-luapad'

-- vimG
use 'szw/vim-g'


-- vim closetag
use 'alvan/vim-closetag'

-- LSPInstall
-- use 'anott03/nvim-lspinstall'

-- UltiSNips
-- use 'SirVer/ultisnips'
-- use 'thomasfaingnaert/vim-lsp-snippets'
-- use 'thomasfaingnaert/vim-lsp-ultisnips'
end)
