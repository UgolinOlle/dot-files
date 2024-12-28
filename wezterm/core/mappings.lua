local wz = require("wezterm")

local M = {
  leader = { key = '.', timeout_milliseconds = 1000 },
  keys = {
    --- Miscellaneous
    {
      key = 'q',
      mods = 'LEADER',
      action = wz.action { CloseCurrentPane = { confirm = true } },
    },
    {
      key = 'r',
      mods = 'LEADER',
      action = wz.action.ReloadConfiguration,
    },
    {
      key = 'n',
      mods = 'LEADER',
      action = wz.action.ShowLauncher,
    },
    {
      key = 'z',
      mods = 'LEADER',
      action = wz.action.TogglePaneZoomState,
    },
    {
      key = 'w',
      mods = 'LEADER',
      action = wz.action.ShowTabNavigator
    },

    --- Split panes
    {
      key = '|',
      mods = 'LEADER|SHIFT',
      action = wz.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    {
      key = '-',
      mods = 'LEADER',
      action = wz.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },

    --- Tab navigation
    {
      key = 'Tab',
      mods = 'CTRL',
      action = wz.action { ActivateTabRelative = 1 },
    },
    {
      key = 'Tab',
      mods = 'CTRL|SHIFT',
      action = wz.action { ActivateTabRelative = -1 },
    },

    --- Navigate betwe
    {
      key = 'h',
      mods = 'ALT',
      action = wz.action.ActivatePaneDirection 'Left',
    },
    {
      key = 'j',
      mods = 'ALT',
      action = wz.action.ActivatePaneDirection 'Down',
    },
    {
      key = 'k',
      mods = 'ALT',
      action = wz.action.ActivatePaneDirection 'Up',
    },
    {
      key = 'l',
      mods = 'ALT',
      action = wz.action.ActivatePaneDirection 'Right',
    },
  }
}


return M
