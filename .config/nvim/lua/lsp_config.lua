require("mason").setup()
require("mason-lspconfig").setup {
	ensure_installed = {
		"lua_ls",
		"rust_analyzer",
		"tsserver",
		"eslint",
		"html",
		"cssls"
	}
}

local lspconfig = require("lspconfig")

local lsp_defaults = {
	flags = {
		debounce_text_changes = 150
	},
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
	on_attach = function(client, bufnr)
		vim.api.nvim_exec_autocmds("User", { pattern = "LspAttached" })
	end
}

lspconfig.util.default_config = vim.tbl_deep_extend(
	"force",
	lspconfig.util.default_config,
	lsp_defaults
)

local function goto_prev_error()
	vim.diagnostic.goto_prev { severity = "Error" }
end

local function goto_next_error()
	vim.diagnostic.goto_next { severity = "Error" }
end

local function async_format()
	vim.lsp.buf.format { async = true }
end

local function buf_set_keymap(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, {
		buffer = true,
		silent = true,
		noremap = true
	})
end

local group = vim.api.nvim_create_augroup("user_cmds", { clear = true })

vim.api.nvim_create_autocmd("User", {
	pattern = "LspAttached",
	group = group,
	desc = "LSP Actions",
	callback = function()
		buf_set_keymap("n", "gD", vim.lsp.buf.declaration)
		buf_set_keymap("n", "gd", vim.lsp.buf.definition)
		buf_set_keymap("n", "gi", vim.lsp.buf.implementation)
		buf_set_keymap("n", "gr", vim.lsp.buf.references)

		buf_set_keymap("n", "K", vim.lsp.buf.hover)
		buf_set_keymap("n", "<C-K>", vim.lsp.buf.signature_help)

		buf_set_keymap("n", "<leader>D", vim.lsp.buf.type_definition)
		buf_set_keymap("n", "<leader>f", async_format)

		buf_set_keymap("n", "<leader>wa", vim.lsp.buf.add_workspace_folder)
		buf_set_keymap("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder)
		buf_set_keymap("n", "<leader>rn", vim.lsp.buf.rename)
		buf_set_keymap("n", "<leader>ca", vim.lsp.buf.code_action)

		for _, mode in pairs { "n", "v" } do
			buf_set_keymap(mode, "[e", goto_prev_error)
			buf_set_keymap(mode, "]e", goto_next_error)
			buf_set_keymap(mode, "[E", vim.diagnostic.goto_prev)
			buf_set_keymap(mode, "]E", vim.diagnostic.goto_next)
		end

		buf_set_keymap("n", "],", vim.diagnostic.open_float)
	end
})

local default_handler = function(server)
	lspconfig[server].setup({})
end

require("mason-lspconfig").setup_handlers {
	default_handler,
	["lua_ls"] = function()
		lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					diagnostics = { globals = { "vim" } }
				}
			}
		})
	end
}
