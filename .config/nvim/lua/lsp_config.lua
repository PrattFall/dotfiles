local lspconfig = require "lspconfig"
local lspinstaller = require "nvim-lsp-installer"
local lsp_signature = require "lsp_signature"

lspinstaller.setup {}

require("nvim-lsp-installer").setup {
	ensure_installed = { "jsonls", "yamlls" },
	automatic_installation = false,
	log_level = vim.log.levels.DEBUG,
	ui = {
		icons = {
			server_installed = "",
			server_pending = "",
			server_uninstalled = "",
		},
	},
}

local function create_capabilities(_)
	return require('cmp_nvim_lsp').default_capabilities()
end

local function goto_prev_error()
	vim.diagnostic.goto_prev { severity = "Error" }
end

local function goto_next_error()
	vim.diagnostic.goto_next { severity = "Error" }
end

---@param bufnr number
local function buf_set_keymaps(bufnr)
	local function buf_set_keymap(mode, lhs, rhs)
		vim.keymap.set(mode, lhs, rhs, {
			buffer = bufnr,
			silent = true,
			noremap = true
		})
	end

	local function async_format()
		vim.lsp.buf.format {
			async = true
		}
	end

	buf_set_keymap('n', 'gD',         vim.lsp.buf.declaration)
	buf_set_keymap('n', 'gd',         vim.lsp.buf.definition)
	buf_set_keymap('n', 'K',          vim.lsp.buf.hover)
	buf_set_keymap('n', 'gi',         vim.lsp.buf.implementation)
	buf_set_keymap('n', '<C-k>',      vim.lsp.buf.signature_help)
	buf_set_keymap('n', '<leader>wa', vim.lsp.buf.add_workspace_folder)
	buf_set_keymap('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder)
	buf_set_keymap('n', '<leader>D',  vim.lsp.buf.type_definition)
	buf_set_keymap('n', '<leader>rn', vim.lsp.buf.rename)
	buf_set_keymap('n', '<leader>ca', vim.lsp.buf.code_action)
	buf_set_keymap('n', 'gr',         vim.lsp.buf.references)
	buf_set_keymap('n', '<leader>f',  async_format)

	-- Diagnostics

	for _, mode in pairs { "n", "v" } do
		buf_set_keymap(mode, "[e", goto_prev_error)
		buf_set_keymap(mode, "]e", goto_next_error)
		buf_set_keymap(mode, "[E", vim.diagnostic.goto_prev)
		buf_set_keymap(mode, "]E", vim.diagnostic.goto_next)
	end
	buf_set_keymap("n", "].", vim.diagnostic.open_float)
end

local function common_on_attach(client, bufnr)
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

	buf_set_keymaps(bufnr)

	if client.config.flags then
		client.config.flags.allow_incremental_sync = true
	end

	lsp_signature.on_attach({
		bind = true,
		floating_window = false,
		hint_prefix = "",
		hint_scheme = "Comment",
	}, bufnr)
end

local server_options = {
	-- ["sumneko_lua"] = function(opts)
	-- 	opts.settings = {
	-- 		Lua = {
	-- 			diagnostics = { globals = { 'vim', 'packer_bootstrap' } },
	-- 		}
	-- 	}
	-- end
}

for _, server in ipairs(lspinstaller.get_installed_servers()) do
	local opts = {
		on_attach = common_on_attach,
		capabilities = create_capabilities()
	}

	if server_options[server.name] then
		server_options[server.name](opts)
	end

	lspconfig[server.name].setup(opts)
end
