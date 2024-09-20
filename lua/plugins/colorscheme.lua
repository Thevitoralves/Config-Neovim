-- ~/.config/nvim/lua/plugins/colorscheme.lua
return {
  -- Exemplo de configuração de tema
  {
    "folke/tokyonight.nvim",
    config = function()
      vim.cmd("colorscheme tokyonight")
    end,
  },
}
