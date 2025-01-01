local wz = require("wezterm")

local M = {
  leader = {
    key = 'a',
    mods = 'CTRL',
    timeout_milliseconds = 2000,
  },
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

    --- Navigate between panes
    {
      key = 'h',
      mods = 'CMD|OPT',
      action = wz.action.EmitEvent("switch-to-left"),
    },
    {
      key = 'j',
      mods = 'CMD|OPT',
      action = wz.action.ActivatePaneDirection 'Down',
    },
    {
      key = 'k',
      mods = 'CMD|OPT',
      action = wz.action.ActivatePaneDirection 'Up',
    },
    {
      key = 'l',
      mods = 'CMD|OPT',
      action = wz.action.EmitEvent("switch-to-right"),
    },
  }
}


return M
