---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2021/12/22 11:06
--- Describe:
---

--任务类型
---@class LuaBehav_ConfigTaskNodeType : table
LuaBehav_ConfigTaskNodeType = {
	-------------- 1 - 99 普通通用节点 -----------------
	None = 0,             --没什么用
	Root = 1,             --根节点
	PrintLog = 2,         --打印节点
	Wait = 3,             --等待节点
	SetVariable =4,       --设置变量
	CheckVariable = 5,    --比较变量
	RandomInt = 6,        --int型随机
	-------------- 100 - 199 逻辑类节点 -----------------
	Sequence = 100,       --顺序节点
	Select = 101,         --选择节点
	Condition = 102,      --条件节点
	Parallel = 103,       --并行节点
	Repeat = 104,         --循环节点
	Event =105,           --事件节点
	------------- 200 - 299 关卡节点 --------------------
	LevelDropMons = 200,  		--关卡投放怪物(临时)
	LevelDropPlayerHero = 201,  --关卡投放玩家英雄
	LevelTimerOperation = 202,  --关卡计时器操作
	LevelDropPerformanceHero = 203,  --关卡投放表演类英雄

	------------- 300 - 399 怪物节点 ---------
	MonsBorn = 300,             --怪物进入出生状态
	MonsDeath = 301,            --怪物进入死亡状态
	MonsPatrol = 302,           --怪物进入巡逻状态
	MonsSelectTarget = 303,     --怪物选择目标
	MonsChaseCurTarget = 304,   --怪物追逐目标
	MonsEscapeCurTarget = 305,  --怪物远离目标
	MonsFaceCurTarget = 306,    --怪物朝向目标
	MonsAddBuff = 307,          --怪物使用添加buff
	MonsMoveTowards = 308,      --怪物指定移动
	MonsRotateTowards = 309,    --怪物指定转向
	MonsDisCondition = 310,     --怪物距离条件
	MonsPropCondition = 311,    --怪物属性条件
}

--条件枚举
---@class LuaBehav_ConfigConditionType : table
LuaBehav_ConfigConditionType = {
	MonsHasTarget = 1,          --怪物有目标
	MonsInBand = 2,             --怪物在限制状态
	CurTargetInAtkAngle = 3,    --当前目标在攻击角度内
	MonsInCastingSkill = 4,     --怪物正在施放技能中
}

--怪物距离判断条件枚举
---@class LuaBehav_ConfigMonsDisConditionType : table
LuaBehav_ConfigMonsDisConditionType = {
	CurTargetInAtkDis = 1,       --当前目标在攻击范围
	CurTargetInChaseDis = 2,     --当前目标在追击范围
	CurTargetInEscapeDis = 3,    --当前目标在逃离范围
}

--事件监听节点监听的事件枚举
---@class LuaBehav_ConfigEventTaskType : table
LuaBehav_ConfigEventTaskType = {
	SpecificMonsOnHurt = 1,      --指定怪物受到伤害（只能用在怪物行为树上）
}

--比较类型
---@class LuaBehav_ConfigCompareType : table
LuaBehav_ConfigCompareType = {
	Equal = 1,    --等于
	UnEqual = 2,  --不等于
	Larger = 3,   --大于
	Smaller = 4,  --小于
	True = 5,     --为真
	False = 6,    --为假
}

--关卡计时器操作类型
---@class LuaBehav_ConfigLevelTimerOperationType : table
LuaBehav_ConfigLevelTimerOperationType = {
	Start = 1,   --开始，重置时间，包括可能的初始化操作
	Pause = 2,   --暂停计时
	Resume = 3,  --恢复计时，不重置时间
	Reset = 4,   --单纯重置时间
}

--添加buff目标类型
---@class LuaBehav_ConfigAddBuffTargetType
LuaBehav_ConfigAddBuffTargetType ={
	SelfUnit = 1,   --添加给自己
	CurTarget = 2,  --添加给当前目标
}

--坐标系类型
---@class LuaBehav_ConfigSpaceType
LuaBehav_ConfigSpaceType = {
	SelfSpace = 1,   --自身坐标系
	WorldSpace = 2,  --世界坐标系
}

--数值描述类型
---@class LuaBehav_ConfigValueDesType
LuaBehav_ConfigValueDesType = {
	SpecificValue = 1,   --数值类型
	RatioValue = 2,      --百分比类型
}

---@class LuaBehav_ConfigTask : table
---@field children LuaBehav_ConfigTask[]
---@field nodeType LuaBehav_ConfigTaskNodeType
LuaBehav_ConfigTask = class(nil, "LuaBehav_ConfigTask")
function LuaBehav_ConfigTask:ctor(_data) 
	self.nodeType = LuaBehav_ConfigTaskNodeType.None
	self.children = {}
end

---@class LuaBehav_ConfigBehavTree : table
---@field rootTask LuaBehav_ConfigTask
LuaBehav_ConfigBehavTree = class(nil, "LuaBehav_ConfigBehavTree")
function LuaBehav_ConfigBehavTree:ctor(_data) 
	self.rootTask = nil
end

LuaBehav_ConfigTest = {}

function LuaBehav_ConfigTest.GetTestConfigData()
	local _configTree = LuaBehav_ConfigBehavTree.New()
	
	----------------------------------------------怪物测试--------------------------------------------------------------
	--local _logTask_1 = LuaBehav_ConfigTask.New()
	--_logTask_1.nodeType = LuaBehav_ConfigTaskNodeType.PrintLog
	--_logTask_1.log = ">>>>>>>>>>>> test behavTree start <<<<<<<<<<"
	--
	--local _monsBorn = LuaBehav_ConfigTask.New()
	--_monsBorn.nodeType = LuaBehav_ConfigTaskNodeType.MonsBorn
	--
	--local _monsPatrol = LuaBehav_ConfigTask.New()
	--_monsPatrol.nodeType = LuaBehav_ConfigTaskNodeType.MonsPatrol
	--
	--local _monsSelectTarget = LuaBehav_ConfigTask.New()
	--_monsSelectTarget.nodeType = LuaBehav_ConfigTaskNodeType.MonsSelectTarget
	--
	--local _monsFace = LuaBehav_ConfigTask.New()
	--_monsFace.nodeType = LuaBehav_ConfigTaskNodeType.MonsFaceCurTarget
	--
	--local _monsChase = LuaBehav_ConfigTask.New()
	--_monsChase.nodeType = LuaBehav_ConfigTaskNodeType.MonsChaseCurTarget
	--
	--local _monsEscape = LuaBehav_ConfigTask.New()
	--_monsEscape.nodeType = LuaBehav_ConfigTaskNodeType.MonsEscapeCurTarget
	--
	--local _monsAddBuff = LuaBehav_ConfigTask.New()
	--_monsAddBuff.nodeType = LuaBehav_ConfigTaskNodeType.MonsAddBuff
	--_monsAddBuff.buffGroupId = 101
	--_monsAddBuff.targetType = LuaBehav_ConfigAddBuffTargetType.CurTarget
	--
	--local _monsMoveTowards = LuaBehav_ConfigTask.New()
	--_monsMoveTowards.nodeType = LuaBehav_ConfigTaskNodeType.MonsMoveTowards
	--_monsMoveTowards.spaceType = LuaBehav_ConfigSpaceType.WorldSpace
	--_monsMoveTowards.posShift = Vector3.New(100,100,100)
	--
	--local _monsRotateTowards = LuaBehav_ConfigTask.New()
	--_monsRotateTowards.nodeType = LuaBehav_ConfigTaskNodeType.MonsRotateTowards
	--_monsRotateTowards.spaceType = LuaBehav_ConfigSpaceType.WorldSpace
	--_monsRotateTowards.posShift = Vector3.New(200,200,200)
	--
	--local _monsDead = LuaBehav_ConfigTask.New()
	--_monsDead.nodeType = LuaBehav_ConfigTaskNodeType.MonsDeath
	--
	--local _logTask_2 = LuaBehav_ConfigTask.New()
	--_logTask_2.nodeType = LuaBehav_ConfigTaskNodeType.PrintLog
	--_logTask_2.log = ">>>>>>>>>>>> test behavTree end <<<<<<<<<<"
	
	--local _sequenceTask_1 = LuaBehav_ConfigTask.New()
	--_sequenceTask_1.nodeType = LuaBehav_ConfigTaskNodeType.Sequence
	--table.insert(_sequenceTask_1.children, _logTask_1)
	--table.insert(_sequenceTask_1.children, _monsBorn)
	--table.insert(_sequenceTask_1.children, _monsPatrol)
	--table.insert(_sequenceTask_1.children, _monsSelectTarget)
	--table.insert(_sequenceTask_1.children, _monsFace)
	--table.insert(_sequenceTask_1.children, _monsChase)
	--table.insert(_sequenceTask_1.children, _monsEscape)
	--table.insert(_sequenceTask_1.children, _monsAddBuff)
	--table.insert(_sequenceTask_1.children, _monsMoveTowards)
	--table.insert(_sequenceTask_1.children, _monsRotateTowards)
	--table.insert(_sequenceTask_1.children, _monsDead)
	--table.insert(_sequenceTask_1.children, _logTask_2)
	
	----------------------------------------------关卡测试--------------------------------------------------------------
	--local _logTask_1 = LuaBehav_ConfigTask.New()
	--_logTask_1.nodeType = LuaBehav_ConfigTaskNodeType.PrintLog
	--_logTask_1.log = ">>>>>>>>>>>> test behavTree start <<<<<<<<<<"
	--
	--local _startTimerTask = LuaBehav_ConfigTask.New()
	--_startTimerTask.nodeType = LuaBehav_ConfigTaskNodeType.LevelTimerOperation
	--_startTimerTask.operationType = LuaBehav_ConfigLevelTimerOperationType.Start
	--
	--local _waitTask_1 = LuaBehav_ConfigTask.New()
	--_waitTask_1.nodeType = LuaBehav_ConfigTaskNodeType.Wait
	--_waitTask_1.time = 1
	--
	--local _dropPlayerTask = LuaBehav_ConfigTask.New()
	--_dropPlayerTask.nodeType = LuaBehav_ConfigTaskNodeType.LevelDropPlayerHero
	--_dropPlayerTask.id = -1
	--
	--local _waitTask_2 = LuaBehav_ConfigTask.New()
	--_waitTask_2.nodeType = LuaBehav_ConfigTaskNodeType.Wait
	--_waitTask_2.time = 1
	--
	--local _dropMonsTask = LuaBehav_ConfigTask.New()
	--_dropMonsTask.nodeType = LuaBehav_ConfigTaskNodeType.LevelDropMons
	--_dropMonsTask.id = 1
	--
	--local _waitTask_3 = LuaBehav_ConfigTask.New()
	--_waitTask_3.nodeType = LuaBehav_ConfigTaskNodeType.Wait
	--_waitTask_3.time = 1
	--
	--local _dropPerformanceHeroTask = LuaBehav_ConfigTask.New()
	--_dropPerformanceHeroTask.nodeType = LuaBehav_ConfigTaskNodeType.LevelDropPerformanceHero
	--_dropPerformanceHeroTask.id = 1
	--_dropPerformanceHeroTask.position = Vector3.New(0,0,0)
	--_dropPerformanceHeroTask.rotation = Vector3.New(0,50,0)
	--
	--local _logTask_2 = LuaBehav_ConfigTask.New()
	--_logTask_2.nodeType = LuaBehav_ConfigTaskNodeType.PrintLog
	--_logTask_2.log = ">>>>>>>>>>>> test behavTree end <<<<<<<<<<"
	--
	--local _sequenceTask_1 = LuaBehav_ConfigTask.New()
	--_sequenceTask_1.nodeType = LuaBehav_ConfigTaskNodeType.Sequence
	--table.insert(_sequenceTask_1.children, _logTask_1)
	--table.insert(_sequenceTask_1.children, _startTimerTask)
	--table.insert(_sequenceTask_1.children, _waitTask_1)
	--table.insert(_sequenceTask_1.children, _dropPlayerTask)
	--table.insert(_sequenceTask_1.children, _waitTask_2)
	--table.insert(_sequenceTask_1.children, _dropMonsTask)
	--table.insert(_sequenceTask_1.children, _waitTask_3)
	--table.insert(_sequenceTask_1.children, _dropPerformanceHeroTask)
	--table.insert(_sequenceTask_1.children, _logTask_2)

	
	----------------------------------------------关卡测试--------------------------------------------------------------
	local _logTask_1 = LuaBehav_ConfigTask.New()
	_logTask_1.nodeType = LuaBehav_ConfigTaskNodeType.PrintLog
	_logTask_1.log = ">>>>>>>>>>>> test behavTree start <<<<<<<<<<"
	
	local _condition_1 = LuaBehav_ConfigTask.New()
	_condition_1.nodeType = LuaBehav_ConfigTaskNodeType.Condition
	_condition_1.conditionType = LuaBehav_ConfigConditionType.MonsHasTarget
	_condition_1.compareType = LuaBehav_ConfigCompareType.True
	_condition_1.compareValue = 1
	
	local _condition_2 = LuaBehav_ConfigTask.New()
	_condition_2.nodeType = LuaBehav_ConfigTaskNodeType.Condition
	_condition_2.conditionType = LuaBehav_ConfigConditionType.MonsInBand
	_condition_2.compareType = LuaBehav_ConfigCompareType.False
	_condition_2.compareValue = 1
	
	local _condition_3 = LuaBehav_ConfigTask.New()
	_condition_3.nodeType = LuaBehav_ConfigTaskNodeType.Condition
	_condition_3.conditionType = LuaBehav_ConfigConditionType.MonsInCastingSkill
	_condition_3.compareType = LuaBehav_ConfigCompareType.False
	_condition_3.compareValue = 1
	
	local _condition_4 = LuaBehav_ConfigTask.New()
	_condition_4.nodeType = LuaBehav_ConfigTaskNodeType.Condition
	_condition_4.conditionType = LuaBehav_ConfigConditionType.CurTargetInAtkAngle
	_condition_4.compareType = LuaBehav_ConfigCompareType.True
	_condition_4.compareValue = 1
	
	local _monsDisCon_1 = LuaBehav_ConfigTask.New()
	_monsDisCon_1.nodeType = LuaBehav_ConfigTaskNodeType.MonsDisCondition
	_monsDisCon_1.conditionType = LuaBehav_ConfigMonsDisConditionType.CurTargetInAtkDis
	_monsDisCon_1.ratio = 1
	_monsDisCon_1.compareType = true
	
	local _monsDisCon_2 = LuaBehav_ConfigTask.New()
	_monsDisCon_2.nodeType = LuaBehav_ConfigTaskNodeType.MonsDisCondition
	_monsDisCon_2.conditionType = LuaBehav_ConfigMonsDisConditionType.CurTargetInChaseDis
	_monsDisCon_2.ratio = 1
	_monsDisCon_2.compareType = true
	
	local _monsDisCon_3 = LuaBehav_ConfigTask.New()
	_monsDisCon_3.nodeType = LuaBehav_ConfigTaskNodeType.MonsDisCondition
	_monsDisCon_3.conditionType = LuaBehav_ConfigMonsDisConditionType.CurTargetInEscapeDis
	_monsDisCon_3.ratio = 1
	_monsDisCon_3.compareType = true
	
	local _event_1 = LuaBehav_ConfigTask.New()
	_event_1.nodeType = LuaBehav_ConfigTaskNodeType.Event
	_event_1.eventType = LuaBehav_ConfigEventTaskType.SpecificMonsOnHurt
	_event_1.paramValue = nil
	
	local _randomTask = LuaBehav_ConfigTask.New()
	_randomTask.nodeType = LuaBehav_ConfigTaskNodeType.RandomInt
	_randomTask.min = 1
	_randomTask.max = 10
	_randomTask.scale = 1
	_randomTask.saveId = 50
	
	local _checkVariable = LuaBehav_ConfigTask.New()
	_checkVariable.nodeType = LuaBehav_ConfigTaskNodeType.CheckVariable
	_checkVariable.id = 50
	_checkVariable.compareType = LuaBehav_Define_CompareType.Larger
	_checkVariable.compareValue = 5
	
	local _propCondition = LuaBehav_ConfigTask.New()
	_propCondition.nodeType = LuaBehav_ConfigTaskNodeType.MonsPropCondition
	_propCondition.propKey = 101
	_propCondition.valueDescType = LuaBehav_ConfigValueDesType.SpecificValue
	_propCondition.compareType = LuaBehav_ConfigCompareType.Larger
	_propCondition.compareValue = 1
	
	local _logTask_2 = LuaBehav_ConfigTask.New()
	_logTask_2.nodeType = LuaBehav_ConfigTaskNodeType.PrintLog
	_logTask_2.log = ">>>>>>>>>>>> test behavTree end <<<<<<<<<<"
	
	local _sequenceTask_1 = LuaBehav_ConfigTask.New()
	_sequenceTask_1.nodeType = LuaBehav_ConfigTaskNodeType.Sequence
	table.insert(_sequenceTask_1.children, _logTask_1)
	table.insert(_sequenceTask_1.children, _condition_1)
	table.insert(_sequenceTask_1.children, _condition_2)
	table.insert(_sequenceTask_1.children, _condition_3)
	table.insert(_sequenceTask_1.children, _condition_4)
	table.insert(_sequenceTask_1.children, _monsDisCon_1)
	table.insert(_sequenceTask_1.children, _monsDisCon_2)
	table.insert(_sequenceTask_1.children, _monsDisCon_3)
	table.insert(_sequenceTask_1.children, _randomTask)
	table.insert(_sequenceTask_1.children, _checkVariable)
	table.insert(_sequenceTask_1.children, _logTask_2)
	--------------------------------------------------------------------------------------------------------------------
	local _rootTask = LuaBehav_ConfigTask.New()
	_rootTask.nodeType = LuaBehav_ConfigTaskNodeType.Root
	table.insert(_rootTask.children, _sequenceTask_1)


	_configTree.rootTask = _rootTask

	return _configTree
end