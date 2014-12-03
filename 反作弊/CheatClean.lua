--[[
标题: ParaCraft反作弊引擎
版本：Alpha 0.0.1 [001]
作者: Eric
创建时间: 2014年10月03日
最后修改时间: 2014年10月03日
描述: 反作弊引擎清空纪录
Eric_Lian <https://github.com/ExerciseBook> 版权所有©
]]--
function main(entity)
	local script = blocks.getscript(19741, 90 , 20193, true)
	script.cheats=0;
	cmd("/tip 作弊次数统计已清空",nil,entity)
end