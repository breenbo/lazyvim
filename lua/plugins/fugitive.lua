return {
  "tpope/vim-fugitive",
  cmd = { "Git", "GBrowse", "Gdiffsplit" },
  keys = {
    { "<leader>ga", "<cmd>G add .<cr>", desc = "Git add" },
    { "<leader>gS", "<cmd>G<cr>", desc = "Git status" },
    { "<leader>gb", "<cmd>G blame<cr>", desc = "Git blame" },
    { "<leader>gd", "<cmd>Gvdiffsplit<cr>", desc = "Git diff" },
    { "<leader>gC", "<cmd>G commit<cr>", desc = "Git commit" },
    { "<leader>gP", "<cmd>G push<cr>", desc = "Git push" },
  },
}
