---@class FunctionBGM_Xls : table 
FunctionBGM_Xls =
{
    ["1001"]={id=1001,chapterId=100,chapterDiff=1,bgmlist={[1]=201001}},
    ["1002"]={id=1002,chapterId=100,chapterDiff=2,bgmlist={[1]=201004}},
    ["1011"]={id=1011,chapterId=101,chapterDiff=1,bgmlist={[1]=201001}},
    ["1012"]={id=1012,chapterId=101,chapterDiff=2,bgmlist={[1]=201004}},
    ["1021"]={id=1021,chapterId=102,chapterDiff=1,bgmlist={[1]=201001}},
    ["1022"]={id=1022,chapterId=102,chapterDiff=2,bgmlist={[1]=201004}},
    ["1031"]={id=1031,chapterId=103,chapterDiff=1,bgmlist={[1]=201005}},
    ["1032"]={id=1032,chapterId=103,chapterDiff=2,bgmlist={[1]=201006}},
    ["1041"]={id=1041,chapterId=104,chapterDiff=1,bgmlist={[1]=201005}},
    ["1042"]={id=1042,chapterId=104,chapterDiff=2,bgmlist={[1]=201006}},
    ["999901"]={id=999901,chapterId=0,chapterDiff=0,bgmlist={[1]=600011}},
    ["999902"]={id=999902,chapterId=0,chapterDiff=0,bgmlist={[1]=600013}},
    ["999903"]={id=999903,chapterId=0,chapterDiff=0,bgmlist={[1]=600011}},
    ["1000010"]={id=1000010,chapterId=0,chapterDiff=0,bgmlist={[1]=600011}},
    ["1000011"]={id=1000011,chapterId=0,chapterDiff=0,bgmlist={[1]=600013}},
    ["1000012"]={id=1000012,chapterId=0,chapterDiff=0,bgmlist={[1]=600011}},
    ["1000013"]={id=1000013,chapterId=0,chapterDiff=0,bgmlist={[1]=600011}},
    ["1000014"]={id=1000014,chapterId=0,chapterDiff=0,bgmlist={[1]=600011}},
    ["1000015"]={id=1000015,chapterId=0,chapterDiff=0,bgmlist={[1]=600011}},
    ["1000016"]={id=1000016,chapterId=0,chapterDiff=0,bgmlist={[1]=600011}},
    ["1000017"]={id=1000017,chapterId=0,chapterDiff=0,bgmlist={[1]=600011}},
    ["1000018"]={id=1000018,chapterId=0,chapterDiff=0,bgmlist={[1]=600011}},
    ["1000019"]={id=1000019,chapterId=0,chapterDiff=0,bgmlist={[1]=600012}},
    ["1000020"]={id=1000020,chapterId=0,chapterDiff=0,bgmlist={[1]=600012}},
    ["1000021"]={id=1000021,chapterId=0,chapterDiff=0,bgmlist={[1]=600011}},
    ["1000022"]={id=1000022,chapterId=0,chapterDiff=0,bgmlist={[1]=600015}},
    ["1000023"]={id=1000023,chapterId=0,chapterDiff=0,bgmlist={[1]=600015}},
    ["1000201"]={id=1000201,chapterId=0,chapterDiff=0,bgmlist={[1]=600002}},
    ["1000202"]={id=1000202,chapterId=0,chapterDiff=0,bgmlist={[1]=600002}},
    ["1000203"]={id=1000203,chapterId=0,chapterDiff=0,bgmlist={[1]=600002}},
    ["1000204"]={id=1000204,chapterId=0,chapterDiff=0,bgmlist={[1]=600002}},
    ["1000205"]={id=1000205,chapterId=0,chapterDiff=0,bgmlist={[1]=600002}},
    ["1000206"]={id=1000206,chapterId=0,chapterDiff=0,bgmlist={[1]=600002}},
    ["1000207"]={id=1000207,chapterId=0,chapterDiff=0,bgmlist={[1]=600002}},
    ["1000208"]={id=1000208,chapterId=0,chapterDiff=0,bgmlist={[1]=600002}},
    ["1000209"]={id=1000209,chapterId=0,chapterDiff=0,bgmlist={[1]=600002}},
    ["1000210"]={id=1000210,chapterId=0,chapterDiff=0,bgmlist={[1]=600002}},
    ["1000211"]={id=1000211,chapterId=0,chapterDiff=0,bgmlist={[1]=600002}},
    ["1000212"]={id=1000212,chapterId=0,chapterDiff=0,bgmlist={[1]=600002}},
}
--生成获取数据的方法
---@return FunctionBGM
function GetFunctionBGMData(id)
    return FunctionBGM_Xls[tostring(id)]
end
--自动生成注释
---@class FunctionBGM : table 
---@field id number
---@field chapterId number
---@field chapterDiff number
---@field bgmlist table
