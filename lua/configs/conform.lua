-- starter had just the file type formatter lua stylua
local options = {
  lsp_fallback = true,
  -- file type
  formatters_by_ft = {
    lua = { "stylua" },
    -- python = { "isort", "black" },
    javascript = { { "prettierd", "prettier" } },
  },

  format_on_save = { timeout_ms = 500, lsp_fallback = true },

  formatters = {
    shfmt = {
      prepend_args = { "-i", "2" },
    },
  },
}

require("conform").setup(options)
-- format source in comments, markdown, etc.
require("conform").formatters.injected = {
  options = {
    -- Set individual option values
    ignore_errors = true,
    lang_to_ext = {
      json = "json",
      rust = "rs",
    },
    lang_to_formatters = {
      json = { "jq" },
      rust = { "rustfmt" },
    },
    -- the default edition of Rust to use when no Cargo.toml file is found
    default_edition = "2021",
  },
}
