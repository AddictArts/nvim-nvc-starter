require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- additions for rust, eventually make this rust project aware
vim.keymap.set("n", "<leader>rr", ":RustLsp runnables <CR>", { desc = "RustLSP runnabes" })
vim.keymap.set("n", "<leader>rR", ":RustLsp runnables", { desc = "RustLSP runnables [args[]]?" })
vim.keymap.set("n", "<leader>rx", ":RustLsp! runnables <CR>", { desc = "RustLSP runnables!" })
