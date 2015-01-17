--[[
Copyright (C) 2014 LianHongrui

标题: ParaCraft反作弊引擎
版本：Alpha 0.0.3 [003]
作者: Eric，哟嘿
创建时间: 2014年10月03日
最后修改时间: 2014年10月03日
描述: 反作弊引擎主体
Eric_Lian <https://github.com/ExerciseBook> 版权所有©
]]--
function main(entity)
	local mode= GameLogic.GameMode:GetMode();
	local script = blocks.getscript(19741, 90 , 20193, true);
	if (mode== 'editor') and (script.on==1) then 
			script.cheats=(script.cheats or 0) +1;
			cmd("/tip 请遵守游戏规则，不要作弊",nil,entity);
			cmd(string.format("/tip 累计检测作弊次数%d",script.cheats),nil,entity);
			cmd("/mode",nil,entity);
	end
	cmd("/activate ~ ~ ~",nil,entity);
end