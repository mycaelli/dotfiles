-- tipo pop-up de notificações
return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      -- Aqui você pode adicionar configurações personalizadas do nvim-notify
      stages = "fade_in_slide_out", -- escolha o estilo da animação: fade, slide, static
      render = "wrapped-compact",
      fps = 60,
      background_colour = "#2d2a2e", -- Use uma cor similar ao fundo do Sonokai para um visual harmonioso
      top_down = false,
      timeout = 3000, -- tempo (em ms) que a notificação fica visível
      -- outras configurações...
    })
    vim.notify = require("notify") -- redefine o método padrão 'vim.notify' para usar o nvim-notify
  end,
}
