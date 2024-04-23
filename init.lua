-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- disable netrw 
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
--vim.g.hijack_netrw_behavior = "open_current"

vim.g.have_nerd_font = true

-- [[ Setting options ]]
require 'options'


-- [[ Install `lazy.nvim` plugin manager ]]
require 'lazy_bootstrap'

-- [[ Configure and install plugins ]]
require 'lazy_plugins'

-- [[ Basic Keymaps ]]
require 'keymaps'

require 'autocmds'

-- [[ Basic Autocommands ]]

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
 
-- Integration with i3
vim.cmd("source ~/.config/nvim/vimscript/i3_integration_server.vim")
vim.cmd("source ~/.config/nvim/vimscript/markdownpreviewconfig.vim")
--vim.cmd("source ~/.config/nvim/vimscript/vm_config.vim")
-- vim: ts=2 sts=2 sw=2 et
