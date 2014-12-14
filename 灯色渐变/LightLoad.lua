--[[
Copyright (C) 2014 LianHongrui

标题: ParaCraft灯光渐变
版本：Alpha 0.0.1 [001]
作者: Eric
创建时间: 2014年12月14日
最后修改时间: 2014年12月14日
描述: 灯光渐变初始化

尊重作者版权：小伙伴们麻烦在空间里调用的时候顺手加上一句：灯光渐变由Eric提供

Eric_Lian <https://github.com/ExerciseBook> 版权所有©
]]--
function main(entity)


	local script = blocks.getscript(19175, 5 , 19236, true)
		-- 从坐标为 19741 90 20193 的空气方块中获取全局变量映射到 script 变量

	-- 颜色取值范围 0~1.48 对应[0~255]
	script.rl=0.0;
		-- 红色渐变下标
	script.rr=0.0;
		-- 红色渐变上标
		
	script.gl=0.74;
		-- 绿色渐变下标
	script.gr=1.48;
		-- 绿色渐变上标
		
	script.bl=1.48;
		-- 蓝色渐变下标
	script.br=1.48;
		-- 蓝色渐变上标
	
	
	--[[上面的是设置内容]]--
	
	script.r=(script.rl+script.rr)/2;
	script.rw=1;
	script.g=(script.gl+script.gr)/2;
	script.gw=1;
	script.b=(script.bl+script.br)/2;
	script.bw=1;
	
end