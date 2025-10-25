-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Ignore dotfiles on telescope
vim.keymap.set("n", "<leader>ff", function()
  require("telescope.builtin").find_files({
    hidden = true,
    no_ignore = false,
  })
end, { desc = "Find files (+dotfiles, +ignored)" })

vim.keymap.set("n", "<leader><space>", function()
  require("telescope.builtin").find_files({
    hidden = true,
    no_ignore = false,
  })
end, { desc = "Find files (include dotfiles & ignored)" })

-- Terminal mouse scroll keymaps - enable scrolling in normal mode
vim.keymap.set("n", "<ScrollWheelUp>", "<C-Y>", { noremap = true, silent = true })
vim.keymap.set("n", "<ScrollWheelDown>", "<C-E>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })
