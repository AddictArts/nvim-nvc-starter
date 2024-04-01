require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- additions for rust, eventually make this rust project aware
map("n", "<leader>rcu", function()
  require("crates").upgrade_all_crates()
end, { desc = "Update crates" })

map("n", "<leader>tb", "<cmd>:DapToggleBreakpoint <CR>", { desc = "Toggle breakpoint" })

map("n", "<leader>do", function()
  local dui = require "dapui"

  dui.setup()
  dui.open()
end, { desc = "Dapui open" })

map("n", "<leader>dc", function()
  local dui = require "dapui"

  dui.close()
end, { desc = "Dapui close" })
