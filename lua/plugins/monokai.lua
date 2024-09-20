return {
  -- Outros plugins...

  -- Monokai Pro Theme
  {
    "loctvl842/monokai-pro.nvim",
    lazy = false, -- Carrega o tema na inicialização
    priority = 1000, -- Carrega antes de outros plugins
    config = function()
      require("monokai-pro").setup()
      vim.cmd([[colorscheme monokai-pro]])
    end,
  },

  -- Outros plugins...
}
