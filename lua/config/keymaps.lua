-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Diffview
vim.keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<cr>", { desc = "Open Diffview" })
vim.keymap.set({ "i" }, "jk", "<Esc>", { silent = true })
vim.keymap.set({ "i" }, "jj", "<Esc>", { silent = true })

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>cp", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set("n", "<leader>cn", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set("n", "<leader>ce", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>cq", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })
