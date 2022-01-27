---@class ShaderVariant_Xls : table
ShaderVariant_Xls={
["2"]={ID=2,shaderName="Standard",passType="0,4,5,8",keywords="_ALPHABLEND_ON"},
["3"]={ID=3,shaderName="Standard",passType="0,4,5,8",keywords="_EMISSION"},
["4"]={ID=4,shaderName="Standard",passType="0,4,5,8",keywords="_DETAILBLENDDODGE_ON _NORMALMAP"},
["5"]={ID=5,shaderName="Standard",passType="0,4,5,8",keywords="_DETAILBLENDDODGE_ON _METALLICGLOSSMAP _NORMALMAP _SPECGLOSSMAP"},
["6"]={ID=6,shaderName="Standard",passType="0,4,5,8",keywords="_DETAILBLENDDODGE_ON _METALLICGLOSSMAP _NORMALMAP"},
["7"]={ID=7,shaderName="Standard",passType="0,4,5,8",keywords="_ALPHAPREMULTIPLY_ON"},
["8"]={ID=8,shaderName="Standard",passType="0,4,5,8",keywords="_EMISSION _METALLICGLOSSMAP"},
["9"]={ID=9,shaderName="Standard",passType="0,4,5,8",keywords="_LIGHTMAPPING_DYNAMIC_LIGHTMAPS _UVSEC_UV1"},
}
---@return ShaderVariant
function GetShaderVariantData(id)
	return ShaderVariant_Xls[tostring(id)]
end
---@class ShaderVariant : table
---@field ID number
---@field shaderName string
---@field passType string
---@field keywords string
