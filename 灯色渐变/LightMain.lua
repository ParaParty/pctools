--[[
Copyright (C) 2014 LianHongrui

标题: ParaCraft灯光渐变
版本：Alpha 0.0.1 [001]
作者: Eric
创建时间: 2014年12月14日
最后修改时间: 2014年12月14日
描述: 灯光渐变主体

尊重作者版权：小伙伴们麻烦在空间里调用的时候顺手加上一句：灯光渐变由Eric提供

Eric_Lian <https://github.com/ExerciseBook> 版权所有©
]]--
function main(entity)

	local script = blocks.getscript(19175, 5 , 19236, true)
		-- 从坐标为 19741 90 20193 的空气方块中获取全局变量映射到 script 变量
	
	local ChangeRange=math.random()/50;
	
	
	-- 红色渐变
	if script.rr-script.rl~=0 then
		ChangeRange=math.random()/50;
		if script.rw==1 then
			if script.r+ChangeRange>script.rr then 
				script.r=script.rr;
				script.rw=2;
			else
				script.r=script.r+ChangeRange;
			end
		else
			if script.r-ChangeRange<script.rl then 
				script.r=script.rl;
				script.rw=1;
			else
				script.r=script.r-ChangeRange;
			end
		end;
	end;
	
	-- 绿色渐变
	if script.gr-script.gl~=0 then
		ChangeRange=math.random()/50;
		if script.gw==1 then
			if script.g+ChangeRange>script.gr then 
				script.g=script.gr;
				script.gw=2;
			else
				script.g=script.g+ChangeRange;
			end
		else
			if script.g-ChangeRange<script.gl then 
				script.g=script.gl;
				script.gw=1;
			else
				script.g=script.g-ChangeRange;
			end
		end;
	end;
	
	-- 蓝色渐变
		if script.br-script.bl~=0 then
		ChangeRange=math.random()/50;
		if script.bw==1 then
			if script.b+ChangeRange>script.br then 
				script.b=script.br;
				script.bw=2;
			else
				script.b=script.b+ChangeRange;
			end
		else
			if script.b-ChangeRange<script.bl then 
				script.b=script.bl;
				script.bw=1;
			else
				script.b=script.b-ChangeRange;
			end
		end;
	end;
	
	--cmd(string.format("/tip %.3f %.3f %.3f",script.r,script.g,script.b),nil,entity);
	cmd(string.format("/light %.2f %.2f %.2f",script.r,script.g,script.b),nil,entity);
	-- 改变灯色
	

	
end