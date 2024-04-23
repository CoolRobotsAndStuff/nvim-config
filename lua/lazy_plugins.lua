-- [[ Configure and install plugins ]]
require('lazy').setup(
{
    -- 'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
    --
    -- { 'numToStr/Comment.nvim', opts = {} },

    -- modular approach: using `require 'path/name'` will
    -- include a plugin definition from file lua/path/name.lua
    require 'plugins/neotree',

    -- require 'kickstart/plugins/gitsigns',
    --
    -- require 'kickstart/plugins/which-key',
    --
    -- require 'kickstart/plugins/telescope',
    --
    -- require 'kickstart/plugins/lspconfig',
    --
    -- require 'kickstart/plugins/conform',
    --
    -- require 'kickstart/plugins/cmp',
    --
    -- require 'kickstart/plugins/tokyonight',
    --
    -- require 'kickstart/plugins/todo-comments',
    --
    -- require 'kickstart/plugins/mini',
    --
    -- require 'kickstart/plugins/treesitter',

    { import = 'plugins' },
},
{
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
}
)
