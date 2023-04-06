local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/nvim-cmp'
	use 'saadparwaiz1/cmp_luasnip'
	use 'L3MON4D3/LuaSnip'
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'
	use 'ray-x/lsp_signature.nvim'
	use 'jose-elias-alvarez/null-ls.nvim'
	use {
		'numToStr/Comment.nvim',
		config = function ()
			require('Comment').setup()
		end
	}
	use 'nvim-lualine/lualine.nvim'
	use 'nvim-treesitter/nvim-treesitter'
	use 'nvim-treesitter/nvim-treesitter-textobjects'
	use {'lewis6991/gitsigns.nvim', requires= {'nvim-lua/plenary.nvim'}}
	use {'renerocksai/telekasten.nvim', requires= {'nvim-telescope/telescope.nvim'}}
	use 'habamax/vim-godot'

	if packer_bootstrap then
		require('packer').sync()
	end
end)
