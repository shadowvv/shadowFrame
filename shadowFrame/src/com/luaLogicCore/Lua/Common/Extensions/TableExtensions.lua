--------------------
--dump表的内容,兼容非table
table.count = function(t)
    if t == nil then
        return 0
    end
    if type(t) ~= "table" then
        return 0
    end
    local count = 0
    for k,v in pairs(t) do
        count = count + 1
    end
    return count
end

--------------------
--dump表的内容,兼容非table
table.dump = function(t)
    return dumpTableEx(t)
end

--------------------
--将一个table变成只读表;
local readonly_mt = {
    __newindex = function(t,k,v)
        error(table.concat({"readonly table! k= ", tostring(k), "v= ", tostring(v)}, ' '))
    end
}
table.readonly = function(t)
    for k,v in pairs(t) do
        if type(v) == "table" then
            table.readonly(v)
        end
    end
    return setmetatable(t, readonly_mt)
end

--------------------
--归并排序
local function _mergeSort(arr, low, high, comparer)
    local low = low
    local high = high
    if high - low < 1 then return end

    local mid = math.floor((low+high)/2)
    -- 递归的拆分子序列
    _mergeSort(arr, low, mid, comparer)
    _mergeSort(arr, mid+1, high, comparer)

    -- i, m 代表一个序列中的低高位
    -- m+1，high 代表相邻的另外一个序列（right序列）的低高位
    local i, m = low, mid
    local temp
    while i <= m and m+1 <= high do
        if comparer(arr[i],arr[m+1]) then
            temp = arr[m+1]
            -- 迭代left序列
            -- 之所以这么迭代是因为我们本质上还是在arr中
            for j = m, i, -1 do
                arr[j+1] = arr[j]
            end
            arr[i] = temp
            m = m + 1
        else
            i = i + 1
        end
    end
end
table.mergesort = function(t, comparer)
    local ret = {}
    local i = 1
    for k,v in pairs(t) do
        ret[i]=k
    end

    _mergeSort(ret, 1, #ret, comparer)
    return ret
end

--------------------
---wipe table
---@ref:https://stackoverflow.com/questions/4880368/how-to-delete-all-elements-in-a-lua-table
---搞个万金油,但愿大家别混用array和map;
function table.clear(t)
    if t[1]~=nil then
        local ic=#t
        for i=1, ic do
            t[i]=nil
        end
    else
        for k,v in pairs(t) do
            t[k]=nil
        end
    end
end

--------------------
--将一个table的k,v拷贝到另外一个table里
table.merge = function (tDest, tSrc)
    if tDest and tSrc then
        for k,v in pairs(tSrc) do
            tDest[k]=v
        end
    end
end

--------------------
--
table.arrayContains = function (t, v)
    for i=1, #t do
        if t[i] == v then
            return true
        end
    end
    return false
end

--------------------
--
table.contains = function (t, v)
    for _, v_ in pairs(t) do
        if v_ == v then
            return true
        end
    end
    return false
end

--------------------
--Binary Search 
local BinarySearch = {}
function BinarySearch.DefaultCompare(a, b)
	if a > b then
		return -1
	elseif a > b then
		return 1
	else
		return 0
	end
end

function BinarySearch:find(tableToSearch, toFind, comparer, minIndex, maxIndex)
    minIndex = minIndex or 1
    maxIndex = maxIndex or #tableToSearch
    comparer = comparer or self.DefaultCompare
	
	while minIndex <= maxIndex do
		local mid = math.floor((maxIndex+minIndex)/2)
		local compareVal = comparer(tableToSearch[mid], toFind)
		if compareVal == 0 then
			return mid
		elseif compareVal > 0 then
			maxIndex = mid - 1
		else
			minIndex = mid + 1
		end
	end
	
	return nil
end

function BinarySearch:findInsertPoint(tableToSearch, toInsert, comparer, minIndex, maxIndex)
    minIndex = minIndex or 1
    maxIndex = maxIndex or #tableToSearch

    if maxIndex < minIndex then
        return minIndex
    end
	
    comparer = comparer or self.DefaultCompare
	local mid
	
	while true do
		mid = math.floor((maxIndex+minIndex)/2)
		local compareVal = comparer(tableToSearch[mid], toInsert)
		if compareVal == 0 then
			return mid + 1
		elseif maxIndex == minIndex then
			return minIndex + 1
		elseif compareVal > 0 then
			maxIndex = mid - 1
			if maxIndex < minIndex then
				return maxIndex
			end
		else
			minIndex = mid + 1
			if minIndex > maxIndex then
				return minIndex
			end
		end
	end
end
table.binarySearch = BinarySearch


--------------------
--比较俩table
--from http://snippets.luacode.org/snippets/Deep_Comparison_of_Two_Values_3
table.deepcompare = function (t1,t2,ignore_mt)
	local ty1 = type(t1)
	local ty2 = type(t2)
	if ty1 ~= ty2 then return false end
	-- non-table types can be directly compared
	if ty1 ~= 'table' and ty2 ~= 'table' then return t1 == t2 end
	-- as well as tables which have the metamethod __eq
	local mt = getmetatable(t1)
	if not ignore_mt and mt and mt.__eq then return t1 == t2 end
	for k1,v1 in pairs(t1) do
		local v2 = t2[k1]
		if v2 == nil or not table.deepcompare(v1,v2) then return false end
	end
	for k2,v2 in pairs(t2) do
		local v1 = t1[k2]
		if v1 == nil or not table.deepcompare(v1,v2) then return false end
	end
	return true
end