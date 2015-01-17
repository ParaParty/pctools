--[[
Copyright (C) 2014 LianHongrui

标题: ParaCraft摔落引擎
版本：Alpha 0.0.6 [006]
作者: Eric
创建时间: 2014年11月30日
最后修改时间: 2014年12月07日
描述:伤害引擎初始化

尊重作者版权：小伙伴们麻烦在空间里调用的时候顺手加上一句：重力伤害引擎由Eric提供
LiXizhi可以不用遵守上面那条规则【如果想在空间里这样增加一条小鸣谢我也不介意

本代码接受NPL协议保护

Eric_Lian <https://github.com/ExerciseBook> 版权所有©
]]--
function main(entity)


	local script = blocks.getscript(19175, 5 , 19236, true)
		-- 从坐标为 19741 90 20193 的空气方块中获取全局变量映射到 script 变量
	local x, y, z = EntityManager.GetPlayer():GetBlockPos()
		-- 获取人物坐标
		
		
	script.fallingEnable=1;
		-- 开关 0关 1开
	
	script.blood=20;
		-- 初始血量
	script.bloodaddtime=1;
		-- 回血时间，单位：秒
	script.bloodicon=189;
		-- 血量显示图标，方块id

	script.BurningHurtTime=1;
		-- 烧伤时间间隔时差，单位：秒
	script.LavaHurtTime=1;
		-- 岩浆伤害间隔时差，单位：秒
	
	
	--[[ 设置部分结束_初始化部分开始
	     前方高能预警，非战斗人员请撤离
	     再重复一遍，这不是演习 ]]--

	--[[总体部分控制]]--
	script.lastrun=os.clock();
	
	--[[摔落部分控制]]--
	script.topy=y;
		-- 摔落周期最高点
		
	--[[加血部分控制]]--
	script.bloodlastadd=os.clock();
		--上一次加血时间
		
	--[[燃烧部分控制]]--
	script.isBurning=0;
		-- 是否在燃烧，此为秒级的计时
	script.LastBurningHurt=os.clock();
		-- 上次被烧伤时间
	
	--[[岩浆部分控制]]--
	script.isInLava=0;
		-- 是否在岩浆内，0否 1是
	script.LastInLavaTime=os.clock();
		-- 上次在岩浆里被扣血的时间

	cmd(string.format("/give %d 20",script.bloodicon),nil,entity);
		-- 初始化用户血条
end