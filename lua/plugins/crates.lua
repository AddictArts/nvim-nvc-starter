return {
  "saecki/crates.nvim",
  tag = "stable",
  event = { "BufRead Cargo.toml" },
  dependencies = { "hrsh7th/nvim-cmp" },
  config = function()
    require("crates").setup()

    local cmp = require "cmp"

    vim.api.nvim_create_autocmd("BufRead", {
      group = vim.api.nvim_create_augroup("CmpSourceCargo", { clear = true }),
      pattern = "Cargo.toml",
      callback = function()
        cmp.setup.buffer { sources = { { name = "crates" } } }
      end,
    })
  end,
}
