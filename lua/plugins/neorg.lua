vim.keymap.set("n", "<leader>np", "<cmd>Neorg presenter start<CR>", { desc = "Neorg [P]resenter" })
vim.keymap.set("n", "<leader>ni", "<cmd>Neorg index<CR>", { desc = "Neorg [I]ndex" })
vim.keymap.set(
  "n",
  "<leader>nj",
  "<cmd>Neorg journal today<CR><cmd>Neorg inject-metadata<CR>",
  { desc = "Neorg [J]ournal" }
)
-- vim.keymap.set(
--   "n",
--   "<leader>ot",
--   "<cmd>Neorg journal today<CR><cmd>Neorg inject-metadata<CR>",
--   { desc = "Ne[O]rg Journal [T]oday" }
-- )
vim.keymap.set("n", "<leader>nu", "<cmd>Neorg journal toc update<CR>", { desc = "Neorg Journal TOC [U]pdate" })
vim.keymap.set("n", "<leader>nq", "<cmd>Neorg return<CR>", { desc = "Neorg [Q]uit" })
--
--
--
return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parser",
  event = "VeryLazy",
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {}, -- adds icons
        ["core.keybinds"] = {}, -- add default keybinds
        ["core.completion"] = { config = { engine = "nvim-cmp" } }, -- add completion support
        ["core.journal"] = {}, -- enable journal support
        ["core.summary"] = {}, -- create workspaces summary from meta-datas
        ["core.presenter"] = { config = { zen_mode = "zen-mode" } }, -- enable presenter support
        ["core.dirman"] = {
          config = {
            workspaces = {
              homepad = "~/projects/homepad",
              admin = "~/projects/homepad/admin",
              contact = "~/projects/homepad/contact",
              documents = "~/projects/homepad/documents",
              login = "~/projects/homepad/login",
              tickets = "~/projects/homepad/tickets",
              php = "~/projects/php",
            },
            default_workspace = "homepad",
          },
        },
      },
    })
  end,
}
