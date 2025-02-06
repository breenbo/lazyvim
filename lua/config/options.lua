-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.opt.wrap = true

vim.filetype.add({ extension = { ["http"] = "http" } })

vim.opt.laststatus = 3
