
return {
    {
        "mg979/vim-visual-multi",
        init = function()
            vim.g["VM_default_mappings"] = -1
            vim.g.VM_maps = {
        --       -- Default Keymappings
                ["Add Cursor Up"] = '<C-k>',
                ["Add Cursor Down"] = '<C-j>',
                ["Exit"] = 'ññ'
            }
        end,
    }

}
