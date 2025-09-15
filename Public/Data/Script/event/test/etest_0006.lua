--ÍÚ³öËÄÆ·Ò¶ÈË²Î
--NhÕn B¡c

--½Å±¾ºÅ
x804006_g_scriptId = 804006
--ÈÎÎñºÅ
x804006_g_MissionId = 4006

local  PlayerName=""
--ÈÎÎñÃû
x804006_g_missionName="ÍÚ³öËÄÆ·Ò¶ÈË²Î"
x804006_g_missionText_0="ÖªµÀÈË²ÎtoÕ ğµ ÆæÃî¹¦Ğ§?"
x804006_g_missionText_1="Àë´ËµØ²»Ô¶toÕ ğµ ÖÕÄÏÉ½,¾İËµ¿ÉÒÔÍÚµ½Ç§ÄêÈË²Î"

x804006_g_missionText_2="ÄãĞúngË­?µ½ÎÒ¹ÈÀï¸ÉÊ²Ã´?"

x804006_g_MoneyBonus=166
x804006_g_ItemBonus={{id=10105001,num=1}}
x804006_g_name	= ""

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x804006_OnDefaultEvent( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
  --if (IsMissionHaveDone(sceneId,selfId,x804006_g_MissionId) > 0 ) then
	-- 	return
	--else
	if( IsHaveMission(sceneId,selfId,x804006_g_MissionId) > 0)  then
		if x804006_CheckSubmit(sceneId,selfId) == 1 then
			BeginEvent(sceneId)
			AddText(sceneId,x804006_g_missionName)
			AddMoneyBonus( sceneId, x804006_g_MoneyBonus )
			EndEvent()
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x804006_g_scriptId,x804006_g_MissionId,1)
		else
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
			BeginEvent(sceneId)
			AddText(sceneId,x804006_g_missionName)
			AddText(sceneId,"Äã²¢Ã»ÓĞÈÎÎñµÀ¾ß20001001")
			AddMoneyBonus( sceneId, x804006_g_MoneyBonus )
			for i, item in x804006_g_ItemBonus do
					AddItemBonus( sceneId, item.id, item.num )
			end
			EndEvent( )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x804006_g_scriptId,x804006_g_MissionId,0)
	  end
			
  elseif x804006_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
		AddText(sceneId,x804006_g_missionName)
		AddText(sceneId,x804006_g_missionText_0)
		AddText(sceneId,x804006_g_missionText_1)
		AddMoneyBonus( sceneId, x804006_g_MoneyBonus )
		for i, item in x804006_g_ItemBonus do
					AddItemBonus( sceneId, item.id, item.num )
				end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x804006_g_scriptId,x804006_g_MissionId)
	
  end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x804006_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
    --if IsMissionHaveDone(sceneId,selfId,x804006_g_MissionId) > 0 then
    	--return 
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    --else
    if IsHaveMission(sceneId,selfId,x804006_g_MissionId) > 0 then
			if GetName(sceneId,targetId) == x804006_g_name then
				AddNumText(sceneId, x804006_g_scriptId,x804006_g_missionName);
			end
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x804006_CheckAccept(sceneId,selfId) > 0 then
			AddNumText(sceneId,x804006_g_scriptId,x804006_g_missionName);
    end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x804006_CheckAccept( sceneId, selfId )
	--C¥n 1c¤p²ÅÄÜ½Ó
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x804006_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId,selfId, x804006_g_MissionId, x804006_g_scriptId, 0, 0, 0 )
end

--**********************************
--·ÅÆú
--**********************************
function x804006_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
    DelMission( sceneId, selfId, x804006_g_MissionId )
end

--**********************************
--¼ÌĞø
--**********************************
function x804006_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ğµ Ë ği¬m÷ĞÅÏ¢
    BeginEvent(sceneId)
    AddText(sceneId,x804006_g_missionName)
    AddText(sceneId,x804006_g_missionText_2)
   	AddMoneyBonus( sceneId, x804006_g_MoneyBonus )
    for i, item in x804006_g_ItemBonus do
			AddItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x804006_g_scriptId,x804006_g_MissionId)
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x804006_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x804006_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	if HaveItem(sceneId,selfId,20001004) >= 1 then
		return 1
	end
	return 0
end

--**********************************
--Ìá½»
--**********************************
function x804006_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	if x804006_CheckSubmit( sceneId, selfId ) == 1 then
    	BeginAddItem(sceneId)
		for i, item in x804006_g_ItemBonus do
			AddItem( sceneId,item.id, item.num )
		end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
		if ret > 0 then
			DelItem(sceneId,selfId,20001001,1)
			AddItemListToHuman(sceneId,selfId)
			AddMoney(sceneId,selfId,x804006_g_MoneyBonus );
			--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
			MissionCom( sceneId,selfId,x804006_g_MissionId )
			DelMission( sceneId,selfId,x804006_g_MissionId )
			
			--CallScriptFunction( 201001, "OnDefaultEvent",sceneId, selfId, targetId)
		else
		--ÈÎÎñ½±ÀøÃ»ÓĞ¼Ó³É¹¦
			PrintStr("±³°ü¿Õ¼ä²»¹»")
		end
	        
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x804006_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x804006_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x804006_OnItemChanged( sceneId, selfId, itemdataId )
end








