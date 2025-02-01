local function foo(t, order)
  local sortedKeys = {}
  for k in pairs(t) do
    table.insert(sortedKeys, k)
  end
  table.sort(sortedKeys, order)

  for _, k in ipairs(sortedKeys) do
    local v = t[k]
    if type(v) == "table" then
      foo(v, order)
    end
    -- Process v here in a predictable order
    print(k, v)
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}

-- Example with ascending order
print("Ascending order:")
foo(t, function(a, b) return a < b end)

-- Example with descending order
print("\nDescending order:")
foo(t, function(a, b) return a > b end)