local default = {id=0,rangeDecay=xlsNilTable,impulsePrefab=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class CameraShake_Xls : table 
CameraShake_Xls =
{
    ["101"]=setmetatable({id=101,rangeDecay={[1]=80,[2]=120},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_03",[2]="IMP_Camera_Battle_Passive_Shock_Small_02"}},mt),
    ["102"]=setmetatable({id=102,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_07",[2]="IMP_Camera_Battle_Passive_Shock_Small_06",[3]="IMP_Camera_Battle_Passive_Shock_Small_05"}},mt),
    ["103"]=setmetatable({id=103,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_06",[2]="IMP_Camera_Battle_Passive_Shock_Small_06",[3]="IMP_Camera_Battle_Passive_Shock_Small_06"}},mt),
    ["104"]=setmetatable({id=104,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_08",[2]="IMP_Camera_Battle_Passive_Shock_Small_06",[3]="IMP_Camera_Battle_Passive_Shock_Small_06"}},mt),
    ["105"]=setmetatable({id=105,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_09",[2]="IMP_Camera_Battle_Passive_Shock_Small_07",[3]="IMP_Camera_Battle_Passive_Shock_Small_06"}},mt),
    ["199"]=setmetatable({id=199,rangeDecay={[1]=10},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_05"}},mt),
    ["201"]=setmetatable({id=201,rangeDecay={[1]=80,[2]=120},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_05",[2]="IMP_Camera_Battle_Passive_Shock_Small_03"}},mt),
    ["202"]=setmetatable({id=202,rangeDecay={[1]=20,[2]=80,[3]=120},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_Big_03",[2]="IMP_Camera_Battle_Passive_Shock_Small_09",[3]="IMP_Camera_Battle_Passive_Shock_Small_08"}},mt),
    ["203"]=setmetatable({id=203,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_battle_Passive_Shock_Bullet_03",[2]="IMP_Camera_battle_Passive_Shock_Bullet_03",[3]="IMP_Camera_Battle_Passive_Shock_Small_06"}},mt),
    ["204"]=setmetatable({id=204,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_battle_Passive_Shock_Bullet_03",[2]="IMP_Camera_battle_Passive_Shock_Bullet_03",[3]="IMP_Camera_Battle_Passive_Shock_Small_06"}},mt),
    ["205"]=setmetatable({id=205,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_battle_Passive_Shock_Bullet_03",[2]="IMP_Camera_battle_Passive_Shock_Bullet_03",[3]="IMP_Camera_Battle_Passive_Shock_Small_06"}},mt),
    ["206"]=setmetatable({id=206,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_Big_02",[2]="IMP_Camera_Battle_Passive_Shock_Small_12",[3]="IMP_Camera_Battle_Passive_Shock_Small_08"}},mt),
    ["999999"]=setmetatable({id=999999,rangeDecay={[1]=10,[2]=20,[3]=30,[4]=40,[5]=50,[6]=60,[7]=70,[8]=80,[9]=9999},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_Small_01",[2]="IMP_Camera_battle_Active_Shock_Small_02",[3]="IMP_Camera_battle_Active_Shock_Small_03",[4]="IMP_Camera_battle_Active_Shock_Middle_01",[5]="IMP_Camera_battle_Active_Shock_Middle_02",[6]="IMP_Camera_battle_Active_Shock_Middle_03",[7]="IMP_Camera_battle_Active_Shock_Big_01",[8]="IMP_Camera_battle_Active_Shock_Big_02",[9]="IMP_Camera_battle_Active_Shock_Big_03"}},mt),
    ["106"]=setmetatable({id=106,rangeDecay={[1]=40,[2]=80,[3]=120},impulsePrefab={[1]="IMP_Camera_battle_Passive_Shock_Blast_01",[2]="IMP_Camera_battle_Passive_Shock_Blast_02",[3]="IMP_Camera_battle_Passive_Shock_Blast_03"}},mt),
    ["107"]=setmetatable({id=107,rangeDecay={[1]=80,[2]=120},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_03",[2]="IMP_Camera_Battle_Passive_Shock_Small_02"}},mt),
    ["108"]=setmetatable({id=108,rangeDecay={[1]=80,[2]=120},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_04",[2]="IMP_Camera_Battle_Passive_Shock_Small_02"}},mt),
    ["109"]=setmetatable({id=109,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_battle_Passive_Shock_Bullet_02",[2]="IMP_Camera_Battle_Passive_Shock_Small_04",[3]="IMP_Camera_Battle_Passive_Shock_Small_02"}},mt),
    ["110"]=setmetatable({id=110,rangeDecay={[1]=80,[2]=120},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_04",[2]="IMP_Camera_Battle_Passive_Shock_Small_02"}},mt),
    ["111"]=setmetatable({id=111,rangeDecay={[1]=80,[2]=120},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_04",[2]="IMP_Camera_Battle_Passive_Shock_Small_02"}},mt),
    ["112"]=setmetatable({id=112,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_battle_Passive_Shock_Bullet_02",[2]="IMP_Camera_Battle_Passive_Shock_Small_04",[3]="IMP_Camera_Battle_Passive_Shock_Small_04"}},mt),
    ["113"]=setmetatable({id=113,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_04",[2]="IMP_Camera_Battle_Passive_Shock_Small_04",[3]="IMP_Camera_Battle_Passive_Shock_Small_02"}},mt),
    ["114"]=setmetatable({id=114,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_battle_Passive_Shock_Bullet_02",[2]="IMP_Camera_Battle_Passive_Shock_Small_04",[3]="IMP_Camera_Battle_Passive_Shock_Small_02"}},mt),
    ["115"]=setmetatable({id=115,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_06",[2]="IMP_Camera_Battle_Passive_Shock_Small_04",[3]="IMP_Camera_Battle_Passive_Shock_Small_02"}},mt),
    ["1001"]=setmetatable({id=1001,rangeDecay={[1]=80,[2]=120},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_03",[2]="IMP_Camera_Battle_Passive_Shock_Small_02"}},mt),
    ["1002"]=setmetatable({id=1002,rangeDecay={[1]=80,[2]=120},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_03",[2]="IMP_Camera_Battle_Passive_Shock_Small_02"}},mt),
    ["1003"]=setmetatable({id=1003,rangeDecay={[1]=80,[2]=120},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_05",[2]="IMP_Camera_Battle_Passive_Shock_Small_04"}},mt),
    ["2001"]=setmetatable({id=2001,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_08",[2]="IMP_Camera_Battle_Passive_Shock_Small_07",[3]="IMP_Camera_Battle_Passive_Shock_Small_06"}},mt),
    ["2002"]=setmetatable({id=2002,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_06",[2]="IMP_Camera_Battle_Passive_Shock_Small_06",[3]="IMP_Camera_Battle_Passive_Shock_Small_05"}},mt),
    ["2103"]=setmetatable({id=2103,rangeDecay={[1]=80,[2]=120},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_04",[2]="IMP_Camera_Battle_Passive_Shock_Small_02"}},mt),
    ["2204"]=setmetatable({id=2204,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_battle_Passive_Shock_Bullet_02",[2]="IMP_Camera_Battle_Passive_Shock_Small_06",[3]="IMP_Camera_Battle_Passive_Shock_Small_04"}},mt),
    ["2901"]=setmetatable({id=2901,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_12",[2]="IMP_Camera_Battle_Passive_Shock_Small_12",[3]="IMP_Camera_Battle_Passive_Shock_Small_10"}},mt),
    ["2902"]=setmetatable({id=2902,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_battle_Passive_Shock_Bullet_03",[2]="IMP_Camera_Battle_Passive_Shock_Small_04",[3]="IMP_Camera_Battle_Passive_Shock_Small_02"}},mt),
    ["3001"]=setmetatable({id=3001,rangeDecay={[1]=80,[2]=120},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_04",[2]="IMP_Camera_Battle_Passive_Shock_Small_02"}},mt),
    ["3002"]=setmetatable({id=3002,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_06",[2]="IMP_Camera_Battle_Passive_Shock_Small_04",[3]="IMP_Camera_Battle_Passive_Shock_Small_02"}},mt),
    ["4001"]=setmetatable({id=4001,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_04",[2]="IMP_Camera_Battle_Passive_Shock_Small_04",[3]="IMP_Camera_Battle_Passive_Shock_Small_02"}},mt),
    ["4002"]=setmetatable({id=4002,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_battle_Passive_Shock_Bullet_02",[2]="IMP_Camera_Battle_Passive_Shock_Small_04",[3]="IMP_Camera_Battle_Passive_Shock_Small_02"}},mt),
    ["4003"]=setmetatable({id=4003,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_battle_Passive_Shock_Bullet_03",[2]="IMP_Camera_Battle_Passive_Shock_Small_04",[3]="IMP_Camera_Battle_Passive_Shock_Small_02"}},mt),
    ["5001"]=setmetatable({id=5001,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_09",[2]="IMP_Camera_Battle_Passive_Shock_Small_07",[3]="IMP_Camera_Battle_Passive_Shock_Small_06"}},mt),
    ["5002"]=setmetatable({id=5002,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_08",[2]="IMP_Camera_Battle_Passive_Shock_Small_06",[3]="IMP_Camera_Battle_Passive_Shock_Small_04"}},mt),
    ["5003"]=setmetatable({id=5003,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_battle_Passive_Shock_Bullet_02",[2]="IMP_Camera_Battle_Passive_Shock_Small_07",[3]="IMP_Camera_Battle_Passive_Shock_Small_05"}},mt),
    ["5101"]=setmetatable({id=5101,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_08",[2]="IMP_Camera_Battle_Passive_Shock_Small_06",[3]="IMP_Camera_Battle_Passive_Shock_Small_04"}},mt),
    ["6001"]=setmetatable({id=6001,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_12",[2]="IMP_Camera_Battle_Passive_Shock_Small_10",[3]="IMP_Camera_Battle_Passive_Shock_Small_08"}},mt),
    ["6002"]=setmetatable({id=6002,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_Middle_01",[2]="IMP_Camera_battle_Active_Shock_Middle_01",[3]="IMP_Camera_Battle_Passive_Shock_Small_12"}},mt),
    ["7001"]=setmetatable({id=7001,rangeDecay={[1]=80,[2]=120},impulsePrefab={[1]="IMP_Camera_battle_Passive_Shock_Bullet_02",[2]="IMP_Camera_Battle_Passive_Shock_Small_06",[3]="IMP_Camera_Battle_Passive_Shock_Small_04"}},mt),
    ["8001"]=setmetatable({id=8001,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_08",[2]="IMP_Camera_Battle_Passive_Shock_Small_06",[3]="IMP_Camera_Battle_Passive_Shock_Small_04"}},mt),
    ["9001"]=setmetatable({id=9001,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_08",[2]="IMP_Camera_Battle_Passive_Shock_Small_06",[3]="IMP_Camera_Battle_Passive_Shock_Small_04"}},mt),
    ["10011"]=setmetatable({id=10011,rangeDecay={[1]=10,[2]=40},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_HighFrequency_AR_01",[2]="IMP_Camera_Battle_Passive_Shock_Small_01"}},mt),
    ["10012"]=setmetatable({id=10012,rangeDecay={[1]=10,[2]=40},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_HighFrequency_AR_02",[2]="IMP_Camera_Battle_Passive_Shock_Small_01"}},mt),
    ["10013"]=setmetatable({id=10013,rangeDecay={[1]=10,[2]=40},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_HighFrequency_AR_03",[2]="IMP_Camera_Battle_Passive_Shock_Small_01"}},mt),
    ["10022"]=setmetatable({id=10022,rangeDecay={[1]=10,[2]=40},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_MidFrequency_01",[2]="IMP_Camera_Battle_Passive_Shock_Small_01"}},mt),
    ["20031"]=setmetatable({id=20031,rangeDecay={[1]=10,[2]=40},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_LowFrequency_Rocket_01",[2]="IMP_Camera_Battle_Passive_Shock_Small_01"}},mt),
    ["20032"]=setmetatable({id=20032,rangeDecay={[1]=10,[2]=40},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_LowFrequency_Rocket_02",[2]="IMP_Camera_Battle_Passive_Shock_Small_01"}},mt),
    ["20033"]=setmetatable({id=20033,rangeDecay={[1]=10,[2]=40},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_LowFrequency_Rocket_03",[2]="IMP_Camera_Battle_Passive_Shock_Small_01"}},mt),
    ["20131"]=setmetatable({id=20131,rangeDecay={[1]=10,[2]=40},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_LowFrequency_Rocket_POS_Z_01",[2]="IMP_Camera_Battle_Passive_Shock_Small_01"}},mt),
    ["20132"]=setmetatable({id=20132,rangeDecay={[1]=10,[2]=40},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_LowFrequency_Rocket_POS_Z_01",[2]="IMP_Camera_Battle_Passive_Shock_Small_01"}},mt),
    ["20133"]=setmetatable({id=20133,rangeDecay={[1]=10,[2]=40},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_LowFrequency_Rocket_POS_Z_01",[2]="IMP_Camera_Battle_Passive_Shock_Small_01"}},mt),
    ["30011"]=setmetatable({id=30011,rangeDecay={[1]=100,[2]=120},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_HighFrequency_Laser_01",[2]="IMP_Camera_Battle_Passive_Shock_Small_01"}},mt),
    ["30012"]=setmetatable({id=30012,rangeDecay={[1]=100,[2]=120},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_HighFrequency_Laser_02",[2]="IMP_Camera_Battle_Passive_Shock_Small_01"}},mt),
    ["30013"]=setmetatable({id=30013,rangeDecay={[1]=100,[2]=120},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_HighFrequency_Laser_03",[2]="IMP_Camera_Battle_Passive_Shock_Small_01"}},mt),
    ["30031"]=setmetatable({id=30031,rangeDecay={[1]=10,[2]=40},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_LowFrequency_SniperRifle_01",[2]="IMP_Camera_Battle_Passive_Shock_Small_01"}},mt),
    ["30032"]=setmetatable({id=30032,rangeDecay={[1]=10,[2]=40},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_LowFrequency_SniperRifle_02",[2]="IMP_Camera_Battle_Passive_Shock_Small_01"}},mt),
    ["30033"]=setmetatable({id=30033,rangeDecay={[1]=10,[2]=40},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_LowFrequency_SniperRifle_03",[2]="IMP_Camera_Battle_Passive_Shock_Small_01"}},mt),
    ["40011"]=setmetatable({id=40011,rangeDecay={[1]=10,[2]=40},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_HighFrequency_Shotgun_01",[2]="IMP_Camera_Battle_Passive_Shock_Small_01"}},mt),
    ["40012"]=setmetatable({id=40012,rangeDecay={[1]=10,[2]=40},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_HighFrequency_Shotgun_02",[2]="IMP_Camera_Battle_Passive_Shock_Small_01"}},mt),
    ["40013"]=setmetatable({id=40013,rangeDecay={[1]=10,[2]=40},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_HighFrequency_Shotgun_03",[2]="IMP_Camera_Battle_Passive_Shock_Small_01"}},mt),
    ["40131"]=setmetatable({id=40131,rangeDecay={[1]=10,[2]=40},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_LowFrequency_Shotgun_POS_Z_01",[2]="IMP_Camera_Battle_Passive_Shock_Small_01"}},mt),
    ["40132"]=setmetatable({id=40132,rangeDecay={[1]=10,[2]=40},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_LowFrequency_Shotgun_POS_Z_02",[2]="IMP_Camera_Battle_Passive_Shock_Small_01"}},mt),
    ["40133"]=setmetatable({id=40133,rangeDecay={[1]=10,[2]=40},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_LowFrequency_Shotgun_POS_Z_03",[2]="IMP_Camera_Battle_Passive_Shock_Small_01"}},mt),
    ["60001"]=setmetatable({id=60001,rangeDecay={[1]=80,[2]=120,[3]=160},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_Boom_01",[2]="IMP_Camera_Battle_Passive_Shock_Small_01"}},mt),
    ["60002"]=setmetatable({id=60002,rangeDecay={[1]=80,[2]=120,[3]=160},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_Boom_02",[2]="IMP_Camera_battle_Active_Shock_Boom_01",[3]="IMP_Camera_Battle_Passive_Shock_Small_01"}},mt),
    ["60003"]=setmetatable({id=60003,rangeDecay={[1]=80,[2]=120,[3]=160},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_Boom_03",[2]="IMP_Camera_battle_Active_Shock_Boom_02",[3]="IMP_Camera_battle_Active_Shock_Boom_01"}},mt),
    ["60004"]=setmetatable({id=60004,rangeDecay={[1]=80,[2]=120,[3]=160},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_Boom_04",[2]="IMP_Camera_battle_Active_Shock_Boom_03",[3]="IMP_Camera_battle_Active_Shock_Boom_01"}},mt),
    ["60005"]=setmetatable({id=60005,rangeDecay={[1]=80,[2]=120,[3]=160},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_Boom_05",[2]="IMP_Camera_battle_Active_Shock_Boom_04",[3]="IMP_Camera_battle_Active_Shock_Boom_01"}},mt),
    ["60006"]=setmetatable({id=60006,rangeDecay={[1]=80,[2]=120,[3]=160},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_Boom_06",[2]="IMP_Camera_battle_Active_Shock_Boom_05",[3]="IMP_Camera_battle_Active_Shock_Boom_01"}},mt),
    ["106101"]=setmetatable({id=106101,rangeDecay={[1]=80,[2]=240},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_09",[2]="IMP_Camera_Battle_Passive_Shock_Small_09"}},mt),
    ["106102"]=setmetatable({id=106102,rangeDecay={[1]=80,[2]=120,[3]=300},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_Big_03",[2]="IMP_Camera_battle_Active_Shock_Big_03",[3]="IMP_Camera_battle_Active_Shock_Big_03"}},mt),
    ["304002"]=setmetatable({id=304002,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_Big_03",[2]="IMP_Camera_battle_Active_Shock_Big_03",[3]="IMP_Camera_battle_Active_Shock_Big_03"}},mt),
    ["304003"]=setmetatable({id=304003,rangeDecay={[1]=80,[2]=120,[3]=180},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_Big_03",[2]="IMP_Camera_battle_Active_Shock_Big_03",[3]="IMP_Camera_battle_Active_Shock_Big_03"}},mt),
    ["304017"]=setmetatable({id=304017,rangeDecay={[1]=80,[2]=120},impulsePrefab={[1]="IMP_Camera_Battle_Passive_Shock_Small_09",[2]="IMP_Camera_Battle_Passive_Shock_Small_09"}},mt),
    ["243091"]=setmetatable({id=243091,rangeDecay={[1]=80,[2]=120},impulsePrefab={[1]="IMP_Camera_battle_Active_Shock_LowFrequency_Laser_03",[2]="IMP_Camera_battle_Active_Shock_LowFrequency_Laser_02"}},mt),
}
--生成获取数据的方法
---@return CameraShake
function GetCameraShakeData(id)
    return CameraShake_Xls[tostring(id)]
end
--自动生成注释
---@class CameraShake : table 
---@field id number
---@field rangeDecay table
---@field impulsePrefab table
