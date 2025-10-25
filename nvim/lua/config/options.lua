-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.relativenumber = false
opt.number = true

-- Enable mouse support for all modes
opt.mouse = "a"

-- Terminal settings for better scrolling
opt.scrollback = 10000
