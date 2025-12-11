-- noice.lua (spec do Lazy)
return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },

  -- usamos config para rodar código depois do setup
  config = function(_, opts)
    -- opções padrão + suas
    opts = vim.tbl_deep_extend("force", {
      lsp = {
        signature = { enabled = true },
        progress  = { enabled = false },
        hover     = { enabled = true },
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
        hover = {
          enabled = false,  -- desabilita hover do noice (usa o nvim-lsp-hover)
        }
      },
      presets = {
        lsp_doc_border = true,
        long_message_to_split = true, -- msgs longas vão para split
      },
      render = "default",
      routes = {
        { filter = { min_width = 120 }, view = "split" }, -- opcional extra
      },
    }, opts or {})

    -- 1) setup do Noice
    require("noice").setup(opts)

    -- 2) Wrapper FINAL do vim.notify (depois do noice.setup)
    local orig_notify = vim.notify
    vim.notify = function(msg, level, o)
      local max_len = 1000 -- ajuste o limiar conforme sua necessidade
      if type(msg) == "string" and #msg > max_len then
        -- abre em split para leitura total
        vim.cmd("botright new")
        vim.cmd("setlocal buftype=nofile bufhidden=wipe noswapfile")
        vim.api.nvim_buf_set_lines(0, 0, -1, false, vim.split(msg, "\n", { plain = true }))
        vim.bo.filetype = "log"
        vim.bo.modifiable = false
        vim.api.nvim_echo({ { "Mensagem longa aberta em split (log)", "WarningMsg" } }, false, {})
        return
      end
      return orig_notify(msg, level, o)
    end
  end,
}

