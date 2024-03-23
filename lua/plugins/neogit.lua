return {
  "NeogitOrg/neogit",
  cmd = "Neogit",
  dependencies = {
    "nvim-lua/plenary.nvim", -- required
    "sindrets/diffview.nvim", -- optional - Diff integration
    "nvim-telescope/telescope.nvim", -- optional
  },
  keys = {
    {
      "<leader>gi",
      ":Neogit <CR>",
      mode = "",
      desc = "Neogit",
    },
  },
  config = true,
}
