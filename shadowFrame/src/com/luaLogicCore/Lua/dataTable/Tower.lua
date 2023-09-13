local default = {id="",towerType=0,timeId=0,showTimeId=0,levelName="",levelEngName="",levelDes="",posX=0,posY=0,monsterShow1=xlsNilTable,monsterShow2=xlsNilTable,diffTab=0,isDoubleTeamLevel=0,recommendLevel=0,unlockPlayerLevel=0,redPointPlayerLevel=0,unlockLevel=0,scoreRewardId1=0,scoreRewardId2=0,scoreRewardId3=0,showBuff=xlsNilTable,showTalent=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class Tower_Xls : table 
Tower_Xls =
{
    ["1"]=setmetatable({id="1",towerType=1,timeId=20000,showTimeId=20000,levelName="第一层",levelEngName="area 1",levelDes="已进入目标区域，和预想中的一样，无法与外界取得联系。感觉像是来到了…另一个[世界]。",posX=-501,posY=-103,monsterShow1={[1]=2010,[2]=1040,[3]=2110},monsterShow2=xlsNilTable,diffTab=1,isDoubleTeamLevel=0,recommendLevel=10000,unlockPlayerLevel=20,redPointPlayerLevel=24,unlockLevel=0},mt),
    ["2"]=setmetatable({id="2",towerType=1,timeId=20000,showTimeId=20000,levelName="第二层",levelEngName="area 2",levelDes="刚才似乎穿过了一道[墙壁]，有点接近刚进入这里时的感觉，难以形容。这里竟然是分层的，在其他类似案例中从未有过这种情况。",posX=-250,posY=109,monsterShow1={[1]=2030,[2]=2040,[3]=1060},monsterShow2=xlsNilTable,diffTab=1,isDoubleTeamLevel=0,recommendLevel=15000,unlockPlayerLevel=25,redPointPlayerLevel=29,unlockLevel=1},mt),
    ["3"]=setmetatable({id="3",towerType=1,timeId=20000,showTimeId=20000,levelName="第三层",levelEngName="area 3",levelDes="看到了奇怪的东西…不，情况不太对，那东西是从什么时候开始存在的？",posX=44,posY=-238,monsterShow1={[1]=2040,[2]=2020,[3]=1050,[4]=1060,[5]=2140},monsterShow2=xlsNilTable,diffTab=1,isDoubleTeamLevel=0,recommendLevel=20000,unlockPlayerLevel=30,redPointPlayerLevel=34,unlockLevel=2},mt),
    ["101"]=setmetatable({id="101",towerType=1,timeId=20000,showTimeId=20000,levelName="第四层",levelEngName="area 4",levelDes="又穿过了一道[墙壁]，视野在变得模糊，而某种难以言喻的[直觉]正在逐渐变得清晰，我愈发清晰的意识到了它的存在…是我的幻觉吗？",posX=-172,posY=214,monsterShow1={[1]=2030,[2]=2020,[3]=1060,[4]=1040,[5]=2120},monsterShow2=xlsNilTable,diffTab=2,isDoubleTeamLevel=0,recommendLevel=23000,unlockPlayerLevel=35,redPointPlayerLevel=39,unlockLevel=3},mt),
    ["102"]=setmetatable({id="102",towerType=1,timeId=20000,showTimeId=20000,levelName="第五层",levelEngName="area 5",levelDes="这是现实？还是幻想？",posX=100,posY=-57,monsterShow1={[1]=2020,[2]=2050,[3]=2150},monsterShow2=xlsNilTable,diffTab=2,isDoubleTeamLevel=0,recommendLevel=25000,unlockPlayerLevel=40,redPointPlayerLevel=44,unlockLevel=101},mt),
    ["103"]=setmetatable({id="103",towerType=1,timeId=20000,showTimeId=20000,levelName="第六层",levelEngName="area 6",levelDes="我是从什么时候，陷入幻觉的？",posX=288,posY=-341,monsterShow1={[1]=2030,[2]=1050,[3]=2130,[4]=2150,[5]=3010},monsterShow2=xlsNilTable,diffTab=2,isDoubleTeamLevel=0,recommendLevel=31000,unlockPlayerLevel=45,redPointPlayerLevel=49,unlockLevel=102},mt),
    ["201"]=setmetatable({id="201",towerType=1,timeId=20000,showTimeId=20000,levelName="第七层",levelEngName="area 7",levelDes="计时器停摆了。我飞了多久？又飞了多远？它的大小看起来完全没有变化，我真的有在靠近它吗？",posX=180,posY=210,monsterShow1={[1]=2010,[2]=2110},monsterShow2={[1]=2120,[2]=2110,[3]=1040,[4]=2130},diffTab=2,isDoubleTeamLevel=1,recommendLevel=34000,unlockPlayerLevel=50,redPointPlayerLevel=54,unlockLevel=103},mt),
    ["202"]=setmetatable({id="202",towerType=1,timeId=20000,showTimeId=20000,levelName="第八层",levelEngName="area 8",levelDes="没有方向，没有上下左右，感觉不到时间的流逝。我…还活着吗？",posX=383,posY=-173,monsterShow1={[1]=2210,[2]=2120,[3]=2130,[4]=1060,[5]=1040},monsterShow2={[1]=2120,[2]=2150,[3]=2230},diffTab=2,isDoubleTeamLevel=1,recommendLevel=40000,unlockPlayerLevel=55,redPointPlayerLevel=59,unlockLevel=201},mt),
    ["203"]=setmetatable({id="203",towerType=1,timeId=20000,showTimeId=20000,levelName="第九层",levelEngName="area 9",levelDes="出现幻听了。“就算这个世界没有理想主义者的容身之处，人类也依然会...追逐繁星。”繁星…是什么意思？",posX=525,posY=50,monsterShow1={[1]=1060,[2]=2220,[3]=2240,[4]=1040},monsterShow2={[1]=3010,[2]=3030,[3]=2240},diffTab=2,isDoubleTeamLevel=1,recommendLevel=42000,unlockPlayerLevel=60,redPointPlayerLevel=64,unlockLevel=202},mt),
    ["1001"]=setmetatable({id="1001",towerType=2,timeId=22010,showTimeId=22015,levelName="虚空·解构",levelEngName="area10",levelDes="根据各类调查总结，TEO-11的异空每周会完成一次[折叠]，每次折叠时，内部空间将随之重构。",posX=-100,posY=200,monsterShow1={[1]=1020,[2]=1030,[3]=2120,[4]=2020,[5]=1100,[6]=1000,[7]=1010,[8]=2220,[9]=1101,[10]=1050,[11]=2010,[12]=1010,[13]=1020},monsterShow2={[1]=1020,[2]=1060,[3]=1010,[4]=1000,[5]=3010,[6]=1030,[7]=1120,[8]=1080,[9]=1050,[10]=1100},diffTab=3,isDoubleTeamLevel=1,recommendLevel=45000,unlockPlayerLevel=20,redPointPlayerLevel=999,unlockLevel=203},mt),
    ["1002"]=setmetatable({id="1002",towerType=2,timeId=22011,showTimeId=22016,levelName="虚空·解构",levelEngName="area10",levelDes="根据各类调查总结，TEO-11的异空每周会完成一次[折叠]，每次折叠时，内部空间将随之重构。",posX=-400,posY=-50,monsterShow1={[1]=1020,[2]=1030,[3]=2120,[4]=2020,[5]=1100,[6]=1000,[7]=1010,[8]=2220,[9]=1101,[10]=1050,[11]=2010,[12]=1010,[13]=1020},monsterShow2={[1]=1020,[2]=1060,[3]=1010,[4]=1000,[5]=3010,[6]=1030,[7]=1120,[8]=1080,[9]=1050,[10]=1100},diffTab=3,isDoubleTeamLevel=1,recommendLevel=45000,unlockPlayerLevel=20,redPointPlayerLevel=999,unlockLevel=203},mt),
    ["1003"]=setmetatable({id="1003",towerType=2,timeId=22012,showTimeId=22017,levelName="虚空·解构",levelEngName="area10",levelDes="根据各类调查总结，TEO-11的异空每周会完成一次[折叠]，每次折叠时，内部空间将随之重构。",posX=300,posY=-300,monsterShow1={[1]=1020,[2]=1030,[3]=2120,[4]=2020,[5]=1100,[6]=1000,[7]=1010,[8]=2220,[9]=1101,[10]=1050,[11]=2010,[12]=1010,[13]=1020},monsterShow2={[1]=1020,[2]=1060,[3]=1010,[4]=1000,[5]=3010,[6]=1030,[7]=1120,[8]=1080,[9]=1050,[10]=1100},diffTab=3,isDoubleTeamLevel=1,recommendLevel=45000,unlockPlayerLevel=20,redPointPlayerLevel=999,unlockLevel=203},mt),
    ["1004"]=setmetatable({id="1004",towerType=2,timeId=22013,showTimeId=22018,levelName="虚空·解构",levelEngName="area10",levelDes="根据各类调查总结，TEO-11的异空每周会完成一次[折叠]，每次折叠时，内部空间将随之重构。",posX=-100,posY=200,monsterShow1={[1]=1020,[2]=1030,[3]=2120,[4]=2020,[5]=1100,[6]=1000,[7]=1010,[8]=2220,[9]=1101,[10]=1050,[11]=2010,[12]=1010,[13]=1020},monsterShow2={[1]=1020,[2]=1060,[3]=1010,[4]=1000,[5]=3010,[6]=1030,[7]=1120,[8]=1080,[9]=1050,[10]=1100},diffTab=3,isDoubleTeamLevel=1,recommendLevel=45000,unlockPlayerLevel=20,redPointPlayerLevel=999,unlockLevel=203},mt),
    ["1005"]=setmetatable({id="1005",towerType=2,timeId=22014,showTimeId=22019,levelName="虚空·解构",levelEngName="area10",levelDes="根据各类调查总结，TEO-11的异空每周会完成一次[折叠]，每次折叠时，内部空间将随之重构。\n第三轮的正象限中将出现<color=#d64233>追击异种</color>。",posX=-400,posY=-50,monsterShow1={[1]=1020,[2]=1030,[3]=2120,[4]=2020,[5]=1100,[6]=1000,[7]=1010,[8]=2220,[9]=1101,[10]=1050,[11]=2010,[12]=1010,[13]=1020},monsterShow2={[1]=1020,[2]=1060,[3]=1010,[4]=1000,[5]=3010,[6]=1030,[7]=1120,[8]=1080,[9]=1050,[10]=1100},diffTab=3,isDoubleTeamLevel=1,recommendLevel=45000,unlockPlayerLevel=20,redPointPlayerLevel=999,unlockLevel=203},mt),
}
--生成获取数据的方法
---@return Tower
function GetTowerData(id)
    return Tower_Xls[tostring(id)]
end
--自动生成注释
---@class Tower : table 
---@field id string
---@field towerType number
---@field timeId number
---@field showTimeId number
---@field levelName string
---@field levelEngName string
---@field levelDes string
---@field posX number
---@field posY number
---@field monsterShow1 table
---@field monsterShow2 table
---@field diffTab number
---@field isDoubleTeamLevel number
---@field recommendLevel number
---@field unlockPlayerLevel number
---@field redPointPlayerLevel number
---@field unlockLevel number
---@field scoreRewardId1 number
---@field scoreRewardId2 number
---@field scoreRewardId3 number
---@field showBuff table
---@field showTalent table
