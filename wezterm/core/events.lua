local wz = require("wezterm")

local M = {}

wz.on("switch-to-left", function(window, pane)
  local tab = window:mux_window():active_tab()
  
  if tab:get_pane_direction 'Left' ~= nil then
    window:perform_action(wz.action.ActivatePaneDirection 'Left', pane)
  else
    window:perform_action(wz.action.ActivateTabRelative(-1), pane)
  end
end)

wz.on("switch-to-right", function(window, pane)
  local tab = window:mux_window():active_tab()
  
  if tab:get_pane_direction 'Right' ~= nil then
    window:perform_action(wz.action.ActivatePaneDirection 'Right', pane)
  else
    window:perform_action(wz.action.ActivateTabRelative(1), pane)
  end
end)

wz.on("update-right-status", function(window, pane)
  local cwd = pane:get_current_working_dir()
  local branch = cwd and wz.run_child_process({ "git", "-C", cwd, "rev-parse", "--abbrev-ref", "HEAD" })
  window:set_right_status(wz.format({
    { Text = branch and " " .. branch or "" },
  }))
end)

return M
