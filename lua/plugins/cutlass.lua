vim.keymap.set('n', 'x', 'd')
vim.keymap.set('x', 'x', 'd')
vim.keymap.set('n', 'xx', 'dd')
vim.keymap.set('n', 'X', 'D')
vim.keymap.set({'x', 'v'}, 'p', 'P', {noremap = true, silent = true})
vim.keymap.set({'x', 'v'}, 'P', '_dp', {noremap = true, silent = true})

return { 
{
    "svermeulen/vim-cutlass",
    build = function()
      
    end,
  },
}

-- ooo
-- bar
-- vim: ts=2 sts=2 sw=2 et
