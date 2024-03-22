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
    -- Update this path
    local extension_path = vim.env.HOME .. "/.vscode/extensions/vadimcn.vscode-lldb-1.10.0/"
    local codelldb_path = extension_path .. "adapter/codelldb"
    local liblldb_path = extension_path .. "lldb/lib/liblldb"

    -- The path is different on Windows
    codelldb_path = extension_path .. "adapter\\codelldb.exe"
    liblldb_path = extension_path .. "lldb\\bin\\liblldb.dll"

    local cfg = require "rustaceanvim.config"

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
      dap = {
        adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
      },
    }
  end,
}
