return {
  "mrcjkb/rustaceanvim",
  version = "^4", -- Recommended
  dependencies = {
    {
      "lvimuser/lsp-inlayhints.nvim",
      opts = {},
    },
    "mfussenegger/nvim-dap",
    "jay-babu/mason-nvim-dap.nvim",
  },
  ft = { "rust" },
  keys = {
    {
      mode = "n",
      "<leader>rr",
      ":RustLsp runnables <CR>",
      desc = "RustLsp runnabes",
      ft = { "rust" },
    },
    {
      mode = "n",
      "<leader>rR",
      ":RustLsp runnables ",
      desc = "RustLsp runnables [args[]]?",
      ft = { "rust" },
    },
    {
      mode = "n",
      "<leader>rx",
      ":RustLsp! runnables <CR>",
      desc = "RustLsp runnables!",
      ft = { "rust" },
    },
    {
      mode = "n",
      "<leader>rd",
      ":RustLsp debuggables <CR>",
      desc = "RustLSP debuggables",
      ft = { "rust" },
    },
    {
      mode = "n",
      "<leader>rD",
      ":RustLsp debuggables ",
      desc = "RustLsp debuggables [args[]]?",
      ft = { "rust" },
    },
    {
      mode = "n",
      "<leader>rg",
      ":RustLsp! debuggables<CR>",
      desc = "RustLsp debuggables!",
      ft = { "rust" },
    },
  },
  config = function()
    -- Update this path
    local extension_path = vim.env.HOME .. "/.vscode/extensions/vadimcn.vscode-lldb-1.10.0/"
    local codelldb_path = extension_path .. "adapter/codelldb"
    local liblldb_path = extension_path .. "lldb/lib/liblldb"
    local this_os = vim.loop.os_uname().sysname

    -- The path is different on Windows
    if this_os:find "Windows_NT" then
      codelldb_path = extension_path .. "adapter\\codelldb.exe"
      liblldb_path = extension_path .. "lldb\\bin\\liblldb.dll"
    else
      -- The liblldb extension is .so for Linux and .dylib for MacOS
      liblldb_path = liblldb_path .. (this_os == "Linux" and ".so" or ".dylib")
    end

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
        configuration = {
          name = "Rust debug client",
          type = "codelldb",
          request = "launch",
          stopOnEntry = false,
        },
      },
    }
  end,
}
