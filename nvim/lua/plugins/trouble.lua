return {
  "folke/trouble.nvim",
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
  }
  -- dependencies = { "nvim-tree/nvim-web-devicons" },
  -- opts = {
  --   position = "bottom",
  --   height = 12,
  --   icons = true,
  --   use_diagnostic_signs = true,
  -- },
}

