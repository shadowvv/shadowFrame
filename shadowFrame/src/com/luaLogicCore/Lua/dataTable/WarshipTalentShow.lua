local default = {id=0,pointType=0,prePointList=xlsNilTable,conditionList=xlsNilTable,consumeId=0,reward=0,pointName="",pointDes="",pointPic="",skillid=0,pointX=0,pointY=0,line=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WarshipTalentShow_Xls : table 
WarshipTalentShow_Xls =
{
    ["1"]=setmetatable({id=1,pointType=1,prePointList={[1]=0},conditionList={[1]=603},consumeId=0,reward=0,pointName="指引深化",pointDes="加深了与各位斯露德的羁绊，指引力上限增加8。",pointPic="talent_icon_power",skillid=701,pointX=2,pointY=1,line={[1]=4}},mt),
    ["2"]=setmetatable({id=2,pointType=2,prePointList={[1]=1},conditionList=xlsNilTable,consumeId=0,reward=13000001,pointName="",pointDes="",pointPic="talent_icon_reward",skillid=0,pointX=2,pointY=2,line={[1]=4}},mt),
    ["3"]=setmetatable({id=3,pointType=1,prePointList={[1]=2},conditionList={[1]=808,[2]=7103101},consumeId=90001,reward=0,pointName="指引深化",pointDes="加深了与各位斯露德的羁绊，指引力上限增加8。",pointPic="talent_icon_power",skillid=701,pointX=2,pointY=3,line={[1]=5,[2]=6,[3]=4}},mt),
    ["4"]=setmetatable({id=4,pointType=1,prePointList={[1]=3},conditionList={[1]=808,[2]=7400101},consumeId=90001,reward=0,pointName="佳肴之契",pointDes="通过各类探索回收到新鲜食材，尼伯赞歌号解锁了新的菜谱《什锦烩菜》《酸乳酪蛋糕》。",pointPic="talent_icon_dinner",skillid=0,pointX=1,pointY=4,line={[1]=4}},mt),
    ["5"]=setmetatable({id=5,pointType=2,prePointList={[1]=4},conditionList=xlsNilTable,consumeId=0,reward=13000003,pointName="",pointDes="",pointPic="talent_icon_reward",skillid=0,pointX=1,pointY=5,line={[1]=4}},mt),
    ["6"]=setmetatable({id=6,pointType=1,prePointList={[1]=5},conditionList={[1]=810,[2]=7400102},consumeId=90001,reward=0,pointName="佳肴之契",pointDes="通过各类探索回收到新鲜食材，尼伯赞歌号解锁了新的菜谱《乳汁脆片粥》《甘薯炖羔羊》《奶油浓汤》。",pointPic="talent_icon_dinner",skillid=0,pointX=1,pointY=6,line={[1]=4}},mt),
    ["7"]=setmetatable({id=7,pointType=2,prePointList={[1]=6},conditionList=xlsNilTable,consumeId=0,reward=13000003,pointName="",pointDes="",pointPic="talent_icon_reward",skillid=0,pointX=1,pointY=7,line={[1]=4}},mt),
    ["8"]=setmetatable({id=8,pointType=1,prePointList={[1]=7},conditionList={[1]=814,[2]=7400103},consumeId=90001,reward=0,pointName="佳肴之契",pointDes="通过各类探索回收到新鲜食材，尼伯赞歌号解锁了新的菜谱《扉勒酱通心粉》《格洛菜汤》《拉普兰传统浓汤》。",pointPic="talent_icon_dinner",skillid=0,pointX=1,pointY=8,line={[1]=2}},mt),
    ["9"]=setmetatable({id=9,pointType=2,prePointList={[1]=3},conditionList=xlsNilTable,consumeId=0,reward=13000001,pointName="",pointDes="",pointPic="talent_icon_reward",skillid=0,pointX=2,pointY=4,line={[1]=4}},mt),
    ["10"]=setmetatable({id=10,pointType=1,prePointList={[1]=9},conditionList={[1]=810,[2]=7104101},consumeId=90001,reward=0,pointName="指引深化",pointDes="加深了与各位斯露德的羁绊，指引力上限增加8。",pointPic="talent_icon_power",skillid=701,pointX=2,pointY=5,line={[1]=4}},mt),
    ["11"]=setmetatable({id=11,pointType=2,prePointList={[1]=10},conditionList=xlsNilTable,consumeId=0,reward=13000001,pointName="",pointDes="",pointPic="talent_icon_reward",skillid=0,pointX=2,pointY=6,line={[1]=4}},mt),
    ["12"]=setmetatable({id=12,pointType=1,prePointList={[1]=11},conditionList={[1]=814,[2]=7105101},consumeId=90001,reward=0,pointName="指引深化",pointDes="加深了与各位斯露德的羁绊，指引力上限增加8。",pointPic="talent_icon_power",skillid=701,pointX=2,pointY=7,line={[1]=4}},mt),
    ["14"]=setmetatable({id=14,pointType=1,prePointList={[1]=3},conditionList={[1]=808,[2]=7100101},consumeId=90001,reward=0,pointName="贡献垄断",pointDes="随着各地区对尼伯赞歌号依赖性增加，各地区的派遣任务中获得的贡献点数增加5%。",pointPic="talent_icon_ziyuan",skillid=501,pointX=3,pointY=4,line={[1]=4}},mt),
    ["15"]=setmetatable({id=15,pointType=2,prePointList={[1]=14},conditionList=xlsNilTable,consumeId=0,reward=13000002,pointName="",pointDes="",pointPic="talent_icon_reward",skillid=0,pointX=3,pointY=5,line={[1]=4}},mt),
    ["16"]=setmetatable({id=16,pointType=1,prePointList={[1]=15},conditionList={[1]=810,[2]=7100102},consumeId=90001,reward=0,pointName="物资锁定",pointDes="仪器辅助将提升执行派遣任务时的素材发现效率，各地区的派遣任务中获得的战斗评估报告I增加1。",pointPic="talent_icon_ziyuan",skillid=601,pointX=3,pointY=6,line={[1]=4}},mt),
    ["17"]=setmetatable({id=17,pointType=2,prePointList={[1]=16},conditionList=xlsNilTable,consumeId=0,reward=13000002,pointName="",pointDes="",pointPic="talent_icon_reward",skillid=0,pointX=3,pointY=7,line={[1]=4}},mt),
    ["18"]=setmetatable({id=18,pointType=1,prePointList={[1]=17},conditionList={[1]=814,[2]=7100103},consumeId=90001,reward=0,pointName="贡献垄断",pointDes="随着各地区对尼伯赞歌号依赖性增加，各地区的派遣任务中获得的贡献点数增加5%。",pointPic="talent_icon_ziyuan",skillid=501,pointX=3,pointY=8,line={[1]=1}},mt),
    ["19"]=setmetatable({id=19,pointType=1,prePointList={[1]=8,[2]=12,[3]=18},conditionList={[1]=820,[2]=7106101},consumeId=90001,reward=0,pointName="指挥扩容",pointDes="多次派遣经验使尼伯赞歌人员调度更加熟练，可以同时派遣的斯露德上限增加1。",pointPic="talent_icon_send",skillid=401,pointX=2,pointY=8},mt),
}
--生成获取数据的方法
---@return WarshipTalentShow
function GetWarshipTalentShowData(id)
    return WarshipTalentShow_Xls[tostring(id)]
end
--自动生成注释
---@class WarshipTalentShow : table 
---@field id number
---@field pointType number
---@field prePointList table
---@field conditionList table
---@field consumeId number
---@field reward number
---@field pointName string
---@field pointDes string
---@field pointPic string
---@field skillid number
---@field pointX number
---@field pointY number
---@field line table
