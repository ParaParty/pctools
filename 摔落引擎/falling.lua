--[[
Copyright (C) 2014 LianHongrui

标题: ParaCraft摔落引擎
版本：Alpha 0.0.4 [004]
作者: Eric
创建时间: 2014年11月30日
最后修改时间: 2014年12月07日
描述: 摔落引擎主体

尊重作者版权：小伙伴们麻烦在空间里调用的时候顺手加上一句：重力伤害引擎由Eric提供
LiXizhi可以不用遵守上面那条规则【如果想在空间里这样增加一条小鸣谢我也不介意

Eric_Lian <https://github.com/ExerciseBook> 版权所有©
]]--
function main(entity)

	local mode= GameLogic.GameMode:GetMode()	

	local script = blocks.getscript(19175, 5 , 19236, true)
		-- 从坐标为 19741 90 20193 的空气方块中获取全局变量映射到 script 变量
	local x, y, z = EntityManager.GetPlayer():GetBlockPos()
		-- 获取人物坐标
	
	if mode=='editor' then
			
	else
		
			if  (BlockEngine:GetBlockId(x,y-1,z)~=0) and
				(BlockEngine:GetBlockId(x,y-1,z)~=75) and
				(BlockEngine:GetBlockId(x,y-1,z)~=76) and
				(BlockEngine:GetBlockId(x,y,z)~=75) and
				(BlockEngine:GetBlockId(x,y+1,z)~=75) and
				(BlockEngine:GetBlockId(x,y,z)~=76) and
				(BlockEngine:GetBlockId(x,y+1,z)~=76) and
				(BlockEngine:GetBlockId(x,y-1,z)~=118) and
				(BlockEngine:GetBlockId(x,y,z)~=118) and
				(BlockEngine:GetBlockId(x,y+1,z)~=118) and
				(BlockEngine:GetBlockId(x,y-1,z)~=113) and
				(BlockEngine:GetBlockId(x,y-1,z)~=114) and
				(BlockEngine:GetBlockId(x,y-1,z)~=132) and
				(BlockEngine:GetBlockId(x,y-1,z)~=100) and
				(BlockEngine:GetBlockId(x,y-1,z)~=112) and
				(BlockEngine:GetBlockId(x,y-1,z)~=189) and
				(BlockEngine:GetBlockId(x,y-1,z)~=164) and
				(BlockEngine:GetBlockId(x,y-1,z)~=208) and
				(BlockEngine:GetBlockId(x,y-1,z)~=213) and
				(BlockEngine:GetBlockId(x,y-1,z)~=218) and
				(BlockEngine:GetBlockId(x,y-1,z)~=211) and
				(BlockEngine:GetBlockId(x,y-1,z)~=166) and
				(BlockEngine:GetBlockId(x,y-1,z)~=221) and
				(BlockEngine:GetBlockId(x,y-1,z)~=103) and
				(BlockEngine:GetBlockId(x,y-1,z)~=175) and
				(BlockEngine:GetBlockId(x,y-1,z)~=190) and
				(BlockEngine:GetBlockId(x,y-1,z)~=200) and
				(BlockEngine:GetBlockId(x,y-1,z)~=201) and
				(BlockEngine:GetBlockId(x,y-1,z)~=191) and
				(BlockEngine:GetBlockId(x,y-1,z)~=192) and
				(BlockEngine:GetBlockId(x,y-1,z)~=105) and
				(BlockEngine:GetBlockId(x,y-1,z)~=161) and
				(BlockEngine:GetBlockId(x,y-1,z)~=197) and
				(BlockEngine:GetBlockId(x,y-1,z)~=198) and
				(BlockEngine:GetBlockId(x,y-1,z)~=233) and
				(BlockEngine:GetBlockId(x,y-1,z)~=231) and
				(BlockEngine:GetBlockId(x,y-1,z)~=109) and
				(BlockEngine:GetBlockId(x,y-1,z)~=195) and
				(BlockEngine:GetBlockId(x,y-1,z)~=162) and
				(BlockEngine:GetBlockId(x,y-1,z)~=224) and
				(BlockEngine:GetBlockId(x,y-1,z)~=167) and
				(BlockEngine:GetBlockId(x,y-1,z)~=168) and
				(BlockEngine:GetBlockId(x,y-1,z)~=214) and
				(BlockEngine:GetBlockId(x,y-1,z)~=169) and
				(BlockEngine:GetBlockId(x,y-1,z)~=104) and
				(BlockEngine:GetBlockId(x,y-1,z)~=172) and
				(BlockEngine:GetBlockId(x,y-1,z)~=173) and
				(BlockEngine:GetBlockId(x,y-1,z)~=188) and
				(BlockEngine:GetBlockId(x,y-1,z)~=111) and
				(BlockEngine:GetBlockId(x,y-1,z)~=206) and
				(BlockEngine:GetBlockId(x,y-1,z)~=187) and
				(BlockEngine:GetBlockId(x,y-1,z)~=163) then
						-- 如果玩家是在方块上
						if script.topy-y>=4 then
							cmd(string.format("/clearbag %d %d",script.bloodicon,(script.topy-y-3)),nil,entity);
							script.blood=script.blood-(script.topy-y-3);
							--cmd(string.format("/tip 剩余血量%d",script.blood),nil,entity);
							script.topy=y;
							if script.blood<=0 then 
								script.blood=20;
								--[[
									在此处添加你要的内容吧
									添加命令的方法：cmd("你的命令",nil,entity);
									如：
								]]--
								cmd("/tip 你挂掉了",nil,entity);
								cmd(string.format("/clearbag %d",script.bloodicon),nil,entity);
								cmd(string.format("/give %d 20",script.bloodicon),nil,entity);
							end;
						end;
						if (script.blood<20) and (script.bloodadd>=5) then
							script.blood=script.blood+1;
							script.bloodadd=0;
							cmd(string.format("/give %d 1",script.bloodicon),nil,entity);
							--cmd(string.format("/tip 剩余血量%d",script.blood),nil,entity);
						end;
						if (script.blood>=20) then
							script.bloodadd=0;
						end;
						script.topy=y;
						script.bloodadd=script.bloodadd+1;
				else
						--如果玩家不是在方块上
						if (BlockEngine:GetBlockId(x,y-1,z)==75) or
						   (BlockEngine:GetBlockId(x,y,z)==75) or
						   (BlockEngine:GetBlockId(x,y+1,z)==75) or
						   (BlockEngine:GetBlockId(x,y+2,z)==75) or
						   (BlockEngine:GetBlockId(x,y-1,z)==76) or
						   (BlockEngine:GetBlockId(x,y,z)==76) or
						   (BlockEngine:GetBlockId(x,y+1,z)==76) or
						   (BlockEngine:GetBlockId(x,y+2,z)==76) or
						   (BlockEngine:GetBlockId(x,y-1,z)==118) or
						   (BlockEngine:GetBlockId(x,y,z)==118) or
						   (BlockEngine:GetBlockId(x,y+1,z)==118) then
						   --当玩家在水上或者蜘蛛网里那就有保护啦
						   --[[
								脚下，身体，头上
								脚下 x y-1 z
								身体 x y z , x y+1 z
								头上 x y+2 z
						   ]]--
								script.topy=y;
						else
							if script.topy<y then script.topy=y end;
						end
						
				end;
	end
	
end

--[[
恩，能够有摔落保护的是 75 水

能够穿透的是：
	text	searchkey	mc_id	id
	水	水流动蓝兰	8	75
	静态水		9	76
	蜘蛛网	蜘蛛网	30	118
	草	草	311	113
	蕨	蕨	312	114
	枯灌木	枯灌木	32	132
	火把	火把	50	100
	橡木楼梯	橡木楼梯	53	112
	红石线	红石线	55	189
	小麦	小麦	59	164
	西红柿	西红柿		208
	物品展示框	物品展示框	68	213
	相册	相册	321	218
	告示牌	告示牌	63	211
	梯子	梯子	65	166
	含羞草	含羞草		221
	铁轨	铁轨	66	103
	圆石楼梯	圆石楼梯	67	175
	拉杆	拉杆	69	190
	石压力板	石压力板	70	200
	木压力板	木压力板	72	201
	红石火把	红石火把	75	191
	红石火把	红石火把	76	192
	按钮	按钮	77	105
	甘蔗	甘蔗	83	161
	红石中继器	红石中继器	93	197
	激活的红石中继器	激活的红石中继器	94	198
	封闭的木门(开)	封闭的木门(开)		233
	封闭的铁门(开)	封闭的铁门(开)	71	231
	木门(开)	木门(开)	96	109
	铁门(开)	铁门(开)		195
	藤蔓	藤蔓	106	162
	血迹	血迹		224
	砖楼梯	砖楼梯	108	167
	石砖楼梯	石砖楼梯	109	168
	地狱砖栅栏	地狱砖栅栏	113	214
	地狱砖楼梯	地狱砖楼梯	114	169
	沙石楼梯	沙石楼梯	128	104
	云杉木楼梯	云杉木楼梯	134	172
	桦木楼梯	桦木楼梯	135	173
	丛林木楼梯	丛林木楼梯	136	188
	圆石墙	圆石墙	139	111
	苔石墙	苔石墙	1391	206
	石英楼梯	石英楼梯	156	187
	水滴	水滴		163

]]--