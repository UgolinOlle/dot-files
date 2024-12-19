local wezterm = require 'wezterm'
local M = {
  font_size = 13,
  line_height = 1.2,
  font = wezterm.font("CommitMono"),
  window_decorations = "RESIZE",
  hide_tab_bar_if_only_one_tab = true,
  default_cursor_style = 'BlinkingUnderline',
  colors = require("themes.cyberdream"),
  window_padding = {
    left = 40,
    right = 40,
    top = 40,
    bottom = 40,
  },
  max_fps = 120,
  prefer_egl = true,
  window_background_opacity = 0.9,
  macos_window_background_blur = 30
}

return M
