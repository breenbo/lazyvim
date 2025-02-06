-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
-- help in vertical split
vim.api.nvim_create_autocmd("FileType", {
  pattern = "help",
  callback = function()
    vim.bo.bufhidden = "unload"
    vim.cmd("wincmd L")
    vim.cmd("vertical resize 81")
  end,
})

-- set same colorscheme neovim / wezterm
-- vim.api.nvim_create_autocmd("ColorScheme", {
--   group = vim.api.nvim_create_augroup("wezterm_colorscheme", { clear = true }),
--   callback = function(args)
--     local colorschemes = {
--       ["tokyonight"] = "Tokyo Night",
--       ["tokyonight-day"] = "Tokyo Night Day",
--       ["tokyonight-moon"] = "Tokyo Night Moon",
--       ["tokyonight-night"] = "Tokyo Night",
--       ["tokyonight-storm"] = "Tokyo Night Storm",
--       -- add more color schemes here ...
--     }
--     local colorscheme = colorschemes[args.match]
--     if not colorscheme then
--       return
--     end
--     -- Write the colorscheme to a file
--     local filename = vim.fn.expand("/Users/admin/.config/wezterm/colorscheme")
--     -- assert(type(filename) == "string")
--     local file = io.open(filename, "w")
--     assert(file)
--     file:write(colorscheme)
--     file:close()
--     vim.notify("Setting WezTerm color scheme to " .. colorscheme, vim.log.levels.INFO)
--   end,
-- })

vim.api.nvim_create_autocmd("BufEnter", {
  group = vim.api.nvim_create_augroup("Hints_vue", { clear = true }),
  desc = "Disable hints for Vue",
  pattern = { "*.vue", "*.ts", "*.js" },
  callback = function(ev)
    vim.schedule(function()
      if vim.bo[ev.buf].filetype == "vue" then
        vim.lsp.inlay_hint.enable(false, { bufnr = ev.buf })
      else
        vim.lsp.inlay_hint.enable(true, { bufnr = ev.buf })
      end
    end)
  end,
})

-- vim.opt.winblend = 0
-- vim.opt.pumblend = 0
-- vim.opt.termguicolors = true

-- Set window border highlight immediately
vim.cmd([[highlight WinSeparator guifg=#f7768e gui=bold]])
