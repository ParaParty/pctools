function music_player()
-- t 运行时间
-- p 上一次的运行标记

	local script = blocks.getscript(19200, 5 , 19200, true);
	cmd("/runat @all /music off");
	
	script.Songt=script.Songt+333;
	if script.Songt%1000==999 then script.Songt=script.Songt+1 end;
	
	--cmd(string.format("/tip %s",script.Songt));
	

	while (script.Songp<=script.SongLa) and (script.Song[script.Songp].t<=script.Songt) do
		cmd(script.Song[script.Songp].c);
		script.Songp=script.Songp+1;
	end;
	
	if (script.Songp>script.SongLa) and (script.Songt>script.SongL) then 
		script.Songt=0;
		script.Songp=1;
		cmd("/runat @all /echo 背景音乐 : 萤火虫之愿 - 埋葬");
	end;
end

function main(entity)
	music_player();
	entity:SetFrameMoveInterval(1/30)
	cmd("/t 0.01 /activate",nil,entity)
	return false;
end;