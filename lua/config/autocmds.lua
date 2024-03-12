-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Wrap when editing markdown
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "text" },
  callback = function()
    vim.cmd.set("wrap")
    vim.cmd.set("linebreak")
  end,
})
-- Change spell correction lang to spanish when in homework directory
vim.api.nvim_create_autocmd({ "BufEnter", "BufRead", "BufNewFile", "BufWinEnter" }, {
  pattern = "**/CEDSa/*",
  callback = function()
    vim.cmd.set("spelllang=es")
  end,
})
