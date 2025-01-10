local M = {}

M.utils = require("core.utils")
M.options = require("core.options")
M.table = require("core.tab")
M.status = require("core.status")
M.events = require("core.events")
M.mappings = require("core.mappings")
M.launcher = require("core.launcher")

function M.init_term()
  M.status.enable()

  local modules = M.utils.map({
    'core.options',
    'core.events',
    'core.mappings',
    'core.tab',
    'core.launcher',
  }, M.utils.req)

  local valid_modules = {}
  for _, module in ipairs(modules) do
    if type(module) == 'table' then
      table.insert(valid_modules, module)
    end
  end

  return M.utils.merge(table.unpack(valid_modules))
end

return M
