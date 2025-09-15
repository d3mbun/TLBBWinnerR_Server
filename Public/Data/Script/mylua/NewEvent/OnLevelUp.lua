x045003_g_scriptId = 045003

function x045003_OnPlayerLevelUp(sceneId,selfId)
	local CharLevel = GetLevel(sceneId,selfId)

	local TopLevel10 = x045003_GetValue2Array(sceneId,10)
	if CharLevel > TopLevel10 then
		local DateStr = tostring(date("%Y-%m-%d_%H-%M-%S"))
		local CharStr = GetHumanGUID(sceneId, selfId)
		local CharName = GetName(sceneId, selfId)
		local CharMenp = GetMenPai(sceneId, selfId)
		
		BonusInfo = CharMenp.."+"..DateStr;
		
		x045003_Top10Process(sceneId,CharStr,CharName,CharLevel,BonusInfo)
	end
end

function x045003_GetValue2Array(sceneId,nValue)
	local handle = openfile('Var/DuaTop/TopLevel.txt', "r")
	local flag = {};
	
	for i = 1, 10 do
		local line = read(handle, "*l")
		if line ~= nil then
			line = tostring(line)
			local star1 = strfind(line,"-")
			local star2 = strfind(line,"=")
			local star3 = strfind(line,":")
			
			local Value1 = strsub(line,1,star1-1)
			local Value2 = strsub(line,star1+1,star2-1)
			local Value3 = strsub(line,star2+1,star3-1)
			local Value4 = strsub(line,star3+1,strlen(line))
			
			--flag[i] = {CharGuild, CharName, CharPoint, TIME}
			flag[i] = {tonumber(Value1), Value2, tonumber(Value3), Value4}
		end
	end
	
	if nValue ~= 0 then
		return tonumber(flag[nValue][3]);
	else
		return flag;
	end
end

function x045003_Top10Process(sceneId,nGuid,nName,nValue,nTime)
	--Sort Data--
	local TopArray = x045003_GetValue2Array(sceneId,0)
	local NewTopArray = {}
	
	local CharGuid = 0;
	local CharOld = 0;
	for i = 1, 10 do
		if nGuid == TopArray[i][1] then
			CharGuid = 1;
			CharOld = i;
			break
		end
	end
	
	if CharGuid == 1 then
		--Old CharGULD
		if CharOld > 1 and CharOld < 10 then		
			for i = CharOld, 9 do
				TopArray[i] = TopArray[i+1];
			end
		elseif CharOld == 1 then
			for i = 1, 9 do
				TopArray[i] = TopArray[i+1]
			end
		end
		
		TopArray[10] = {0,"@Name",1,1}
	end

	local Location = 10;
	for i = 1, 10 do
		if nValue > TopArray[i][3] then
			Location = i;
			break
		end
	end
	
	if Location == 1 then
		NewTopArray[1] = {nGuid, nName, nValue, nTime}
		for i = 2, 10 do
			NewTopArray[i] = TopArray[i-1]
		end
	elseif Location == 10 then
		for i = 1, 9 do
			NewTopArray[i] = TopArray[i]
		end
		NewTopArray[10] = {nGuid, nName, nValue, nTime}
	elseif Location > 1 and Location < 10 then
		for i = 1, Location - 1 do
			NewTopArray[i] = TopArray[i]
		end
		NewTopArray[Location] = {nGuid, nName, nValue, nTime}
		for i = Location + 1, 10 do
			NewTopArray[i] = TopArray[i-1]
		end
	end
	
	--LuaFnAddGlobalCountNews(sceneId,nTime)
	
	--Save Data--
	local handle = openfile('Var/DuaTop/TopLevel.txt', "wb")
	if handle then
		for i = 1, 10 do
			write(handle, NewTopArray[i][1].."-"..NewTopArray[i][2].."="..NewTopArray[i][3]..":"..NewTopArray[i][4].."\n")
		end
		closefile(handle)
	end
end

function x045003_Syn2Client(sceneId,selfId,type)
	if GetMissionData(sceneId,selfId,CLICK_TIME_LIMIT) >= LuaFnGetCurrentTime() - 4 then
		x045003_Noitice(sceneId,selfId,"Vui lòng nh¤p chuµt ch§m rãi, t× t¯n!")
		return
	end
	
	SetMissionData(sceneId,selfId,CLICK_TIME_LIMIT,LuaFnGetCurrentTime())
	x045003_Noitice(sceneId,selfId,"C§p nh§t dæ li®u hoàn t¤t!")
	
	local handle = openfile('Var/DuaTop/TopLevel.txt', "r")
	local flag = {};
	
	for i = 1, 10 do
		local line = read(handle, "*l")
		if line ~= nil then			
			--flag[i] = {CharGuild, CharName, CharPoint, TIME}
			flag[i] = tostring(line);
		end
	end
	
	BeginUICommand(sceneId)
		UICommand_AddString(sceneId,"")
		for i = 1, 10 do
			UICommand_AddString(sceneId,flag[i])
		end
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId,1003002)
end

function x045003_Noitice(sceneId,selfId,str)
	BeginEvent(sceneId)
		AddText(sceneId,str)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end