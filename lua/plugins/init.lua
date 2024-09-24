return {
  -- Outros plugins já podem estar aqui
  {
    require("lspconfig").tsserver.setup({}),
  },
  -- Adicionando o Alpha-nvim (dashboard)
  {
    "goolord/alpha-nvim",
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      -- Logo ASCII
      local logo = [[
                                                      
      ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗   z 
      ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║  z
      ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ z
      ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ 
      ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
      ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ 
                                                         
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"

      -- Configuração do Alpha
      dashboard.section.header.val = vim.split(logo, "\n")
      dashboard.section.buttons.val = {
        dashboard.button("f", "  Find File", ":Telescope find_files<CR>"),
        dashboard.button("n", "  New File", ":ene <BAR> startinsert <CR>"),
        dashboard.button("r", "  Recent Files", ":Telescope oldfiles<CR>"),
        dashboard.button("g", "  Find Text", ":Telescope live_grep<CR>"),
        dashboard.button("c", "  Config", ":e $MYVIMRC<CR>"),
        dashboard.button("s", "  Restore Session", ":lua require('persistence').load()<CR>"),
        dashboard.button("x", "  Lazy Extras", ":LazyExtras<CR>"),
        dashboard.button("l", "󰒲  Lazy", ":Lazy<CR>"),
        dashboard.button("q", "  Quit NVIM", ":qa<CR>"),
      }

      -- Rodapé com estatísticas
      dashboard.section.footer.val = function()
        local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
      end

      -- Configuração do Alpha
      alpha.setup(dashboard.opts)

      -- Desativa folding no buffer do alpha
      vim.cmd([[
        autocmd FileType alpha setlocal nofoldenable
      ]])

      -- Abre o dashboard após fechar o LazyVim
      if vim.o.filetype == "lazy" then
        vim.api.nvim_create_autocmd("WinClosed", {
          pattern = tostring(vim.api.nvim_get_current_win()),
          once = true,
          callback = function()
            vim.schedule(function()
              vim.api.nvim_exec_autocmds("UIEnter", { group = "dashboard" })
            end)
          end,
        })
      end
    end,
  },
}
