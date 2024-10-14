return {
  "barrett-ruth/live-server.nvim",
  config = function()
    require("live-server").setup({
      port = 5000, -- Altere para a porta desejada
      open = true, -- Define se deve abrir o navegador automaticamente
    })
  end,
}
