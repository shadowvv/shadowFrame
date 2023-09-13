LuaProfiler = {}

local profilerType = 
{
    UnityProfiler = 1,
    LogProfiler = 2,
}

local curType = profilerType.LogProfiler

local LogTable = {}
local tickTable = {}
local CacheStack = {}

function LuaProfiler.Start()
    LuaProfiler.Started = true
end

function LuaProfiler.BeginSample(_name)
    if LuaProfiler.Started and IsClient() then
        if curType == profilerType.UnityProfiler then
            Profiler_BeginSample(_name)
        else
            local _level = #CacheStack + 1
            local profilerStack = tickTable[_name]
            if not profilerStack then
                profilerStack = {}
                profilerStack.startCnt = 0
                profilerStack.endCnt = 0
                profilerStack.runTime = 0
                profilerStack.level = _level
            else
                if profilerStack.level < _level then
                    profilerStack.level = _level
                end
            end
            profilerStack.startCnt = profilerStack.startCnt + 1
            table.insert(CacheStack,profilerStack)
            tickTable[_name] = profilerStack
            
            local startTime = os.clock()
            -- os_clock 不要使用太久..可能会溢出返回负数,导致计算不准
            table.insert(profilerStack,startTime)
        end
    end
end

function LuaProfiler.EndSample(_name)
    if LuaProfiler.Started and IsClient() then
        if curType == profilerType.UnityProfiler then
            Profiler_EndSample(_name)
        else
            local endTime = os.clock()
            local profilerStack = tickTable[_name]
            if profilerStack then
                if #profilerStack > 0 then
                    local startTime = table.remove(profilerStack,#profilerStack)
                    profilerStack.runTime = profilerStack.runTime + (endTime - startTime)
                end
                profilerStack.endCnt = profilerStack.endCnt + 1
                table.remove(CacheStack, #CacheStack)
                --if profilerStack.runTime * 1000 > 10 then
                --    LogTools.LogByLevel(LogLevel.logErr, "LuaProfiler---->","Name: ",_name,"Time:",math.floor(profilerStack.runTime * 100000) * 0.01,"Count: ",profilerStack.endCnt)
                --end
            end
        end
    end
end


function LuaProfiler.StartTick()
    if LuaProfiler.Started and IsClient() then
        if curType == profilerType.LogProfiler then
            tickTable = {}
            tickTable.startTime = os.clock()
        end
    end
end

function LuaProfiler.EndTick()
    if LuaProfiler.Started and IsClient() then
        if curType == profilerType.LogProfiler then
            tickTable.endTime = os.clock()
            table.insert(LogTable,tickTable)
            tickTable = nil
        end
    end
end

function LuaProfiler.WriteToPath(_path, _csTimeList)
    if LuaProfiler.Started and IsClient() then
        if curType == profilerType.LogProfiler then
            local _timeLua
            local _timeCs
            local _ratio
            local _cnt
            local _max = math.min(#LogTable, _csTimeList.Count)
            
            -- 把 LogTable 打印出来..
            local file = io.open(_path,"w")
            io.output(file)
            local _playerCreateFrame = BATTLE_ROOM.playerCreateFrame
            io.write('_playerCreateFrame: ' ..tostring(_playerCreateFrame) ..',        _max: ' .._max ..'\n')
            for i = _playerCreateFrame, _max do
                local _tickTable = LogTable[i]
                _timeLua = (_tickTable.endTime - _tickTable.startTime)*1000
                _timeCs = _csTimeList[i - 1]
                if _timeLua > 10 or _timeCs > 10 then
                   io.write('frame : ' .. i .. '\t\t\t\t timeLua : ' .. tostring(math.ceil(_timeLua)) .. '\t\t\t\t timeCs : ' .. tostring(_timeCs) .. '\n')
                    for key, value in pairs(_tickTable) do
                        if type(value) == 'table' then
                            _ratio = math.ceil(100 * value.runTime / (_tickTable.endTime - _tickTable.startTime))
                            _cnt = math.ceil(_ratio * 0.5)
                            if 0 == _cnt then _cnt = 1 end
                            local _level = value.level
                            for _ = 1, _level do
                                io.write(' ')
                            end
                            for j = 1, _cnt do
                                io.write('■')
                            end
                            io.write(_ratio ..'%')
                            for k = 1, 110 - _cnt do
                                io.write(' ')
                            end
                            io.write('name : ' .. key .. '\t\t time : ' .. math.floor(value.runTime * 100000) * 0.01 .. '\t\t cnt : ' .. value.endCnt .. '\n')
                        end
                    end
                    io.write('\n')
                    io.write('\n') 
                end
            end
            io.close(file)
        end
    end
end


function LuaProfiler.PrintProfiler(_timeSec)
    LogTools.LogByLevel(LogLevel.logErr, "BarrageEmitterData.count", BarrageEmitterData.count, "BarrageEjectorManager.popCount", BarrageEjectorManager.popCount, "BarrageEjectorManager.pushCount", BarrageEjectorManager.pushCount)
    LogTools.LogByLevel(LogLevel.logErr, "Vector3.count", Vector3.count, "总时长/秒", _timeSec, "平均单秒创建Vector3数量", Vector3.count / _timeSec )
    LogTools.LogByLevel(LogLevel.logErr, "Quaternion.count", Quaternion.count, "总时长/秒", _timeSec, "平均单秒创建Quaternion数量", Quaternion.count / _timeSec )
    --LogTools.LogByLevel(LogLevel.logErr, "ActionState.count", ActionState.count)
    LogTools.LogByLevel(LogLevel.logErr, "SnapShotData.count", SnapShotData.count)
    LogTools.LogByLevel(LogLevel.logErr, "BarrageEjectorCreateParam.count", BarrageEjectorCreateParam.count)
    
    
    if LuaProfiler.Started and IsClient() then
        if curType == profilerType.LogProfiler then
            local _timeLua
            local _timeCs
            local _ratio
            local _cnt
            
            local _str = ""
            for i = 1, #LogTable do
                local _tickTable = LogTable[i]
                _timeLua = (_tickTable.endTime - _tickTable.startTime)*1000
                if _timeLua > 10 then
                    _str = _str ..'frame : ' .. i .. '\t\t\t\t timeLua : ' .. tostring(math.ceil(_timeLua)) .. '\n'
                    for key, value in pairs(_tickTable) do
                        if type(value) == 'table' then
                            _ratio = math.ceil(100 * value.runTime / (_tickTable.endTime - _tickTable.startTime))
                            _cnt = math.ceil(_ratio * 0.5)
                            if 0 == _cnt then _cnt = 1 end
                            local _level = value.level
                            for _ = 1, _level do
                                _str = _str ..' '
                            end
                            for j = 1, _cnt do
                                _str = _str ..'■'
                            end
                            _str = _str .._ratio ..'%'
                            for k = 1, 110 - _cnt do
                                _str = _str ..' '
                            end
                            _str = _str ..'name : ' .. key .. '\t\t time : ' .. math.floor(value.runTime * 100000) * 0.01 .. '\t\t cnt : ' .. value.endCnt .. '\n'
                        end
                    end
                    _str = _str ..'\n\n'
                end
            end
            --print("LuaProfiler: " .._str)
        end
    end
end

