local raw_print = _G.print
local raw_error = _G.error
local custom_error = logError

local _t_strbuilder = {}
local function print(...)
    local ic = select("#", ...)
    for i = 1, ic do
        _t_strbuilder[i] = tostring(select(i, ...))
    end
    _t_strbuilder[#_t_strbuilder+1]="\n"..debug.traceback()
    local str = table.concat(_t_strbuilder, "\t")
    raw_print(str)
    table.clear(_t_strbuilder)
end

local function error(...)
    local ic = select("#", ...)
    for i = 1, ic do
        _t_strbuilder[i] = tostring(select(i, ...))
    end
    _t_strbuilder[#_t_strbuilder+1]="\n"..debug.traceback()
    custom_error(table.concat(_t_strbuilder, "\t"))
    table.clear(_t_strbuilder)
end

_G.print = print
_G.error = error