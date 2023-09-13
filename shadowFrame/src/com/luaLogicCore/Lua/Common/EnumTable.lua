--------------------
--kun 2022.04.19
--------------------

local blshift = function(int, b)
    --return int << b
    return 1
end

local EnumTable = {}

local function _SaveString(enumTable)
    for k,v in pairs(enumTable) do
        if type(k) == "string" and type(v) == "number" then
            enumTable.__stringFindTable[v]=k
        end
    end
end

local function _AfterEnumCreated(enumTable)
    _SaveString(enumTable)
    table.readonly(enumTable)
end

function EnumTable.Create(t)
    local ret = EnumTable._CreateTable()
    for k,v in pairs(t) do
        if type(k) == "number" and k > 0 and type(v) == "string" then
            ret[v]=k
        else
            ret[k]=v
        end
    end
    _AfterEnumCreated(ret)
    return ret
end

function EnumTable.CreateMask(t)
    local ret = EnumTable._CreateTable()
    for k,v in pairs(t) do
        if type(k) == "number" and type(v) == "string" then
            if 0 < k and k < 63 then
                ret[v]= blshift(1, k-1)
            else
                ret[v]=k
            end
        else
            ret[k]=v
        end
    end
    _AfterEnumCreated(ret)
    return ret
end

function EnumTable._CreateTable()
    return
    {
        --支持tostring(k),方便调试
        __stringFindTable = {},
        tostring=function(self, enum)
            return self.__stringFindTable[enum] or tostring(enum) .." is not in enum!"
        end,

        --按枚举大小排序;
        order=function(self)
            local t = {}
            for k,v in pairs(self) do
                if type(v) == "number" and v > 0 then
                    t[v]=k
                end
            end
        end
    }
end

return EnumTable