
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
	package.searchers[5] = function(_path)
		local bytesStr = CS_Load(_path)
		if bytesStr ~= nil then
			return function(_path)
				local f, error  = load(bytesStr, _path)
				if f == nil then
					logError("require nil " .. _path .. "\n" .. error);
				end
				local ret = f()
				if ret ~= nil then
					return ret;
				else
					return true;
				end
			end
		else
			return nil
		end

	end

	function LoadProto(fileName)
		return require("proto/" .. string.gsub(fileName, ".proto", "")).str
	end
end


require "Lib/LibFiles"
require "Battle/OutInterface/Command"
require "Battle/Logic/FightCoreLua"

if IsClient() then
	require "Test/TestLoad"
	require "Test/TestPb"
	pb = require "pb"
	protoc = require "protobuf.protoc"
	require "dataTable/loadTable"
end

if IsServer() then
	-- 执行服务器初始化逻辑
	-- 绑定java类
	ServerLuaBattle = luajava.bindClass("com.biligame.access.battlecore.socket.logic.raid.lua.LuaBattle")
end

function Test()
	TestLoad();
	TestPb()
	TestPb2()
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
		LogTools.Debug("Main", "执行fight core main.lua的main函数")
	end

	if IsClient() then
		Test();
		ClientInitProto()
	end

	InitFightCoreLua()
end

--初始化logic_core
function InitFightCoreLua()
	---@type FightCoreLua
	fightCoreLua = FightCoreLua.New()
end

-- 初始化战斗房间
---@param battleData table 战斗初始化相关数据
function InitBattleData(battleData)
	-- battleData是战场完整数据，结构是msg.BattleEnterInfo
	fightCoreLua:InitBattleData(battleData)
end

-- 设置客户端logic_core的玩家Id
---@param _playerId number 当前客户端启动logic_core的玩家Id
function SetClientPlayerId(_playerId)
	fightCoreLua:SetClientPlayerId(_playerId);
end


