return {
  {
    "pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup({
        enabled = true, -- ativa o auto-save
        execution_message = { -- remove a mensagem de auto-save
          message = "",
        },
        trigger_events = { "InsertLeave", "TextChanged" }, -- eventos que disparam o auto-save
        condition = function(buf)
          local fn = vim.fn
          local utils = require("auto-save.utils.data")

          if
            fn.getbufvar(buf, "&modifiable") == 1
            and utils.not_in(fn.getbufvar(buf, "&filetype"), { "gitcommit" })
          then
            return true -- salva o arquivo
          end
          return false -- não salva o arquivo
        end,
        write_all_buffers = false, -- salva apenas o buffer atual
        debounce_delay = 250, -- reduz o delay para 50ms
      })
    end,
  },
}
