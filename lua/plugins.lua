-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- better highlighting
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
	}

	-- lsp
	use 'neovim/nvim-lspconfig'

	-- autocomplete with neovim lsp
	-- need snippets first
	use 'hrsh7th/vim-vsnip'
	use 'hrsh7th/nvim-cmp'
	use {'hrsh7th/cmp-buffer', requires = { 'hrsh7th/nvim-cmp' } }
	use {'hrsh7th/cmp-cmdline', requires = { 'hrsh7th/nvim-cmp' } }
	use {'hrsh7th/cmp-nvim-lsp', requires = { 'hrsh7th/nvim-cmp' } }
	use {'hrsh7th/cmp-nvim-lsp-signature-help', requires = { 'hrsh7th/nvim-cmp' } }
	use {'hrsh7th/cmp-path', requires = { 'hrsh7th/nvim-cmp' } }
	use {'hrsh7th/cmp-vsnip', requires = { 'hrsh7th/nvim-cmp', 'hrsh7th/vim-vsnip' } }

	-- linting
	use {
		'jose-elias-alvarez/null-ls.nvim',
		requires = { 'nvim-lua/plenary.nvim' },
	}

	-- file tree
	use {
		'nvim-tree/nvim-tree.lua',
		requires = { 'nvim-tree/nvim-web-devicons' },
	}

	-- color schemes
	use 'shaunsingh/nord.nvim'
	use 'ray-x/starry.nvim'
	use 'EdenEast/nightfox.nvim'
	use {'rose-pine/neovim', as = 'rose-pine'}
	use 'sainnhe/everforest'

end)
