local default = {id=0,shape=0,startPostion=xlsNilTable,finalLogicScale=xlsNilTable,resPath="",bindPoint="",endEffectId=xlsNilTable,breakEffectId=xlsNilTable,isShieldScale=0,isEventRotation=0,eventRotation=xlsNilTable,follow=0,time=0,monsterInstanceId=0,stackableType=xlsNilTable,attributeType=0,attributeValue=xlsNilTable,defaultBuff=xlsNilTable,defaultTargetAddBuff=xlsNilTable,endTargeAddBuff=xlsNilTable,breakTargeAddBuff=xlsNilTable,endTargetReduceBuff=xlsNilTable,dragControl=xlsNilTable,dragCoordinate=xlsNilTable,dragDistance=xlsNilTable,dragSpeed=xlsNilTable,bornSoundId=0,loopSoundId=0,endSoundId=0,isDraged=0,isHit=0,isCalculated=0,isAimed=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class Shield_Xls : table 
Shield_Xls =
{
    ["1"]=setmetatable({id=1,shape=1,startPostion={[1]=0.0,[2]=0.0,[3]=0.0},finalLogicScale={[1]=25.0,[2]=25.0,[3]=25.0,[4]=25.0},resPath="xialuo_jizou_lingyu",bindPoint="",endEffectId=xlsNilTable,breakEffectId=xlsNilTable,isShieldScale=1,isEventRotation=0,eventRotation=xlsNilTable,follow=0,time=-1.0,monsterInstanceId=99,stackableType={[1]=1},attributeType=1,attributeValue={[1]=1.0,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},defaultBuff={[1]=10052,[2]=1401},defaultTargetAddBuff={[1]=10052},endTargeAddBuff={[1]=10052},breakTargeAddBuff=xlsNilTable,endTargetReduceBuff={[1]=10052},dragControl=xlsNilTable,dragCoordinate={[1]=0.0,[2]=0.0,[3]=0.0},dragDistance={[1]=0.0,[2]=0.0,[3]=0.0},dragSpeed={[1]=0.0,[2]=0.0,[3]=0.0},bornSoundId=2003009,loopSoundId=0,endSoundId=0,isDraged=0,isHit=0,isCalculated=0,isAimed=0},mt),
    ["108001"]=setmetatable({id=108001,shape=1,startPostion={[1]=0.0,[2]=0.0,[3]=0.0},finalLogicScale={[1]=10.0,[2]=10.0,[3]=10.0,[4]=10.0},resPath="Pre_eff_huzhao_huo_loop",bindPoint="Bone005",endEffectId={[1]=201124},breakEffectId=xlsNilTable,isShieldScale=1,isEventRotation=0,eventRotation=xlsNilTable,follow=1,time=-1.0,monsterInstanceId=99,stackableType={[1]=2},attributeType=1,attributeValue={[1]=0.5,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},defaultBuff={[1]=10052,[2]=1401},defaultTargetAddBuff={[1]=1006,[2]=10058},endTargeAddBuff={[1]=9001},breakTargeAddBuff=xlsNilTable,endTargetReduceBuff={[1]=1006,[2]=10058},dragControl=xlsNilTable,dragCoordinate={[1]=0.0,[2]=0.0,[3]=0.0},dragDistance={[1]=0.0,[2]=0.0,[3]=0.0},dragSpeed={[1]=0.0,[2]=0.0,[3]=0.0},bornSoundId=0,loopSoundId=0,endSoundId=0,isDraged=0,isHit=1,isCalculated=1,isAimed=1},mt),
    ["108002"]=setmetatable({id=108002,shape=1,startPostion={[1]=0.0,[2]=0.0,[3]=1.0},finalLogicScale={[1]=10.0,[2]=10.0,[3]=10.0,[4]=11.0},resPath="Pre_eff_huzhao_bing_loop",bindPoint="Bone005",endEffectId={[1]=201136},breakEffectId=xlsNilTable,isShieldScale=1,isEventRotation=0,eventRotation=xlsNilTable,follow=1,time=-1.0,monsterInstanceId=99,stackableType={[1]=2},attributeType=1,attributeValue={[1]=0.5,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},defaultBuff={[1]=10054,[2]=1401},defaultTargetAddBuff={[1]=1006,[2]=10058},endTargeAddBuff={[1]=9001},breakTargeAddBuff=xlsNilTable,endTargetReduceBuff={[1]=1006,[2]=10058},dragControl=xlsNilTable,dragCoordinate={[1]=0.0,[2]=0.0,[3]=0.0},dragDistance={[1]=0.0,[2]=0.0,[3]=0.0},dragSpeed={[1]=0.0,[2]=0.0,[3]=0.0},bornSoundId=0,loopSoundId=0,endSoundId=0,isDraged=0,isHit=1,isCalculated=1,isAimed=1},mt),
    ["108003"]=setmetatable({id=108003,shape=1,startPostion={[1]=0.0,[2]=0.0,[3]=2.0},finalLogicScale={[1]=10.0,[2]=10.0,[3]=10.0,[4]=12.0},resPath="Pre_eff_huzhao_lei_loop",bindPoint="Bone005",endEffectId={[1]=201128},breakEffectId=xlsNilTable,isShieldScale=1,isEventRotation=0,eventRotation=xlsNilTable,follow=1,time=-1.0,monsterInstanceId=99,stackableType={[1]=2},attributeType=1,attributeValue={[1]=0.5,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},defaultBuff={[1]=10053,[2]=1401},defaultTargetAddBuff={[1]=1006,[2]=10058},endTargeAddBuff={[1]=9001},breakTargeAddBuff=xlsNilTable,endTargetReduceBuff={[1]=1006,[2]=10058},dragControl=xlsNilTable,dragCoordinate={[1]=0.0,[2]=0.0,[3]=0.0},dragDistance={[1]=0.0,[2]=0.0,[3]=0.0},dragSpeed={[1]=0.0,[2]=0.0,[3]=0.0},bornSoundId=0,loopSoundId=0,endSoundId=0,isDraged=0,isHit=1,isCalculated=1,isAimed=1},mt),
    ["108004"]=setmetatable({id=108004,shape=1,startPostion={[1]=0.0,[2]=0.0,[3]=3.0},finalLogicScale={[1]=10.0,[2]=10.0,[3]=10.0,[4]=13.0},resPath="Pre_eff_huzhao_feng_loop",bindPoint="Bone005",endEffectId={[1]=201132},breakEffectId=xlsNilTable,isShieldScale=1,isEventRotation=0,eventRotation=xlsNilTable,follow=1,time=-1.0,monsterInstanceId=99,stackableType={[1]=2},attributeType=1,attributeValue={[1]=0.5,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},defaultBuff={[1]=10055,[2]=1401},defaultTargetAddBuff={[1]=1006,[2]=10058},endTargeAddBuff={[1]=9001},breakTargeAddBuff=xlsNilTable,endTargetReduceBuff={[1]=1006,[2]=10058},dragControl=xlsNilTable,dragCoordinate={[1]=0.0,[2]=0.0,[3]=0.0},dragDistance={[1]=0.0,[2]=0.0,[3]=0.0},dragSpeed={[1]=0.0,[2]=0.0,[3]=0.0},bornSoundId=0,loopSoundId=0,endSoundId=0,isDraged=0,isHit=1,isCalculated=1,isAimed=1},mt),
    ["104006"]=setmetatable({id=104006,shape=1,startPostion={[1]=0.0,[2]=0.0,[3]=0.0},finalLogicScale={[1]=10.0,[2]=10.0,[3]=10.0,[4]=10.0},resPath="Pre_eff_xingyiyuan_dun_start_loop_Bone002",bindPoint="Bone002",endEffectId={[1]=104007},breakEffectId={[1]=104006},isShieldScale=1,isEventRotation=0,eventRotation=xlsNilTable,follow=1,time=10.0,monsterInstanceId=99,stackableType={[1]=2},attributeType=1,attributeValue={[1]=0.1,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},defaultBuff={[1]=1401,[2]=104007},defaultTargetAddBuff={[1]=1006,[2]=10058,[3]=104005},endTargeAddBuff=xlsNilTable,breakTargeAddBuff={[1]=9001},endTargetReduceBuff={[1]=1006,[2]=10058,[3]=104005},dragControl=xlsNilTable,dragCoordinate={[1]=0.0,[2]=0.0,[3]=0.0},dragDistance={[1]=0.0,[2]=0.0,[3]=0.0},dragSpeed={[1]=0.0,[2]=0.0,[3]=0.0},bornSoundId=0,loopSoundId=10400002,endSoundId=0,isDraged=0,isHit=1,isCalculated=1,isAimed=1},mt),
    ["307001"]=setmetatable({id=307001,shape=1,startPostion={[1]=0.0,[2]=0.0,[3]=0.0},finalLogicScale={[1]=10.0,[2]=10.0,[3]=10.0,[4]=13.0},resPath="Pre_eff_sikong_dun_start_loop",bindPoint="",endEffectId={[1]=307043},breakEffectId=xlsNilTable,isShieldScale=0,isEventRotation=0,eventRotation=xlsNilTable,follow=1,time=-1.0,monsterInstanceId=99,stackableType={[1]=2},attributeType=1,attributeValue={[1]=0.5,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},defaultBuff={[1]=307005},defaultTargetAddBuff={[1]=307001},endTargeAddBuff={[1]=307099},breakTargeAddBuff=xlsNilTable,endTargetReduceBuff={[1]=307001},dragControl=xlsNilTable,dragCoordinate={[1]=0.0,[2]=0.0,[3]=0.0},dragDistance={[1]=0.0,[2]=0.0,[3]=0.0},dragSpeed={[1]=0.0,[2]=0.0,[3]=0.0},bornSoundId=0,loopSoundId=0,endSoundId=0,isDraged=0,isHit=1,isCalculated=1,isAimed=1},mt),
}
--生成获取数据的方法
---@return Shield
function GetShieldData(id)
    return Shield_Xls[tostring(id)]
end
--自动生成注释
---@class Shield : table 
---@field id number
---@field shape number
---@field startPostion table
---@field finalLogicScale table
---@field resPath string
---@field bindPoint string
---@field endEffectId table
---@field breakEffectId table
---@field isShieldScale number
---@field isEventRotation number
---@field eventRotation table
---@field follow number
---@field time number
---@field monsterInstanceId number
---@field stackableType table
---@field attributeType number
---@field attributeValue table
---@field defaultBuff table
---@field defaultTargetAddBuff table
---@field endTargeAddBuff table
---@field breakTargeAddBuff table
---@field endTargetReduceBuff table
---@field dragControl table
---@field dragCoordinate table
---@field dragDistance table
---@field dragSpeed table
---@field bornSoundId number
---@field loopSoundId number
---@field endSoundId number
---@field isDraged number
---@field isHit number
---@field isCalculated number
---@field isAimed number
