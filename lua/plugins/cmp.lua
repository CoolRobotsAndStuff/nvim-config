return {
  { -- Autocompletion
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {

      -- Adds other completion capabilities.
      --  nvim-cmp does not ship with all sources by default. They are split
      --  into multiple repos for maintenance purposes.
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
    },
    config = function()
      -- See `:help cmp`
      local cmp = require 'cmp'

      cmp.setup {
        completion = { completeopt = 'menu, menuone, noinsert' },

        -- For an understanding of why these mappings were
        -- chosen, you will need to read `:help ins-completion`
        --
        -- No, but seriously. Please read `:help ins-completion`, it is really good!
        mapping = cmp.mapping.preset.insert {
          -- Select the [n]ext item
          ['<C-n>'] = cmp.mapping.select_next_item(),
          -- Select the [p]revious item
          ['<C-p>'] = cmp.mapping.select_prev_item(),

          -- Scroll the documentation window [b]ack / [f]orward
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),

          ['<Tab>'] = cmp.mapping.confirm { select = true },

          ['<C-Space>'] = cmp.mapping.complete {},


        },
        sources = {
          { name = 'nvim_lsp',
            entry_filter = function(entry)
                return require("cmp").lsp.CompletionItemKind.Snippet ~= entry:get_kind()
            end },
          { name = 'path' },
          { name = 'buffer'},
        },
      }
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
