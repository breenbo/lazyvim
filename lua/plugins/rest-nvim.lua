return {
  {
    "vhyrro/luarocks.nvim",
    branch = "go-away-python",
    config = function()
      require("luarocks").setup({})
    end,
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
