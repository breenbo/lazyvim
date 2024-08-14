return {
  "jellydn/hurl.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("hurl").setup({
      filetype = { "hurl", "http" },
    })
  end,
  keys = {
    -- Run API request
    { "<leader>hA", "<cmd>HurlRunner<CR>", desc = "Run All requests" },
    { "<leader>ha", "<cmd>HurlRunnerAt<CR>", desc = "Run Api request" },
    { "<leader>hte", "<cmd>HurlRunnerToEntry<CR>", desc = "Run Api request to entry" },
    { "<leader>htm", "<cmd>HurlToggleMode<CR>", desc = "Hurl Toggle Mode" },
    { "<leader>htv", "<cmd>HurlVerbose<CR>", desc = "Run Api in verbose mode" },
    -- Run Hurl request in visual mode
    { "<leader>hh", ":HurlRunner<CR>", desc = "Hurl Runner", mode = "v" },
  },
}
