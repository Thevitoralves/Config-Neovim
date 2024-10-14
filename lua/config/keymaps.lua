-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Selecionar tudo
vim.api.nvim_set_keymap("n", "<C-a>", "ggVG", { noremap = true, silent = true })
-- Salvar arquivo
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
-- Salvar e sair
vim.api.nvim_set_keymap("n", "<C-q>", ":wq<CR>", { noremap = true, silent = true })
-- Abrir o Telescope para buscar arquivos
vim.api.nvim_set_keymap("n", "<C-p>", ":Telescope find_files<CR>", { noremap = true, silent = true })
-- Abrir o Telescope para buscar texto
vim.api.nvim_set_keymap("n", "<C-f>", ":Telescope live_grep<CR>", { noremap = true, silent = true })
-- Desfazer
vim.api.nvim_set_keymap("n", "<C-u>", "u", { noremap = true, silent = true })
-- Refazer
vim.api.nvim_set_keymap("n", "<C-r>", "<C-r>", { noremap = true, silent = true })
-- Copiar para o clipboard
vim.api.nvim_set_keymap("v", "<C-c>", '"+y', { noremap = true, silent = true })
-- Colar do clipboard
vim.api.nvim_set_keymap("n", "<C-v>", '"+p', { noremap = true, silent = true })
-- Desabilitar atalho
vim.api.nvim_set_keymap("n", "<C-Right>", "<Nop>", { noremap = true, silent = true })
-- Ctrl + Seta para Redimensionar o NeoTree
vim.api.nvim_set_keymap("n", "<C-Left>", ":vertical resize -2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true, silent = true })
