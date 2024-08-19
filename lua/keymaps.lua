vim.keymap.set("n", "ññ", "<cmd>nohlsearch<CR><Esc>")
vim.keymap.set("i", "ññ", "<Esc>")
vim.keymap.set("v", "ññ", "<Esc>")
vim.keymap.set("t", "ññ", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("c", "ññ", "<C-c>")

vim.keymap.set("n", "ñÑ", "<cmd>nohlsearch<CR><Esc>")
vim.keymap.set("i", "ñÑ", "<Esc>")
vim.keymap.set("v", "ñÑ", "<Esc>")
vim.keymap.set("t", "ñÑ", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("c", "ñÑ", "<C-c>")

vim.keymap.set("n", "Ññ", "<cmd>nohlsearch<CR><Esc>")
vim.keymap.set("i", "Ññ", "<Esc>")
vim.keymap.set("v", "Ññ", "<Esc>")
vim.keymap.set("t", "Ññ", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("c", "Ññ", "<C-c>")

vim.keymap.set("n", "ÑÑ", "<cmd>nohlsearch<CR><Esc>")
vim.keymap.set("i", "ÑÑ", "<Esc>")
vim.keymap.set("v", "ÑÑ", "<Esc>")
vim.keymap.set("t", "ÑÑ", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("c", "ÑÑ", "<C-c>")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })


-- better up/down
vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

vim.keymap.set("n", "J", "<C-D>", { desc = "Half page down" })
vim.keymap.set("n", "K", "<C-U>", { desc = "Half page up" })

-- better indenting
vim.keymap.set("v", ">", "<gv")
vim.keymap.set("v", "<", ">gv")
vim.keymap.set("n", ">", "<<")
vim.keymap.set("n", "<", ">>")

vim.keymap.set("v", "<s-Tab>", "<gv")
vim.keymap.set("v", "<Tab>", ">gv")
vim.keymap.set("n", "<s-Tab>", "<<")
vim.keymap.set("n", "<Tab>", ">>")

-- i3 like splits
vim.keymap.set({"v", "n"}, "-", "<C-W>s")
vim.keymap.set({"v", "n"}, "|", "<C-W>v")

-- easy window quit
vim.keymap.set({"v", "n"}, "<C-q>", "<C-W>q")

-- Harpoon
local harpoon = require("harpoon")

vim.keymap.set("n", "<C-a>", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<A-u>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<A-i>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<A-o>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<A-p>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

-- Move Lines
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })


-- Add undo break-points
vim.keymap.set("i", ",", ",<c-g>u")
vim.keymap.set("i", ".", ".<c-g>u")
vim.keymap.set("i", ";", ";<c-g>u")

-- enter in line
vim.keymap.set("n", "<CR>", "i<CR><Esc>")
