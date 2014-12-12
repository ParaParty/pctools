--[[
Copyright (C) 2014 LianHongrui

标题: ParaCraft摔落引擎
版本：Alpha 0.0.4 [004]
作者: Eric
创建时间: 2014年11月30日
最后修改时间: 2014年12月07日
描述: 摔落引擎初始化

尊重作者版权：小伙伴们麻烦在空间里调用的时候顺手加上一句：重力伤害引擎由Eric提供
LiXizhi可以不用遵守上面那条规则【如果想在空间里这样增加一条小鸣谢我也不介意

Eric_Lian <https://github.com/ExerciseBook> 版权所有©
]]--
function main(entity)


	local script = blocks.getscript(19175, 5 , 19236, true)
		-- 从坐标为 19741 90 20193 的空气方块中获取全局变量映射到 script 变量
		local x, y, z = EntityManager.GetPlayer():GetBlockPos()
		-- 获取人物坐标
	script.topy=y;
	script.blood=20;
	-- 初始血量
	script.bloodadd=0;
	-- 初始血量添加计时器
	script.bloodicon=189;
	-- 血量显示图标，方块id
	cmd(string.format("/give %d 20",script.bloodicon),nil,entity);
end