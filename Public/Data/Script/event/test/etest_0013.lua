--Ò¹·ÃÂí·òÈË
--NhÕn B¡c

--½Å±¾ºÅ
x804013_g_scriptId = 804013
--ÈÎÎñºÅ
x804013_g_MissionId = 4013


local  PlayerName=""
--ÈÎÎñÃû
x804013_g_missionName="Ò¹·ÃÂí·òÈË"
x804013_g_missionText_0="Ò¹·ÃÂí·òÈË,»¤ËÍÈÎÎñ"
x804013_g_missionText_1="»¤ËÍ¶ÎÕý´¾"

x804013_g_missionText_2="ÄãÐúngË­?µ½ÎÒ¹ÈÀï¸ÉÊ²Ã´?"

x804013_g_MoneyBonus=80000
x804013_g_ItemBonus={{id=10101001,num=1}}
x804013_g_name	= ""

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x804013_OnDefaultEvent( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if( IsHaveMission(sceneId,selfId,x804013_g_MissionId) > 0)  then
		if x804013_CheckSubmit(sceneId,selfId) == 1 then
			BeginEvent(sceneId)
			AddText(sceneId,x804013_g_missionName)
			AddMoneyBonus( sceneId, x804013_g_MoneyBonus )
			EndEvent()
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x804013_g_scriptId,x804013_g_MissionId,1)
		else
			BeginEvent(sceneId)
			AddText(sceneId,x804013_g_missionName)
			AddText(sceneId,"ÎÞÃûÖ®±²")
			EndEvent( )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x804013_g_scriptId,x804013_g_MissionId,0)
		end
			
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
  elseif x804013_CheckAccept(sceneId,selfId) > 0 then
		name = GetName(sceneId,selfId)
		playname = format("Íæ¼ÒtoÕ ðµ TênÐúng:%s\n",name)
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
		AddText(sceneId,x804013_g_missionName)
		AddText(sceneId,x804013_g_missionText_0)
		AddText(sceneId,playname)
		AddText(sceneId,x804013_g_missionText_1)
		AddMoneyBonus( sceneId, x804013_g_MoneyBonus )
		for i, item in x804013_g_ItemBonus do
					AddItemBonus( sceneId, item.id, item.num )
				end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x804013_g_scriptId,x804013_g_MissionId)
  end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x804013_OnEnumerate( sceneId, selfId, targetId )
   if IsHaveMission(sceneId,selfId,x804013_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x804013_g_name then
			AddNumText(sceneId, x804013_g_scriptId,x804013_g_missionName);
		end
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
    elseif x804013_CheckAccept(sceneId,selfId) > 0 then
			AddNumText(sceneId,x804013_g_scriptId,x804013_g_missionName)
    end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x804013_CheckAccept( sceneId, selfId )
	return 1	
end

--**********************************
--Tiªp thø
--**********************************
function x804013_OnAccept( sceneId, selfId ,targetId)
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId,selfId, x804013_g_MissionId, x804013_g_scriptId, 0, 0, 0 )
	timerIndex =SetTimer(sceneId,selfId,x804013_g_scriptId,"OnTimer",1000)
	misIndex = GetMissionIndexByID(sceneId,selfId,x804013_g_MissionId)
	SetMissionByIndex(sceneId,selfId,misIndex,0,timerIndex)
	SetMissionByIndex(sceneId,selfId,misIndex,1,targetId)
	SetPatrolId(sceneId,targetId,0)
end

function x804013_OnTimer(sceneId,selfId)
	misIndex = GetMissionIndexByID(sceneId,selfId,x804013_g_MissionId)
	x804013_g_sdhyTargetId = GetMissionParam(sceneId,selfId,misIndex,1)
  if IsInDist(sceneId,selfId,x804013_g_sdhyTargetId,64) < 0 then
  	DelMission(sceneId,selfId,x804013_g_MissionId)
  	StopTimer(sceneId,selfId,GetMissionParam(sceneId,selfId,misIndex,0))
  	Msg2Player(sceneId,selfId,"ÈÎÎñth¤t bÕi±£»¤,ÈÎÎñ±»HuÖ bö",MSG2PLAYER_PARA)
  	
  	--protectTargetId = GetMissionParam(sceneId,selfId,misIndex,1)
  	--RemoveMonster(sceneId,protectTargetId)
  end		
end

--**********************************
--·ÅÆú
--**********************************
function x804013_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
    DelMission( sceneId, selfId, x804013_g_MissionId )
end

--**********************************
--¼ÌÐø
--**********************************
function x804013_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
    BeginEvent(sceneId)
    AddText(sceneId,x804013_g_missionName)
     AddText(sceneId,x804013_g_missionText_2)
   AddMoneyBonus( sceneId, x804013_g_MoneyBonus )
    for i, item in x804013_g_ItemBonus do
		AddItemBonus( sceneId, item.id, item.num )
	end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x804013_g_scriptId,x804013_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x804013_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x804013_g_MissionId )
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
function x804013_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x804013_CheckSubmit( sceneId, selfId ) == 1 then
    BeginAddItem(sceneId)
		for i, item in x804013_g_ItemBonus do
			AddItem( sceneId,item.id, item.num )
		end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
		if ret > 0 then
			if DelMission( sceneId,selfId,  x804013_g_MissionId ) ~= 1 then
				return
			end
			if DelItem(sceneId,selfId,20001003,1) ~= 1 then
				return
			end
			
			--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ý
			MissionCom( sceneId,selfId,  x804013_g_MissionId )
			AddItemListToHuman(sceneId,selfId)
			AddMoney(sceneId,selfId,x804013_g_MoneyBonus );
			
			CallScriptFunction( 201001, "OnDefaultEvent",sceneId, selfId, targetId)
		else
		--ÈÎÎñ½±ÀøÃ»ÓÐ¼Ó³É¹¦
		end
	        
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x804013_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x804013_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x804013_OnItemChanged( sceneId, selfId, itemdataId )
end








