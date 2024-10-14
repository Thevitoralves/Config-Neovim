-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.cmd([[set guicursor= ]])

-- Desativa smartindent para evitar indentação excessiva
vim.opt.smartindent = false
vim.opt.autoindent = true -- Mantém a indentação da linha anterior

-- Configura o número de espaços ou tabs
vim.opt.tabstop = 2 -- Define 2 espaços por tab
vim.opt.shiftwidth = 2 -- Usa 2 espaços para cada nível de indentação
vim.opt.expandtab = true -- Converte tabs em espaços

vim.cmd([[ 
  set conceallevel=0
  set concealcursor=""
]])
