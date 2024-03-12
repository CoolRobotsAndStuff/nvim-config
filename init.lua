-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.opt.clipboard = "unnamedplus"

vim.cmd("source ~/.config/nvim/vimscript/markdown_preview.vim")
