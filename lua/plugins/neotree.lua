return {
    -- file explorer
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        lazy = false,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            "3rd/image.nvim",
            {'s1n7ax/nvim-window-picker',
            lazy = false,
            version = '2.*',
            config = function()
                require 'window-picker'.setup({
                    filter_rules = {
                        autoselect_one = true,
                        -- filter using buffer options
                        bo = {
                            -- if the file type is one of following, the window will be ignored
                            filetype = { 'neo-tree', "neo-tree-popup", "notify" },
                            -- if the buffer type is one of following, the window will be ignored
                            buftype = { 'terminal', "quickfix" },
                        },
                    },
                })
                end,
            },
        },
        keys = {
            {
                "<leader>e",
                function()
                require("neo-tree.command").execute({ toggle = true })
                end,
                desc = "Explorer NeoTree (Root Dir)",
            },
        },
        config = function()
            require("neo-tree").setup({
                close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
                popup_border_style = "rounded",
                enable_normal_mode_for_inputs = true, -- Enable normal mode for input dialogs.
                open_files_do_not_replace_types = { "terminal", "trouble", "qf" }, -- when opening files, do not use windows containing these filetypes or buftypes
                filesystem = {
                    hijack_netrw_behavior = "open_default"
                             -- "open_current",
                             -- "disabled"
                },
            })
        end,

    }
}
