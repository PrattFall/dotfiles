local map = function(mode, shortcut, command)
	vim.api.nvim_set_keymap(mode, shortcut, command, {noremap=true, silent=true})
end

vim.cmd [[
	filetype indent on
	color catppuccin_frappe
]]

map('t', '<Esc>', '<C-\\><C-n>')

vim.o.syntax = "on"

vim.o.hidden = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.joinspaces = false
vim.o.list = true
vim.o.listchars = "trail:#,tab:| "
vim.o.number = false
vim.o.ruler = true
vim.o.showcmd = true
vim.o.mouse = 'a'
vim.o.colorcolumn = '80'
vim.o.history = 100
vim.o.lazyredraw = true
vim.o.synmaxcol = 100

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Backups
local config_path = vim.fn.stdpath('config')
vim.o.backupdir = config_path .. '/backup'
vim.o.directory = config_path .. '/swap'
vim.g.undo = config_path .. '/undo'

-- Formatting
vim.o.expandtab = false
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.softtabstop = 4
vim.o.tabstop = 4
vim.o.wrap = false

vim.cmd [[au BufWritePre * :%s/\s\+$//e]]

vim.cmd [[command W w]]
vim.cmd [[command Q q]]

require('packages')
require('gitsigns_config')
require('terminal_toggle')

map('n', '<Leader>sf', ':Telescope find_files<cr>')
map('n', '<Leader>sg', ':Telescope live_grep<cr>')
