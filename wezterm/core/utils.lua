---@module core.utils
---@description This module provides utility functions for table manipulation and module loading.
---@author Ugolin OLLE

local M = {}

---
-- Merges multiple tables, overwriting common elements from subsequent tables.
---@function merge
---@param ... table[] A variable number of tables to be merged.
---@return table A new table containing the merged elements.
function M.merge(...)
  local args = table.pack(...)
  local merged = {}

  for i = 1, args.n do
    if type(args[i]) == 'string' then
      error(args[i])
    end
    for k, v in pairs(args[i]) do
      merged[k] = v
    end
  end

  return merged
end

---
-- Requires a module and returns it.
-- @function req
-- @param module string The name of the module to require.
-- @return any The required module.
function M.req(module)
  local m = require(module)
  return m
end

---
-- Returns a new list with a function applied to each element of the list.
-- @function map
-- @generic T The type of elements in the input list.
-- @generic G The type of elements in the output list.
-- @param list T[] The input list.
-- @param func fun(t: T): G The function to apply to each element.
-- @return G[] A new list with the function applied to each element.
function M.map(list, func)
  local mapped = {}

  for i, v in ipairs(list) do
    mapped[i] = func(v)
  end

  return mapped
end

return M
