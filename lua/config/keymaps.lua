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
-- Ir para o buffer anterior
vim.api.nvim_set_keymap("n", "<C-Tab>", ":bnext<CR>", { noremap = true, silent = true })
-- Ir para o buffer seguinte
vim.api.nvim_set_keymap("n", "<C-S-Tab>", ":bprevious<CR>", { noremap = true, silent = true })
-- Fechar buffer
vim.api.nvim_set_keymap("n", "<C-w>", ":bd<CR>", { noremap = true, silent = true })
-- Desfazer
vim.api.nvim_set_keymap("n", "<C-u>", "u", { noremap = true, silent = true })
-- Refazer
vim.api.nvim_set_keymap("n", "<C-r>", "<C-r>", { noremap = true, silent = true })
-- Copiar para o clipboard
vim.api.nvim_set_keymap("v", "<C-c>", '"+y', { noremap = true, silent = true })
-- Colar do clipboard
vim.api.nvim_set_keymap("n", "<C-v>", '"+p', { noremap = true, silent = true })
