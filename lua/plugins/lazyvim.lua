return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      auto = false,
    },
  },
  -- MarkdownPreview
  -- install without yarn or npm
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}
