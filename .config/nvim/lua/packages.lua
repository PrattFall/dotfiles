local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",

    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	{
		"numToStr/Comment.nvim",
		config = function ()
		require('Comment').setup({})
		end,
		lazy = false
	},
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"saadparwaiz1/cmp_luasnip",
	"L3MON4D3/LuaSnip",
	"neovim/nvim-lspconfig",
	"ray-x/lsp_signature.nvim",
	"nvimtools/none-ls.nvim",
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup {
				ensure_installed = { "c", "lua", "rust" },
				highlight = { enable = true },
				rainbow = { enable = false }
			}
		end
	},
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
	{
		"ionide/ionide-vim",
		ft = "fsharp",
		dependencies = {
			"neovim/nvim-lspconfig"
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
