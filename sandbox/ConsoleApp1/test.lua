local t = { 1, 2, 3, 4 }
local t2 = t
print(#t)
print(#t2)
print(#existingtable)
local ext = existingtable
print(#ext)


print(#testEnum)
local testE = testEnum
print(#testE)


print(#existinglist)    -- "3"
local existing = existinglist
print(#existing)        -- "nil"

print(#makelist())      -- "3"
local list = makelist()
print(#list)            -- "nil"



--print(tostring(testEnum))
--print(tostring(testEnum.DoesntExist))
print(#testEnum)

--print("index = " .. tostring(testEnum.DoesntExist))
--print("len = " .. tostring(#testEnum))


--function Enum(values)
--    local valueCount = 0
--    for _, _ in pairs(values) do valueCount = valueCount + 1 end
--
--    local enumMetatable = {
--        values = values,
--        valueCount = valueCount,
--        __len = function(t)
--            return getmetatable(t).valueCount
--        end,
--        __index = function(t, k)
--            return getmetatable(t).values[k]
--        end,
--        __newindex = function(t, k, v)
--            error("attempt to modify an enumeration", 2)
--        end,
--        __pairs = function(t)
--            return next, getmetatable(t).values, nil
--        end,
--    }
--
--    return setmetatable({}, enumMetatable)
--end

--local enum = Enum{one = 1, two = 2, three = 4}


--print("table len = " .. tostring(#enum))
--print("table len = " .. tostring(#enum))
--print("values:")
--for k, v in pairs(enum) do
--    print("\t" .. tostring(k) .. " = " .. tostring(v))
--end
--print("read 'two' = " .. tostring(enum.two))


--print("assign not allowed:")
--t.four = 4
