-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Força a aplicação do tema após o carregamento dos plugins
vim.cmd([[colorscheme monokai-pro]])
