local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath
	})
end

vim.opt.rtp:prepend(lazypath);

require("lazy").setup({
	"wbthomason/packer.nvim",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/nvim-cmp",
	"saadparwaiz1/cmp_luasnip",
	"L3MON4D3/LuaSnip",
	"neovim/nvim-lspconfig",
	{
		"williamboman/mason.nvim",
		run = ":MasonUpdate"
	},
	"williamboman/mason-lspconfig.nvim",
	"ray-x/lsp_signature.nvim",
	"nvimtools/none-ls.nvim",
	{
		"numToStr/Comment.nvim",
		lazy = false
	},
	"nvim-lualine/lualine.nvim",
	"nvim-treesitter/nvim-treesitter",
	"nvim-treesitter/nvim-treesitter-textobjects",
	{
		"lewis6991/gitsigns.nvim",
		dependencies = { "nvim-lua/plenary.nvim" }
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	"habamax/vim-godot",
	{
		"epwalsh/obsidian.nvim",
		version = "*",
		lazy = true,
		ft = "markdown",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		opts = {
			workspaces = {
				{
					name = "personal",
					path = "~/vaults/personal"
				},
				{
					name = "work",
					path = "~/vaults/work"
				}
			}
		}
	}
})
