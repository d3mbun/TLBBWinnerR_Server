--µöµ½Ë®¹íºÅ½Ç
--NhÕn B¡c

--½Å±¾ºÅ
x804007_g_scriptId = 804007

--ÈÎÎñºÅ
x804007_g_MissionId = 4007

--Ä¿±êNPC

--ÈÎÎñÃû
local  PlayerName=""
x804007_g_missionName="Ë®¹íºÅ½Ç"
x804007_g_missionText_0="ºÅ½Ç,Ë®¹ítoÕ ğµ ºÅ½Ç"
x804007_g_missionText_1="Ë®¹í³öÃ»toÕ ğµ Ë®Óò"
x804007_g_missionText_2="ÄãĞúngË­?µ½ÎÒ¹ÈÀï¸ÉÊ²Ã´?"
x804007_g_MoneyBonus=166
x804007_g_ItemBonus={{id=10105001,num=1}}
x804007_g_name	= ""

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x804007_OnDefaultEvent( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
  if (IsMissionHaveDone(sceneId,selfId,x804007_g_MissionId) > 0 ) then
  	return
	elseif( IsHaveMission(sceneId,selfId,x804007_g_MissionId) > 0)  then
		if x804007_CheckSubmit(sceneId,targetId) == 1 then
			BeginEvent(sceneId)
			AddText(sceneId,x804007_g_missionName)
			AddMoneyBonus( sceneId, x804007_g_MoneyBonus )
			EndEvent()
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x804007_g_scriptId,x804007_g_MissionId,1)
		else
			BeginEvent(sceneId)
			AddText(sceneId,x804007_g_missionName)
			AddMoneyBonus( sceneId, x804007_g_MoneyBonus )
			EndEvent()
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x804007_g_scriptId,x804007_g_MissionId,0)
		end
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
  elseif x804007_CheckAccept(sceneId,selfId) > 0 then
		name = GetName(sceneId,selfId)
		playname = format("Íæ¼ÒtoÕ ğµ TênĞúng:%s\n",name)
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
		AddText(sceneId,x804007_g_missionName)
		AddText(sceneId,x804007_g_missionText_0)
		AddText(sceneId,playname)
		AddText(sceneId,x804007_g_missionText_1)
		AddMoneyBonus( sceneId, x804007_g_MoneyBonus )
		for i, item in x804007_g_ItemBonus do
					AddItemBonus( sceneId, item.id, item.num )
				end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x804007_g_scriptId,x804007_g_MissionId)
  end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x804007_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
    if IsMissionHaveDone(sceneId,selfId,x804007_g_MissionId) > 0 then
    	return 
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    elseif IsHaveMission(sceneId,selfId,x804007_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x804007_g_name then
			AddNumText(sceneId, x804007_g_scriptId,x804007_g_missionName);
		end
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x804007_CheckAccept(sceneId,selfId) > 0 then
			AddNumText(sceneId,x804007_g_scriptId,x804007_g_missionName)
    end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x804007_CheckAccept( sceneId, selfId )
	return 1	
end

--**********************************
--Tiªp thø
--**********************************
function x804007_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId,selfId, x804007_g_MissionId, x804007_g_scriptId, 0, 0, 0 )
end

--**********************************
--·ÅÆú
--**********************************
function x804007_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
    DelMission( sceneId, selfId, x804007_g_MissionId )
end

--**********************************
--¼ÌĞø
--**********************************
function x804007_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ğµ Ë ği¬m÷ĞÅÏ¢
    BeginEvent(sceneId)
    AddText(sceneId,x804007_g_missionName)
     AddText(sceneId,x804007_g_missionText_2)
   AddMoneyBonus( sceneId, x804007_g_MoneyBonus )
    for i, item in x804007_g_ItemBonus do
		AddItemBonus( sceneId, item.id, item.num )
	end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x804007_g_scriptId,x804007_g_MissionId)
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x804007_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x804007_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

		if HaveItem(sceneId,selfId,20001002) >= 1 then
		return 1
	end
	return 0
end

--**********************************
--Ìá½»
--**********************************
function x804007_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x804007_CheckSubmit( sceneId, selfId ) == 1 then
    BeginAddItem(sceneId)
		for i, item in x804007_g_ItemBonus do
			AddItem( sceneId,item.id, item.num )
		end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
		if ret > 0 then
			if DelMission( sceneId,selfId,  x804007_g_MissionId ) ~= 1 then
				return
			end
			--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
			MissionCom( sceneId,selfId,  x804007_g_MissionId )
			AddItemListToHuman(sceneId,selfId)
			AddMoney(sceneId,selfId,x804007_g_MoneyBonus );
			
			CallScriptFunction( 201001, "OnDefaultEvent",sceneId, selfId, targetId)
		else
		--ÈÎÎñ½±ÀøÃ»ÓĞ¼Ó³É¹¦
		end
	        
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x804007_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x804007_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x804007_OnItemChanged( sceneId, selfId, itemdataId )
end








