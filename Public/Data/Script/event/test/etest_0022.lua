-- ğÕt ğßşc³ÆºÅ
--NhÕn B¡c

--½Å±¾ºÅ
x804022_g_scriptId = 804022
--ÈÎÎñºÅ
x804022_g_MissionId = 4022


local  PlayerName=""
--ÈÎÎñÃû
x804022_g_missionName="³ÆºÅ"
x804022_g_missionText_0="³ÆºÅ,ÈËTÕi ½­ºş,ÑïÃûÁ¢Íò"
x804022_g_missionText_1="ÕÑÎäĞ£Î¾"

x804022_g_missionText_2="ÄãĞúngË­?µ½ÎÒ¹ÈÀï¸ÉÊ²Ã´?"

x804022_g_MoneyBonus=80000
x804022_g_ItemBonus={{id=10101001,num=1}}

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x804022_OnDefaultEvent( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
	if( IsHaveMission(sceneId,selfId,x804022_g_MissionId) > 0)  then
		if x804022_CheckSubmit(sceneId,selfId) == 1 then
			BeginEvent(sceneId)
			AddText(sceneId,x804022_g_missionName)
			AddMoneyBonus( sceneId, x804022_g_MoneyBonus )
			EndEvent()
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x804022_g_scriptId,x804022_g_MissionId,1)
		else
			BeginEvent(sceneId)
			AddText(sceneId,x804022_g_missionName)
			AddText(sceneId,"ÎŞÃûÖ®±²")
			EndEvent( )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x804022_g_scriptId,x804022_g_MissionId,0)
		end
			
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
  elseif x804022_CheckAccept(sceneId,selfId) > 0 then
		name = GetName(sceneId,selfId)
		playname = format("Íæ¼ÒtoÕ ğµ TênĞúng:%s\n",name)
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
		AddText(sceneId,x804022_g_missionName)
		AddText(sceneId,x804022_g_missionText_0)
		AddText(sceneId,playname)
		AddText(sceneId,x804022_g_missionText_1)
		AddMoneyBonus( sceneId, x804022_g_MoneyBonus )
		for i, item in x804022_g_ItemBonus do
					AddItemBonus( sceneId, item.id, item.num )
				end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x804022_g_scriptId,x804022_g_MissionId)
  end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x804022_OnEnumerate( sceneId, selfId, targetId )
   if IsHaveMission(sceneId,selfId,x804022_g_MissionId) > 0 then
		--if GetName(sceneId,targetId) == g_name then
			AddNumText(sceneId, x804022_g_scriptId,x804022_g_missionName);
		--end
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
   elseif x804022_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x804022_g_scriptId,x804022_g_missionName)
   end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x804022_CheckAccept( sceneId, selfId )
	return 1	
end

--**********************************
--Tiªp thø
--**********************************
function x804022_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId,selfId, x804022_g_MissionId, x804022_g_scriptId, 0, 0, 0 )
end

--**********************************
--·ÅÆú
--**********************************
function x804022_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
    DelMission( sceneId, selfId, x804022_g_MissionId )
end

--**********************************
--¼ÌĞø
--**********************************
function x804022_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ğµ Ë ği¬m÷ĞÅÏ¢
    BeginEvent(sceneId)
    AddText(sceneId,x804022_g_missionName)
     AddText(sceneId,x804022_g_missionText_2)
   AddMoneyBonus( sceneId, x804022_g_MoneyBonus )
    for i, item in x804022_g_ItemBonus do
		AddItemBonus( sceneId, item.id, item.num )
	end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x804022_g_scriptId,x804022_g_MissionId)
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x804022_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x804022_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	if GetTitle(sceneId,selfId,3) == 0 then
		return 1
	end
	return 0
end

--**********************************
--Ìá½»
--**********************************
function x804022_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x804022_CheckSubmit( sceneId, selfId ) == 1 then
    BeginAddItem(sceneId)
		for i, item in x804022_g_ItemBonus do
			AddItem( sceneId,item.id, item.num )
		end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
		if ret > 0 then
			if DelMission( sceneId,selfId,  x804022_g_MissionId ) ~=1 then
				return
			end
			if DelItem(sceneId,selfId,20001003,1) ~= 1 then
				return
			end
			
			--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
			MissionCom( sceneId,selfId,  x804022_g_MissionId )
			AddItemListToHuman(sceneId,selfId)
			AddMoney(sceneId,selfId,x804022_g_MoneyBonus );
			
			--CallScriptFunction( 201001, "OnDefaultEvent",sceneId, selfId, targetId)
			NewWorld(sceneId,selfId,19,10,10)
		else
		--ÈÎÎñ½±ÀøÃ»ÓĞ¼Ó³É¹¦
		end
	        
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x804022_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x804022_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x804022_OnItemChanged( sceneId, selfId, itemdataId )
end








