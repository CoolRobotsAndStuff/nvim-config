vim.keymap.set('n', 'x', 'd')
vim.keymap.set('x', 'x', 'd')
vim.keymap.set('n', 'xx', 'dd')
vim.keymap.set('n', 'X', 'D')

return { 
{
    "svermeulen/vim-cutlass",
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
