local core = require("core");

core.status.enable()

local modules = core.utils.map({
  'core.options',
  'core.events',
  'core.mappings',
  'core.tab',
  'core.launcher',
}, core.utils.req)

local valid_modules = {}
for _, module in ipairs(modules) do
  if type(module) == 'table' then
    table.insert(valid_modules, module)
  end
end

return core.utils.merge(table.unpack(valid_modules))
