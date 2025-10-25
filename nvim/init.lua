-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Disable unnecessary providers
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.keymap.set("i", "<C-z>", "<C-o>u", { desc = "Undo in insert mode" })
vim.keymap.set("i", "<C-y>", "<C-o><C-r>", { desc = "Redo in insert mode" })

-- Normal mode
vim.keymap.set("n", "<M-Up>", ":m .-2<CR>==", { noremap = true, silent = true })
vim.keymap.set("n", "<M-Down>", ":m .+1<CR>==", { noremap = true, silent = true })

-- Insert mode
vim.keymap.set("i", "<M-Up>", "<Esc>:m .-2<CR>==gi", { noremap = true, silent = true })
vim.keymap.set("i", "<M-Down>", "<Esc>:m .+1<CR>==gi", { noremap = true, silent = true })

-- Visual mode
vim.keymap.set("v", "<M-Up>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "<M-Down>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })

-- Duplikat baris ke bawah
vim.keymap.set("n", "<A-S-Down>", "yyp", { noremap = true, desc = "Duplicate line down" })

-- Duplikat baris ke atas
vim.keymap.set("n", "<A-S-Up>", "yyP", { noremap = true, desc = "Duplicate line up" })
