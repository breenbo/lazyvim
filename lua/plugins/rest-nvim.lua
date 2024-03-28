return {
  {
    "vhyrro/luarocks.nvim",
    branch = "go-away-python",
    opts = {},
  },
  {
    "rest-nvim/rest.nvim",
    filetype = "http",
    lazy = false,
    keys = {
      {
        "<leader>rr",
        "<cmd>Rest run<cr>",
        desc = "RestNvim",
      },
    },
    dependencies = { "luarocks.nvim" },
    config = function()
      require("rest-nvim").setup()
    end,
  },
}
