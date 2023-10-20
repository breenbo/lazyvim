vim.keymap.set("n", "<leader>gn", "<cmd>Neogit<CR>", { desc = "Neogit open" })
--
--
--
return {
  "NeogitOrg/neogit",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim", -- required
    "nvim-telescope/telescope.nvim", -- optional
    "sindrets/diffview.nvim", -- optional
  },
  opts = {
    integrations = {
      diffview = true,
    },
  },
}
