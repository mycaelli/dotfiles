local wezterm = require 'wezterm'
local config = {}

-- Defina a fonte Meslo Nerd Font
config.font = wezterm.font("MesloLGM Nerd Font")
config.font_size = 22.0

config.adjust_window_size_when_changing_font_size = true

config.color_scheme = "Pinksand"

config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.tab_max_width = 24

-- Atalho de teclado para abrir nova guia
config.keys = {
  -- Nova guia com Ctrl+Shift+T
  {
    key = "n",
    mods = "CTRL",
    action = wezterm.action{SpawnTab="CurrentPaneDomain"},
  },
  {
    key = 'n',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SpawnWindow,
  },
  -- fecha o terminal
  {key="Q",
    mods="CTRL",
    action=wezterm.action{CloseCurrentTab={confirm=true}}
  },
    -- Fecha a aba atual com Ctrl+Q
  {key="q", 
    mods="CTRL", 
    action=wezterm.action{CloseCurrentTab={confirm=true}}
  },
    -- Próxima aba: Ctrl+Shift+→
  {key="RightArrow", 
    mods="CTRL|SHIFT", 
    action=wezterm.action{ActivateTabRelative=1}
  },
    -- Aba anterior: Ctrl+Shift+←
  {key="LeftArrow", 
    mods="CTRL|SHIFT", 
    action=wezterm.action{ActivateTabRelative=-1}
  },
}
-- config.cursor_bg = "#FF5C8A"
-- config.cursor_fg = "#000000"
-- config.cursor_border = "#FF5C8A"

return config
