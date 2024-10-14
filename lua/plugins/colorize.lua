return {
  -- lazy.lua (ou no seu arquivo de plugins)
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        "*", -- ativa para todos os arquivos, incluindo CSS, HTML, etc.
      })
    end,
  },
}
