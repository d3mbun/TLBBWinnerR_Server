function x300017_OnDefaultEvent( sceneId, selfId, BagIndex )	
	PrintStr("dfgh")
	misIndex = GetMissionIndexByID(sceneId,selfId,4021)
	SetMissionByIndex(sceneId,selfId,misIndex,6,-1)

	local New_Time = LuaFnGetCurrentTime()
	local HaggleUp = 600 - New_Time + GetMissionParam(sceneId,selfId,misIndex,3)
	local HaggleDown = 900 - New_Time + GetMissionParam(sceneId,selfId,misIndex,4)
	local	circle	 = GetMissionData(sceneId,selfId,2)
	
	if(HaggleUp <0 ) then
		HaggleUp = 0
	end

	if(HaggleDown <0 ) then
		HaggleDown = 0
	end
	--begin modified by zhangguoxin 090209
	local iDayCount=GetMissionData(sceneId,selfId,MD_CAOYUN_DAYCOUNT)
	--local iTime = mod(iDayCount,100000)
	--local iDayTime = floor(iTime/100)	--ÉÏmµt ´Î½»ÈÎÎñtoÕ ðµ Ê±¼ä(ÌìÊý)
	--local iQuarterTime = mod(iTime,100)	--ÉÏmµt ´Î½»ÈÎÎñtoÕ ðµ Ê±¼ä(¿Ì)
	--local iDayHuan = floor(iDayCount/100000) --µ±ÌìÄÚÍê³ÉtoÕ ðµ S¯ l¥n nhi®m vø 
	local iDayHuan = iDayCount --µ±ÌìÄÚÍê³ÉtoÕ ðµ S¯ l¥n nhi®m vø  
	--end modified by zhangguoxin 090209

	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,5)
		UICommand_AddInt(sceneId,12)
		UICommand_AddInt(sceneId,HaggleUp)
		UICommand_AddInt(sceneId,HaggleDown)
		UICommand_AddInt(sceneId,circle)
		UICommand_AddInt(sceneId,misIndex)
		UICommand_AddInt(sceneId,iDayHuan)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 0)
end


function x300017_IsSkillLikeScript( sceneId, selfId)
	return 0;
end
