-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")
keymap = vim.api.nvim_set_keymap
keymap("i", "ññ", "<Esc>", {})
keymap("v", "ññ", "<Esc>", {})
keymap("t", "ññ", "<Esc>", {})
keymap("n", "ññ", "<Esc>", {})

vim.keymap.set("n", "<leader>t", function()
  Util.terminal()
end, { desc = "Terminal (cwd)" })
