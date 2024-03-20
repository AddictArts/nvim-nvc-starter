return {
  "mrcjkb/rustaceanvim",
  version = "^4", -- Recommended
  dependencies = {
    {
      "lvimuser/lsp-inlayhints.nvim",
      opts = {},
    },
  },
  ft = { "rust" },
  config = function()
    vim.g.rustaceanvim = {
      inlay_hints = {
        highlight = "NonText",
      },
      tools = {
        hover_actions = {
          auto_focus = true,
        },
      },
      server = {
        on_attach = function(client, bufnr)
          local il_hints = require "lsp-inlayhints"
          il_hints.on_attach(client, bufnr)
        end,
      },
    }
  end,
}
