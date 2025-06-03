-- possibilita baixar debbugers via mason

return {
  "jay-babu/mason-nvim-dap.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "mfussenegger/nvim-dap",
  },
  config = function()
    require("mason").setup()
    require("mason-nvim-dap").setup({
      ensure_installed = { },  
      automatic_installation = true,
    })
  end,
}

