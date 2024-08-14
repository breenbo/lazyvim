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

local exitTerm = function()
  vim.cmd(":ToggleTerm")
end
local enterTerm = function()
  vim.cmd(":ToggleTerm direction=float")
end
vim.keymap.set("t", "<esc><esc>", exitTerm, { desc = "Toggle terminal" })
vim.keymap.set("n", "<leader>wt", enterTerm, { desc = "Toggle terminal" })

--
-- change colorcheme
--
vim.keymap.set("n", "<leader>uN", "<cmd>colorscheme tokyonight-moon<cr>", { desc = "Tokyo Night Moon" })
vim.keymap.set("n", "<leader>uD", "<cmd>colorscheme tokyonight-day<cr>", { desc = "Tokyo Night Day" })

-- disable telescope git files (crash)
-- vim.keymap.set("n", "<leader>,", "<cmd>ls<cr>")
--
-- keymaps to trigger kulala in http files only
vim.api.nvim_exec(
  [[
  autocmd FileType http lua vim.api.nvim_buf_set_keymap(0, "n", "<C-S-k>", ":lua require('kulala').jump_prev()<CR>", { noremap = true, silent = true })
  autocmd FileType http lua vim.api.nvim_buf_set_keymap(0, "n", "<C-S-j>", ":lua require('kulala').jump_next()<CR>", { noremap = true, silent = true })
  autocmd FileType http lua vim.api.nvim_buf_set_keymap(0, "n", "<C-S-l>", ":lua require('kulala').run()<CR>", { noremap = true, silent = true })
  autocmd FileType http lua vim.api.nvim_buf_set_keymap(0, "n", "<C-S-s>", ":lua require('kulala').search()<CR>", { noremap = true, silent = true })
]],
  false
)
