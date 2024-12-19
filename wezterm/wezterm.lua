local wezterm = require 'wezterm';

local config = wezterm.config_builder()

-- APPAREANCE
config.font_size = 13
config.line_height = 1.2
config.font = wezterm.font("CommitMono")
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.default_cursor_style = 'BlinkingUnderline'
config.colors = require("themes.cyberdream")
config.window_padding = {
  left = 40,
  right = 40,
  top = 40,
  bottom = 40,
}
config.max_fps = 120
config.prefer_egl = true

return config
