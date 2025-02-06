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
vim.api.nvim_create_autocmd("FileType", {
  pattern = "http",
  callback = function()
    local opts = { noremap = true, silent = true, buffer = true }
    vim.keymap.set("n", "<C-S-k>", require("kulala").jump_prev, opts)
    vim.keymap.set("n", "<C-S-j>", require("kulala").jump_next, opts)
    vim.keymap.set("n", "<C-S-l>", require("kulala").run, opts)
    vim.keymap.set("n", "<C-S-s>", require("kulala").search, opts)
  end,
})
