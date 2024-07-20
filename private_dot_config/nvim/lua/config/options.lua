-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Mouse: Free yourself from the mouse's oppression!
vim.opt.mouse = ""

-- Undercurl: Enable for errors and warnings
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Indenting: 4 spaces is preferred
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Columns: Be mindful of line length; include the sign column
vim.opt.colorcolumn = { "80", "120" }
vim.opt.signcolumn = "yes"
