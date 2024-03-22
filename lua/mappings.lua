require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- additions for rust, eventually make this rust project aware
map("n", "<leader>rr", ":RustLsp runnables <CR>", { desc = "RustLSP runnabes" })
map("n", "<leader>rR", ":RustLsp runnables", { desc = "RustLSP runnables [args[]]?" })
map("n", "<leader>rx", ":RustLsp! runnables <CR>", { desc = "RustLSP runnables!" })
map("n", "<leader>rcu", function()
  require("crates").upgrade_all_crates()
end, { desc = "Update crates" })
