-- 外层赋值确定客户端启动logic_core
---@return boolean 客户端启动logic core
function IsClient()
	return isClient
end

-- 外层赋值确定服务器启动logic core
---@return boolean 服务器启动logic core
function IsServer()
	return isServer
end

if IsClient() then
	package.searchers[5] = function(_path,arg2)
		local bytesStr = CS_Load(_path)
		return function(_path)
			if bytesStr ~= nil then
				return bytesStr
			else
				return true
			end
		end
	end

	function LoadProto(fileName)
		return require("proto/" .. string.gsub(fileName, ".proto", "")).str
	end
end


require "Lib/LibFiles"
require "Battle/OutInterface/Command"
require "Battle/Logic/FightCoreLua"
--require "Battle/Logic/BarrageEjector/BarrageEjectorService"

if IsClient() then
	pb = require "pb"
	protoc = require "protobuf.protoc"
	require "dataTable/loadTable"
	require "Battle/Utils/ComplexData"
end

if IsServer() then
	-- 执行服务器初始化逻辑
	-- 服务端Java调用库
	require "Lib/Server/ServerLib"
	require 'Lib/Server/PerformanceType'
	require 'Lib/Server/CollectCountType'

	-- 服务端Java调用库
	---@type ServerLib
	SERVER_LIB = ServerLib.New()
end

function ClientInitProto()
	local msgProtoStr = require 'proto/msg'
	assert(protoc:load(msgProtoStr.str))
	local msgProtoStr2 = require 'proto/Battle'
	assert(protoc:load(msgProtoStr2.str))
end

function ErrorTrace(msg)
	logError(msg .. debug.traceback())
end

--外层调用启动logic_core
function Main()
	if CheckLogLevel(LogLevel.log) then
		LogTools.Info("Main", "启动逻辑核")
	end

	if IsClient() then
		ClientInitProto()
		---@type ComplexData
		COMPLEX_DATA = ComplexData.New()
		-- 客户端二次表数据封装
		COMPLEX_DATA:Init()
	end
end

--- 创建战斗核心
---@return FightCoreLua 战斗核心
function CreateFightCore(_battleId)
	if IsClient() and CLIENT_FIGHT_CORE then
		-- 防止客户端逻辑核重复创建
		if CheckLogLevel(LogLevel.logErr) then
			LogTools.LogByLevel(LogLevel.logErr, "CreateFightCore", "_battleId", _battleId, "fightCore exist")
		end
		return
	end
	if CheckLogLevel(LogLevel.log) then
		LogTools.LogByLevel(LogLevel.log, "CreateFightCore", "_battleId", _battleId)
	end
	---@type FightCoreLua
	local fightCoreLua = FightCoreLua.New(_battleId)

	if IsClient() then
		-- 客户端可以使用全局战斗核心
		---@type FightCoreLua
		CLIENT_FIGHT_CORE = fightCoreLua
		-- 客户端创建完可以直接初始化
		InitFightCore(fightCoreLua)
	end

	return fightCoreLua
end

--- 初始化战斗核心（服务端把这一步拆开做，需要等创建完扔进Raid对象管理，再做初始化）
---@param _fightCoreLua FightCoreLua
function InitFightCore(_fightCoreLua)
	if _fightCoreLua == nil then
		return
	end
	if _fightCoreLua.battleRoom:IsInit() then
		if CheckLogLevel(LogLevel.logErr) then
			LogTools.LogByLevel(LogLevel.logErr, "InitFightCore", "_fightCoreLua", "battleId", _fightCoreLua.battleRoom.battleId, "fightCoreLua already init")
		end
		return
	end
	if CheckLogLevel(LogLevel.log) then
		LogTools.LogByLevel(LogLevel.log, "InitFightCore", "_fightCoreLua", "battleId", _fightCoreLua.battleRoom.battleId)
	end
	-- 初始化
	_fightCoreLua:Init()
end


-- 初始化战斗房间
---@param fightCoreLua FightCoreLua
---@param battleData table 战斗初始化相关数据
function InitBattleData(fightCoreLua, battleData)
	if not fightCoreLua or not battleData or not battleData.battleId then
		return
	end
	-- battleData是战场完整数据，结构是msg.BattleEnterInfo
	fightCoreLua:InitBattleData(battleData)
end

-- 设置客户端logic_core的玩家Id
---@param _playerId number 当前客户端启动logic_core的玩家Id
function SetClientPlayerId(_playerId)
	---@type number 客户端玩家id
	CLIENT_PLAYER_ID = _playerId
end

---启动lua性能监视器
function StartLuaProfiler()
	LuaProfiler.Start()
end

---@type function
---@param _fightCoreLua FightCoreLua
function Close(_fightCoreLua)
	if CheckLogLevel(LogLevel.log) then
		LogTools.Info("Close", "关闭战斗核心")
	end
	if _fightCoreLua then
		_fightCoreLua:Close()
	end
end

---@type function
---@param _fightCoreLua FightCoreLua 战斗核心
---@param _getDataEnumIndex number 获取数据枚举值
---@return table
function GetData(_fightCoreLua, _getDataEnumIndex, _extParam)
	if not _fightCoreLua then
		return
	end
	return _fightCoreLua:GetData(_getDataEnumIndex, _extParam)
end

--- 获取战斗核心
---@param _battleId number
function GetFightCore(_battleId)
	if IsClient() then
		-- 客户端使用全局唯一战斗核心
		return CLIENT_FIGHT_CORE
	else
		-- 服务端从Java内存获取战斗核心
		return SERVER_LIB.battle:getFightCoreLua(_battleId)
	end
end

--- 获取战斗房间
---@param _battleId number
---@return BattleRoom
function GetBattleRoom(_battleId)
	local fightCoreLua = GetFightCore(_battleId)
	if not fightCoreLua then
		return
	end
	return fightCoreLua.battleRoom
end

