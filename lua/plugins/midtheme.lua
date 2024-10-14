-- Adicione o tema min-theme.nvim ao LazyVim
return {
  {
    "datsfilipe/min-theme.nvim",
    config = function()
      -- Configure o tema se necessário
      require("min-theme").setup({})
    end,
  },
}
