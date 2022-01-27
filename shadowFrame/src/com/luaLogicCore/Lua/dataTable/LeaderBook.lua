---@class LeaderBook_Xls : table 
LeaderBook_Xls =
{
    ["599996"]={leaderId=599996,des="导师",enName="导师"},
    ["599997"]={leaderId=599997,des="克拉",enName="Zeus"},
    ["700000"]={leaderId=700000,des="看板娘",enName="SHOPgirl"},
    ["2001001"]={leaderId=2001001,des="法尼娅",enName="Fania",chCv="十四",jaCv="茅野爱衣",num="FE-VII.1",time="I.S.1951",camp=1,born="奥菲利亚",birthday={[1]=2,[2]=6},blood="O",height="1.63m",core=200100101,wand=200100102,story=200100103},
    ["2002001"]={leaderId=2002001,des="奈纳",enName="Naina",chCv="蟲蟲",jaCv="钉宫理惠",num="FE-VII.2",time="I.S.1954",camp=1,born="尘雾街·阿谢拉德",birthday={[1]=4,[2]=28},blood="B",height="1.54m",core=200200101,wand=200200102,story=200200103},
    ["2003001"]={leaderId=2003001,des="夏洛",enName="Charlotte",chCv="四白",jaCv="钉宫理惠",num="FE-VII.3",time="I.S.1950",camp=1,born="约顿兰德",birthday={[1]=6,[2]=1},blood="B",height="1.62m",core=200300101,wand=200300102,story=200300103},
    ["2004001"]={leaderId=2004001,des="维拉",enName="Willa",chCv="夏一可",jaCv="钉宫理惠",num="FE-VII.12",time="I.S.1946",camp=1,born="巴伐利亚",birthday={[1]=9,[2]=6},blood="O",height="1.70m",core=200400101,wand=200400102,story=200400103},
    ["2005001"]={leaderId=2005001,des="瓦希提",enName="Faroli",chCv="夏一可",jaCv="茅野爱衣",num="FE-VII.0",time="I.S.1951",camp=1,born="巴伐利亚",birthday={[1]=10,[2]=5},blood="O",height="1.63m",core=200500101,wand=200500102,story=200500103},
    ["2006001"]={leaderId=2006001,des="娜卡伊",enName="Faroli",chCv="夏一可",jaCv="茅野爱衣",num="FE-VII.0",time="I.S.1951",camp=1,born="巴伐利亚",birthday={[1]=10,[2]=5},blood="O",height="1.63m",core=200600101,wand=200600102,story=200600103},
    ["2007001"]={leaderId=2007001,des="空",enName="Faroli",chCv="夏一可",jaCv="茅野爱衣",num="FE-VII.0",time="I.S.1951",camp=1,born="巴伐利亚",birthday={[1]=10,[2]=5},blood="O",height="1.63m",core=200700101,wand=200700102,story=200700103},
    ["2008001"]={leaderId=2008001,des="耶拉",enName="Faroli",chCv="夏一可",jaCv="茅野爱衣",num="FE-VII.0",time="I.S.1951",camp=1,born="巴伐利亚",birthday={[1]=10,[2]=5},blood="O",height="1.63m",core=200800101,wand=200800102,story=200800103},
    ["2009001"]={leaderId=2009001,des="法妮10035号",enName="Faroli",chCv="夏一可",jaCv="茅野爱衣",num="FE-VII.0",time="I.S.1951",camp=1,born="巴伐利亚",birthday={[1]=10,[2]=5},blood="O",height="1.63m",core=200900101,wand=200900102,story=200900103},
}
--生成获取数据的方法
---@return LeaderBook
function GetLeaderBookData(id)
    return LeaderBook_Xls[tostring(id)]
end
--自动生成注释
---@class LeaderBook : table 
---@field leaderId number
---@field des string
---@field enName string
---@field chCv string
---@field jaCv string
---@field num string
---@field time string
---@field camp number
---@field born string
---@field birthday table
---@field blood string
---@field height string
---@field core number
---@field wand number
---@field story number
