return {
  -- Adiciona o Bracey para Live Server
  {
    "turbio/bracey.vim",
    cmd = "Bracey",
    run = "npm install --prefix server",
    config = function()
      -- Qualquer configuração extra vai aqui
    end,
  },
}
