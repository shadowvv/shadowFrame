---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by hejincheng.
--- DateTime: 2022/7/9 15:04
---

require "Battle/Logic/Room/DataCollect/DeathCollectData"
require "Battle/Logic/Room/DataCollect/SkillCollectData"
require "Battle/Logic/Room/DataCollect/ElementCollectData"
require "Battle/Logic/Room/DataCollect/ElementEffectData"

---@class DataCollectManager : table
DataCollectManager = class(nil, "DataCollectManager")

function DataCollectManager:ctor(_battleId)
    self.battleId = _battleId
    self.battleRoom = GetBattleRoom(self.battleId)
end

function DataCollectManager:Init()
    ---@type table<string,number> 玩家id,受伤值
    self.beDamageValueDic = {}
    ---@type table<string,number> 玩家id，受伤次数
    self.beDamageCountDic = {}
    ---@type table<string,number> 玩家id,伤害值
    self.damageValueDic = {}
    ---@type table<string,number> 玩家id，伤害次数
    self.damageCountDic = {}
    ---@type table<string,DeathCollectData[]> 阵营死亡
    self.campDeadDic = {}
    ---@type table<string,DeathCollectData[]> 击杀数据
    self.playerKillCollectDataDic = {}
    ---@type table<string, number> 击杀怪物总血量
    self.playerKillMonsterTotalHpDic = {}

    --技能相关------------------------------------------------------------------------------------
    ---@type table<string,SkillCollectData[]> 技能数据
    self.skillCollectDataDic = {}
    ---@type table<string,table<string,table<string,number>>> 技能id使用次数 uid-skillId-actionStateId
    self.playerSkillIdCountDic = {}
    ---@type table<string,table<string,table<string,number>>> 技能类型使用次数 uid-skillType-actionStateId
    self.playerSkillTypeCountDic = {}
    ---@type table<string,table<string,table<string,number>>> 技能id击中次数 uid-skillId-actionStateId
    self.playerSkillIdHitCountDic = {}
    ---@type table<string,table<string,table<string,number>>> 技能类型击中次数 uid-skillType-actionStateId
    self.playerSkillTypeHitCountDic = {}

    --Buff相关------------------------------------------------------------------------------------
    ---@type table<string,table<string,number>> 玩家释放附着buff的次数
    self.playerBuffAttachIdCountDic = {}
    ---@type table<string,number> 玩家释放附着buff的次数
    self.playerBuffAttachCount = {}

    --元素相关------------------------------------------------------------------------------------
    ---@type table<string,ElementCollectData[]> 元素反应数据
    self.elementCollectDataDic = {}
    ---@type table<string,ElementEffectData[]> 元素效果数据
    self.elementEffectDataDic = {}
    ---@type table<string,table<string,number>> 元素反应触发次数
    self.playerElementIdCountDic = {}
    ---@type table<string,table<string,number>> 元素效果触发次数
    self.playerElementEffectIdCountDic = {}
    ---@type table<string,number> 元素效果触发次数
    self.playerElementEffectCountDic = {}
    ---@type table<string,number> 元素闪电链触发次数
    self.playerElementLightningBallCountDic = {}
    ---@type table<string,table<string,number>> 延长元素效果累计时间
    self.playerElementAddEffectingTimeDic = {}

    ---@type table<string,table<string,number>> 玩家id，武将id，剩余血量百分比
    self.leaderHpPercentDic = {}
    ---@type table<string,number[]> 玩家id，武将id[]
    self.deadLeaderIdDic = {}
    ---@type table<string,table<string,number>> 玩家id，物件id，采集次数
    self.collectSceneObjectIdDic = {}
    ---@type number
    self.enterKeyAreaKeyMonsterNum = 0
    ---@type number
    self.keyUnitDeadNum = 0
    ---@type number
    self.bossUnitDeadNum = 0
    ---@type number
    self.protectTargetUnitDeadNum = 0
    ---@type number
    self.minTargetHp = -1
    ---@type number
    self.minLeaderHp = -1
end

---@private
function DataCollectManager:__DataLog()
    if CheckLogLevel(LogLevel.log) then
        LogTools.Info("DataCollectManager", "beDamageValueDic", dumpTableEx(self.beDamageValueDic))
        LogTools.Info("DataCollectManager", "beDamageCountDic", dumpTableEx(self.beDamageCountDic))
        LogTools.Info("DataCollectManager", "damageValueDic", dumpTableEx(self.damageValueDic))
        LogTools.Info("DataCollectManager", "damageCountDic", dumpTableEx(self.damageCountDic))
        LogTools.Info("DataCollectManager", "playerKillCollectDataDic", dumpTableEx(self.playerKillCollectDataDic))
        LogTools.Info("DataCollectManager", "playerKillMonsterTotalHpDic", dumpTableEx(self.playerKillMonsterTotalHpDic))
        LogTools.Info("DataCollectManager", "skillCollectDataDic", dumpTableEx(self.skillCollectDataDic))
        LogTools.Info("DataCollectManager", "playerSkillIdCountDic", dumpTableEx(self.playerSkillIdCountDic))
        LogTools.Info("DataCollectManager", "playerSkillTypeCountDic", dumpTableEx(self.playerSkillTypeCountDic))
        LogTools.Info("DataCollectManager", "elementCollectDataDic", dumpTableEx(self.elementCollectDataDic))
        LogTools.Info("DataCollectManager", "elementCollectEffectDic", dumpTableEx(self.elementEffectDataDic))
        LogTools.Info("DataCollectManager", "playerElementEffectIdCountDic", dumpTableEx(self.playerElementEffectIdCountDic))
        LogTools.Info("DataCollectManager", "playerElementEffectCountDic", dumpTableEx(self.playerElementEffectCountDic))
        LogTools.Info("DataCollectManager", "playerElementLightningBallCountDic", dumpTableEx(self.playerElementLightningBallCountDic))
        LogTools.Info("DataCollectManager", "playerElementAddEffectingTimeDic", dumpTableEx(self.playerElementAddEffectingTimeDic))
        LogTools.Info("DataCollectManager", "playerBuffAttachIdCountDic", dumpTableEx(self.playerBuffAttachIdCountDic))
        LogTools.Info("DataCollectManager", "playerBuffAttachCount", dumpTableEx(self.playerBuffAttachCount))
        LogTools.Info("DataCollectManager", "leaderHpPercentDic", dumpTableEx(self.leaderHpPercentDic))
        LogTools.Info("DataCollectManager", "deadLeaderIdDic", dumpTableEx(self.deadLeaderIdDic))
        LogTools.Info("DataCollectManager", "campDeadDic", dumpTableEx(self.campDeadDic))
        LogTools.Info("DataCollectManager", "collectSceneObjectIdDic", dumpTableEx(self.collectSceneObjectIdDic))
        LogTools.Info("DataCollectManager", "keyUnitDeadNum", self.keyUnitDeadNum)
        LogTools.Info("DataCollectManager", "bossUnitDeadNum", self.bossUnitDeadNum)
        LogTools.Info("DataCollectManager", "protectTargetUnitDeadNum", self.protectTargetUnitDeadNum)
    end
end

------------------------------------------------------------------------------------------------------------------------
---@public
---物件交互
function DataCollectManager:OnBattleCollectSuccess(_targetNetId, _targetObjId, _fromNetId, _fromObjectId)
    ---@type BattleObjectBase
    local _battleObject = self.battleRoom.battleObjectManager:GetObject(_targetObjId)
    if not _battleObject then
        return
    end
    ---@type Gadget
    local _gadget = _battleObject:GetDataInstanceXls()
    if not _gadget then
        return
    end
    ---@type BattleUnitBase
    local _unit = self.battleRoom.battleUnitManager:GetUnit(_fromNetId, true)
    if _unit:CheckUnitType(BattleUnitType.Player, true) then
        local _uid = _unit:GetPlayerId()
        local _sceneObjectIdDic = self.collectSceneObjectIdDic[tostring(_uid)]
        if not _sceneObjectIdDic then
            self.collectSceneObjectIdDic[tostring(_uid)] = {}
            _sceneObjectIdDic = self.collectSceneObjectIdDic[tostring(_uid)]
        end
        local count = _sceneObjectIdDic[tostring(_gadget.id)]
        if not count then
            count = 0
        end
        count = count + 1
        _sceneObjectIdDic[tostring(_gadget.id)] = count
    end
end

---@public
---@param _levelUnitId number 单位id
---@param _enterNetId number 单位id
---单位进入单位
function DataCollectManager:OnLevelUnitEnterLevelUnit(_levelUnitId, _enterNetId)
    local _levelUnitManager = self.battleRoom.battleLevelManager.levelUnitManager
    local _levelUnit = _levelUnitManager:GetLevelUnit(_levelUnitId)
    if not _levelUnit or _levelUnit.type ~= LevelUnitTypeEnum.TRIGGER or not _levelUnit.keyUnit then
        -- 非关键区域
        return
    end
    local _unit = self.battleRoom.battleUnitManager:GetUnit(_enterNetId)
    if _unit and _unit:GetUnitType() == BattleUnitType.Monster then
        local _monsterLevelUnitId = _unit:GetLevelUnitId()
        local _monsterLevelUnit = _levelUnitManager:GetLevelUnit(_monsterLevelUnitId)
        if _monsterLevelUnit and _monsterLevelUnit.keyUnit then
            -- 关键怪物id
            self.enterKeyAreaKeyMonsterNum = self.enterKeyAreaKeyMonsterNum + 1
        end
    end
end

---@public
---触发伤害
function DataCollectManager:OnBattleOver(_overResult, _overCondition)
    for _, _originPlayerInfo in pairs(self.battleRoom.battleUnitManager:GetOriginalPlayerInfoManager():GetAllPlayer()) do
        ---@type BattleUnit_Player
        local _unitPlayer = self.battleRoom.battleUnitManager:GetUnitByPlayerId(_originPlayerInfo:GetPlayerId())
        if _unitPlayer then

            local leaderHpPercent = {}
            local deadLeaders = {}

            for _, _leaderObject in pairs(_unitPlayer:GetAllObjectDic()) do
                ---@type BattleObjCom_Property
                local _leaderComProp = _leaderObject:GetComponent(BattleObjectComponentType.Property)
                local _percent = _leaderComProp:GetPropertyPercentByName(BattlePropertyEnum.Hp_Cur)

                -- 武将剩余血量
                leaderHpPercent[tostring(_leaderObject:GetDicId())] = _percent * 100
                if _leaderObject:CheckDead() then
                    -- 死亡列表
                    table.insert(deadLeaders, _leaderObject:GetDicId())
                end
            end

            self.leaderHpPercentDic[tostring(_unitPlayer:GetPlayerId())] = leaderHpPercent
            self.deadLeaderIdDic[tostring(_unitPlayer:GetPlayerId())] = deadLeaders
        end
    end

    self:__DataLog()
end

---@public
---触发伤害
function DataCollectManager:OnDamage(_targetNetId, _sourceNetId, _damage, _damageSourceId, _damageSourceType, _isCritical, _elementId, _targetOldHp, _targetCurHp)
    ---@type BattleUnit_Player
    local _targetUnit = self.battleRoom.battleUnitManager:GetUnit(_targetNetId)
    if _targetUnit then
        ---@type number 剩余血量百分比
        local _remainHpPercent = 0

        ---@type BattleObjCom_Property
        local _comProp = _targetUnit:GetCurrentHeroObject():GetComponent(BattleObjectComponentType.Property)
        if _comProp then
            _remainHpPercent = _comProp:GetPropertyPercentByName(BattlePropertyEnum.Hp_Cur) * 100
        end

        if _targetUnit:GetUnitType() == BattleUnitType.Player then
            ---@type number 受伤值
            local curDamage = self.beDamageValueDic[tostring(_targetUnit:GetPlayerId())]
            if not curDamage then
                curDamage = 0
            end
            curDamage = curDamage + _damage
            self.beDamageValueDic[tostring(_targetUnit:GetPlayerId())] = curDamage

            ---@type number 受伤次数
            local curDamageCount = self.beDamageCountDic[tostring(_targetUnit:GetPlayerId())]
            if not curDamageCount then
                curDamageCount = 0
            end
            curDamageCount = curDamageCount + 1
            self.beDamageCountDic[tostring(_targetUnit:GetPlayerId())] = curDamageCount

            ---任意最低leader血量
            if self.minLeaderHp > 0 then
                self.minLeaderHp = Mathf.Min(_remainHpPercent, self.minLeaderHp)
            else
                self.minLeaderHp = _remainHpPercent
            end
        else
            local _levelUnit = self.battleRoom.battleLevelManager.levelUnitManager:GetLevelUnit(_targetUnit:GetLevelUnitId())
            if _levelUnit and _levelUnit.target then
                ---任意最低守护目标血量
                if self.minTargetHp > 0 then
                    self.minTargetHp = Mathf.Min(_remainHpPercent, self.minTargetHp)
                else
                    self.minTargetHp = _remainHpPercent
                end
            end
        end
    end

    ---@type BattleUnit_Player
    local _sourceUnit = self.battleRoom.battleUnitManager:GetUnit(_sourceNetId)
    if _sourceUnit and _sourceUnit:CheckUnitType(BattleUnitType.Player, true) then
        ---@type number 伤害值
        local curDamage = self.damageValueDic[tostring(_sourceUnit:GetPlayerId())]
        if not curDamage then
            curDamage = 0
        end
        curDamage = curDamage + _damage
        self.damageValueDic[tostring(_sourceUnit:GetPlayerId())] = curDamage

        ---@type number 伤害次数
        local curDamageCount = self.damageCountDic[tostring(_sourceUnit:GetPlayerId())]
        if not curDamageCount then
            curDamageCount = 0
        end
        curDamageCount = curDamageCount + 1
        self.damageCountDic[tostring(_sourceUnit:GetPlayerId())] = curDamageCount
    end
end

---@public
---触发元素反应
function DataCollectManager:OnElementReact(_sourceNetId, _targetNetId, _elementReactId)
    ---@type BattleUnit_Player
    local _sourceUnit = self.battleRoom.battleUnitManager:GetUnit(_sourceNetId)
    if not _sourceUnit or not _sourceUnit:CheckUnitType(BattleUnitType.Player, true) then
        -- 仅收集玩家触发元素反应数据
        return
    end
    ---@type BattleUnit_Player
    local _targetUnit = self.battleRoom.battleUnitManager:GetUnit(_sourceNetId)
    if not _targetUnit then
        -- 死者找不到了
        return
    end

    -- 元素反应数据统计
    ---@type ElementCollectData[]
    local _elementCollectDataArr = self.elementCollectDataDic[tostring(_sourceUnit:GetPlayerId())]
    if not _elementCollectDataArr then
        self.elementCollectDataDic[tostring(_sourceUnit:GetPlayerId())] = {}
        _elementCollectDataArr = self.elementCollectDataDic[tostring(_sourceUnit:GetPlayerId())]
    end

    local _sourceDictId = _sourceUnit:GetCurrentHeroObject():GetDicId()
    local _sourceUnitType = _sourceUnit:GetUnitType()
    local _targetDictId = _targetUnit:GetCurrentHeroObject():GetDicId()
    local _targetUnitType = _targetUnit:GetUnitType()

    local _elementReactCollectData = ElementCollectData.New(_sourceUnit:GetPlayerId(), _elementReactId, _sourceDictId, _sourceUnitType, _targetDictId, _targetUnitType)
    table.insert(_elementCollectDataArr, _elementReactCollectData)

    -- 元素反应触发次数统计
    local _elementIdCountDic = self.playerElementIdCountDic[tostring(_sourceUnit:GetPlayerId())]
    if not _elementIdCountDic then
        self.playerElementIdCountDic[tostring(_sourceUnit:GetPlayerId())] = {}
        _elementIdCountDic = self.playerElementIdCountDic[tostring(_sourceUnit:GetPlayerId())]
    end
    local _elementCount = _elementIdCountDic[tostring(_elementReactId)]
    if not _elementCount then
        _elementCount = 0
    end
    _elementCount = _elementCount + 1
    _elementIdCountDic[tostring(_elementReactId)] = _elementCount
end

---@public
---触发元素延长时间
function DataCollectManager:OnChangeElementEffectingTime(_netId, _elementId, _changeTime)
    ---@type BattleUnit_Player
    local _unit = self.battleRoom.battleUnitManager:GetUnit(_netId, true)
    if not _unit or not _unit:CheckUnitType(BattleUnitType.Player, true) then
        -- 仅收集玩家数据
        return
    end

    if _changeTime > 0 then
        local _uidKey = tostring(_unit:GetPlayerId())
        local _elementAddEffectingTimeDic = self.playerElementAddEffectingTimeDic[_uidKey]
        if not _elementAddEffectingTimeDic then
            self.playerElementAddEffectingTimeDic[_uidKey] = {}
            _elementAddEffectingTimeDic = self.playerElementAddEffectingTimeDic[_uidKey]
        end
        local _time = _elementAddEffectingTimeDic[tostring(_elementId)]
        if not _time then
            _time = 0
        end
        _time = _time + _changeTime
        _elementAddEffectingTimeDic[tostring(_elementId)] = _time
    end
end

---@public
---触发元素反应
function DataCollectManager:OnElementEffect(_sourceNetId, _targetNetId, _elementId)
    ---@type BattleUnit_Player
    local _sourceUnit = self.battleRoom.battleUnitManager:GetUnit(_sourceNetId, true)
    if not _sourceUnit or not _sourceUnit:CheckUnitType(BattleUnitType.Player, true) then
        -- 仅收集玩家触发元素效果数据
        return
    end
    ---@type BattleUnit_Player
    local _targetUnit = self.battleRoom.battleUnitManager:GetUnit(_sourceNetId)
    if not _targetUnit then
        -- 死者找不到了
        return
    end

    -- 元素效果数据统计
    ---@type ElementEffectData[]
    local _elementEffectDataArr = self.elementEffectDataDic[tostring(_sourceUnit:GetPlayerId())]
    if not _elementEffectDataArr then
        self.elementEffectDataDic[tostring(_sourceUnit:GetPlayerId())] = {}
        _elementEffectDataArr = self.elementEffectDataDic[tostring(_sourceUnit:GetPlayerId())]
    end

    local _sourceDictId = _sourceUnit:GetCurrentHeroObject():GetDicId()
    local _sourceUnitType = _sourceUnit:GetUnitType()
    local _targetDictId = _targetUnit:GetCurrentHeroObject():GetDicId()
    local _targetUnitType = _targetUnit:GetUnitType()

    local _elementEffectCollectData = ElementEffectData.New(_sourceUnit:GetPlayerId(), _elementId, _sourceDictId, _sourceUnitType, _targetDictId, _targetUnitType)
    table.insert(_elementEffectDataArr, _elementEffectCollectData)

    local _sourceUid = _sourceUnit:GetPlayerId()
    -- 元素效果触发次数统计
    local _elementIdCountDic = self.playerElementIdCountDic[tostring(_sourceUid)]
    if not _elementIdCountDic then
        self.playerElementIdCountDic[tostring(_sourceUnit:GetPlayerId())] = {}
        _elementIdCountDic = self.playerElementIdCountDic[tostring(_sourceUid)]
    end
    local _elementCount = _elementIdCountDic[tostring(_elementId)]
    if not _elementCount then
        _elementCount = 0
    end
    _elementCount = _elementCount + 1
    _elementIdCountDic[tostring(_elementId)] = _elementCount

    -- 总计数
    local _allCount = self.playerElementEffectCountDic[tostring(_sourceUid)]
    if not _allCount then
        _allCount = 0
    end
    _allCount = _allCount + 1
    self.playerElementEffectCountDic[tostring(_sourceUid)] = _allCount
end

---@public
---触发死亡
function DataCollectManager:OnKeyUnitDead(_levelUnitId)
    self.keyUnitDeadNum = self.keyUnitDeadNum + 1
end

---@public
---触发死亡
function DataCollectManager:OnBossUnitDead(_levelUnitId)
    self.bossUnitDeadNum = self.bossUnitDeadNum + 1
end

---@public
---触发死亡
function DataCollectManager:OnProtectTargetUnitDead(_levelUnitId)
    self.protectTargetUnitDeadNum = self.protectTargetUnitDeadNum + 1
end

---@public
---@param _sourceNetId number
---@param _targetNetId number
---@param _buffGroupId number
---触发buff附着
function DataCollectManager:OnBuffAttach(_sourceNetId, _targetNetId, _buffGroupId)
    if _sourceNetId and _targetNetId then
        ---@type BattleUnit_Player
        local _unit = self.battleRoom.battleUnitManager:GetUnit(_sourceNetId, true)
        if _unit and _unit:CheckUnitType(BattleUnitType.Player, true) then
            local _uid = _unit:GetPlayerId()
            -- 记录玩家上的buff
            local _buffAttachIdCountDic = self.playerBuffAttachIdCountDic[tostring(_uid)]
            if not _buffAttachIdCountDic then
                self.playerBuffAttachIdCountDic[tostring(_uid)] = {}
                _buffAttachIdCountDic = self.playerBuffAttachIdCountDic[tostring(_uid)]
            end
            -- 分id计数
            local _count = _buffAttachIdCountDic[tostring(_buffGroupId)]
            if not _count then
                _count = 0
            end
            _count = _count + 1
            _buffAttachIdCountDic[tostring(_buffGroupId)] = _count
            -- 总计数
            local _allCount = self.playerBuffAttachCount[tostring(_sourceNetId)]
            if not _allCount then
                _allCount = 0
            end
            _allCount = _allCount + 1
            self.playerBuffAttachCount[tostring(_sourceNetId)] = _allCount
        end
    end
end

---@public
---触发死亡
function DataCollectManager:OnObjectDead(_killerNetId, _targetNetId)
    if _killerNetId == nil then
        -- 不是被击杀的
        return
    end
    local _deadUnit = self.battleRoom.battleUnitManager:GetUnit(_targetNetId, true)
    if not _deadUnit then
        -- 死者找不到了
        return
    end
    ---@type BattleUnitBase
    local _unitKiller = self.battleRoom.battleUnitManager:GetUnit(_killerNetId, true)

    local _deadDictId = _deadUnit:GetCurrentHeroObject():GetDicId()
    local _killerDictId = 0
    local _killerPlayerId = 0
    local _killerUnitType = BattleUnitType.Player
    if _unitKiller then
        _killerDictId = _unitKiller:GetCurrentHeroObject():GetDicId()
        _killerPlayerId = _unitKiller:GetPlayerId()
        _killerUnitType = _unitKiller:GetUnitType()
    end

    if _unitKiller and _unitKiller:CheckUnitType(BattleUnitType.Player, true) then
        -- 仅收集玩家杀怪数据
        ---@type DeathCollectData[]
        local _playerKillCollectDataArr = self.playerKillCollectDataDic[tostring(_killerPlayerId)]
        if not _playerKillCollectDataArr then
            self.playerKillCollectDataDic[tostring(_killerPlayerId)] = {}
            _playerKillCollectDataArr = self.playerKillCollectDataDic[tostring(_killerPlayerId)]
        end

        local _deathCollectData = DeathCollectData.New(_killerPlayerId, _deadUnit:GetNetId(), _deadDictId, _deadUnit:GetUnitType(), _killerDictId, _killerUnitType)
        table.insert(_playerKillCollectDataArr, _deathCollectData)

        -- 记录玩家杀怪总血量
        if _deadUnit:CheckUnitType(BattleUnitType.Monster) then
            ---@type number
            local _playerKillMonsterTotalHp = self.playerKillMonsterTotalHpDic[tostring(_killerPlayerId)]
            if not _playerKillMonsterTotalHp then
                _playerKillMonsterTotalHp = 0
            end
            ---@type BattleObjCom_Property
            local _deadComProp = _deadUnit:GetCurrentHeroObject():GetComponent(BattleObjectComponentType.Property)
            if _deadComProp then
                local _maxHp = _deadComProp:GetPropertyByName(BattlePropertyEnum.Hp_Max)
                _playerKillMonsterTotalHp = _playerKillMonsterTotalHp + _maxHp
                self.playerKillMonsterTotalHpDic[tostring(_killerPlayerId)] = _playerKillMonsterTotalHp
            end
        end
    end

    ---@type BattleUnitCom_Camp
    local comCamp = _deadUnit:GetComponent(BattleUnitComponentType.Camp)
    if comCamp and comCamp:GetFirstCamp() then
        -- 统计每个阵营的死亡数据
        local _camp = comCamp:GetFirstCamp()
        local _campCount = self.campDeadDic[tostring(_camp)]
        if not _campCount then
            _campCount = {}
            self.campDeadDic[tostring(_camp)] = _campCount
        end
        local _deathCollectData = DeathCollectData.New(_killerPlayerId, _deadUnit:GetNetId(), _deadDictId, _deadUnit:GetUnitType(), _killerDictId, _killerUnitType)
        table.insert(_campCount, _deathCollectData)
    end

end

---@public
---@param _netId number
---@param _skillId number
---触发使用技能
function DataCollectManager:OnSkillStart(_netId, _skillId)
    ---@type BattleUnit_Player
    local _unit = self.battleRoom.battleUnitManager:GetUnit(_netId, true)
    if not _unit or not _unit:CheckUnitType(BattleUnitType.Player, true) then
        -- 仅收集玩家释放技能数据
        return
    end

    local _uid = _unit:GetPlayerId()
    local _uidKey = tostring(_uid)
    -- 技能统计数据
    ---@type SkillCollectData[]
    local _skillCollectDataArr = self.skillCollectDataDic[_uidKey]
    if not _skillCollectDataArr then
        self.skillCollectDataDic[_uidKey] = {}
        _skillCollectDataArr = self.skillCollectDataDic[_uidKey]
    end

    local _dictId = _unit:GetCurrentHeroObject():GetDicId()
    local _skillCollectData = SkillCollectData.New(_uid, _dictId, _unit:GetUnitType(), _skillId)
    table.insert(_skillCollectDataArr, _skillCollectData)
    -- 技能计数收集
    self:__SkillCountCollect(_unit, _skillId, self.playerSkillIdCountDic, self.playerSkillTypeCountDic)
end

---@public
---@param _netId number
---@param _skillId number
---触发使用技能
function DataCollectManager:OnBarrageHitTarget(_netId, _skillId)
    ---@type BattleUnit_Player
    local _unit = self.battleRoom.battleUnitManager:GetUnit(_netId, true)
    if not _unit or not _unit:CheckUnitType(BattleUnitType.Player, true) then
        -- 仅收集玩家释放技能数据
        return
    end
    -- 技能计数收集
    self:__SkillCountCollect(_unit, _skillId, self.playerSkillIdHitCountDic, self.playerSkillTypeHitCountDic)
end

---@public
---@param _unitPlayer BattleUnit_Player
---@param _skillId number
---@param _playerSkillIdCountDic table<string,table<string,table<string,number>>> 技能id使用次数 uid-skillId-actionStateId
---@param _playerSkillTypeCountDic table<string,table<string,table<string,number>>> 技能类型使用次数 uid-skillType-actionStateId
---触发使用技能
function DataCollectManager:__SkillCountCollect(_unitPlayer, _skillId, _playerSkillIdCountDic, _playerSkillTypeCountDic)
    local _uid = _unitPlayer:GetPlayerId()
    local _uidKey = tostring(_uid)

    -- 当前状态
    local _currentStates = _unitPlayer:GetActionManager().currentStates
    if not _currentStates or not next(_currentStates) then
        return
    end

    ---@type table<string,number>
    local _skillStateCountDic
    ---@type table<string,number>
    local _skillTypeStateCountDic
    -- 技能id使用次数统计
    local _skillIdActionStateCountDic = _playerSkillIdCountDic[_uidKey]
    if not _skillIdActionStateCountDic then
        _playerSkillIdCountDic[_uidKey] = {}
        _skillIdActionStateCountDic = _playerSkillIdCountDic[_uidKey]
    end
    local _skillIdKey = tostring(_skillId)
    _skillStateCountDic = _skillIdActionStateCountDic[_skillIdKey]
    if not _skillStateCountDic then
        _skillIdActionStateCountDic[_skillIdKey] = {}
        _skillStateCountDic = _skillIdActionStateCountDic[_skillIdKey]
    end

    ---@type Skill
    local _skill = self.battleRoom.inputDataSource:GetDict("Skill", _skillId)
    if _skill then
        local _skillType = _skill.skillType
        -- 技能类型使用次数统计
        local _skillTypeActionStateCountDic = _playerSkillTypeCountDic[_uidKey]
        if not _skillTypeActionStateCountDic then
            _playerSkillTypeCountDic[_uidKey] = {}
            _skillTypeActionStateCountDic = _playerSkillTypeCountDic[_uidKey]
        end
        local _skillTypeKey = tostring(_skillType)
        _skillTypeStateCountDic = _skillTypeActionStateCountDic[_skillTypeKey]
        if not _skillTypeStateCountDic then
            _skillTypeActionStateCountDic[_skillTypeKey] = {}
            _skillTypeStateCountDic = _skillTypeActionStateCountDic[_skillTypeKey]
        end
    end

    for _, _state in pairs(_currentStates) do
        local _stateKey = tostring(_state:GetId())
        -- 按技能id
        if _skillStateCountDic then
            local _skillIdCount = _skillStateCountDic[_stateKey]
            if not _skillIdCount then
                _skillIdCount = 0
            end
            _skillIdCount = _skillIdCount + 1
            _skillStateCountDic[_stateKey] = _skillIdCount
        end
        -- 按技能类型
        if _skillTypeStateCountDic then
            local _skillTypeCount = _skillTypeStateCountDic[_stateKey]
            if not _skillTypeCount then
                _skillTypeCount = 0
            end
            _skillTypeCount = _skillTypeCount + 1
            _skillTypeStateCountDic[_stateKey] = _skillTypeCount
        end
    end
end

---@public
---@param _netId number
---@param _objId number
---触发使用技能
function DataCollectManager:OnTriggerElementLightningBall(_netId, _objId)
    ---@type BattleUnit_Player
    local _unit = self.battleRoom.battleUnitManager:GetUnit(_netId, true)
    if not _unit or not _unit:CheckUnitType(BattleUnitType.Player, true) then
        -- 仅收集玩家创建的闪电链数据
        return
    end
    local _uid = _unit:GetPlayerId()
    local _count = self.playerElementLightningBallCountDic[tostring(_uid)]
    if not _count then
        _count = 0
    end
    _count = _count + 1
    self.playerElementLightningBallCountDic[tostring(_uid)] = _count
end

------------------------------------------------------------------------------------------------------------------------