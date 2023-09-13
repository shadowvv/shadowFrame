local LUA_VERSION = 5.1
if _VERSION == "Lua 5.1" then
     LUA_VERSION = 5.1
elseif _VERSION == "Lua 5.2" then
     LUA_VERSION = 5.2
elseif _VERSION == "Lua 5.3" then
     LUA_VERSION = 5.3
elseif _VERSION == "Lua 5.4" then
     LUA_VERSION = 5.4
end

--5.1需要luajit的bit库.
local raw_bit51 = _G.bit
--5.2用lua自带的bit32库
local raw_bit52 = _G.bit32
--5.3使用 bit operator

local bit53 = {}
function bit53.band(a,b) return a&b end
function bit53.bor(a,b) return a&b end
function bit53.bnot(a) return ~a end
function bit53.bxor(a, b) return a~b end
function bit53.blshift(int, n) return int<<n end
function bit53.brshift(int, n) return int>>n end

local bit = {}
if LUA_VERSION < 5.2 then table.merge(bit, raw_bit) end

if LUA_VERSION < 5.3 then
     table.merge(bit, raw_bit52)
     bit.blshift = raw_bit52.lshift
     bit.brshift = raw_bit52.rshift
end

if LUA_VERSION > 5.3 then table.merge(bit, bit53) end
_G.bit = bit
