return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  keys = {
    { "<leader>ccc", "<cmd>CodeCompanionChat<cr>", desc = "Open Code Companion Chat" },
    { "<leader>cce", "<cmd>CodeCompanionChat Toggle<cr>", desc = "Toggle Chat" },
    { "<leader>cca", "<cmd>CodeCompanionActions<cr>", desc = "Code Companion Actions" },
  },
  opts = {
    strategies = {
      chat = {
        adapter = "anthropic",
      },
      inline = {
        adapter = "anthropic",
      },
    },
  },
}

-- return {
--   "olimorris/codecompanion.nvim",
--   dependencies = {
--     "nvim-lua/plenary.nvim",
--     "nvim-treesitter/nvim-treesitter",
--   },
--   config = function()
--     require("codecompanion").setup({
--       adapters = {
--         deepseek = function()
--           return require("codecompanion.adapters").extend("openai_compatible", {
--             env = {
--               url = "https://api.deepseek.com",
--               api_key = vim.env.DEEPSEEK_API_KEY,
--               model = "deepseek-chat",
--             },
--           })
--         end,
--       },
--       strategies = {
--         chat = { adapter = "deepseek" },
--         inline = { adapter = "deepseek" },
--         agent = { adapter = "deepseek" },
--       },
--     })
--   end,
-- }
