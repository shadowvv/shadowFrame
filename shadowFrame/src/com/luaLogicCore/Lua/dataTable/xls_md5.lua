---@class xls_md5_Xls : table 
xls_md5_Xls =
{
    ["1"]={ID=1,tableName="这个表格只是为了生成cs结构的 不要删除",md5="yyy"},
}
--生成获取数据的方法
---@return xls_md5
function Getxls_md5Data(id)
    return xls_md5_Xls[tostring(id)]
end
--自动生成注释
---@class xls_md5 : table 
---@field ID number
---@field tableName string
---@field md5 string
