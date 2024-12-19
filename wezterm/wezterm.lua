local core = require("core");

core.status.enable()

local modules = core.utils.map({
  'core.options',
  'core.tab',
}, core.utils.req)


return core.utils.merge(table.unpack(modules))
