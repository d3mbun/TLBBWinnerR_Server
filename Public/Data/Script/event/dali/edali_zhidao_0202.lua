--Ñ°ÎïÈÎÎñ
--¶Å×ÓÌÚÒªÄã¸øËûÕÒµ½mµt cáiÂøÍ·
--MisDescBegin
--½Å±¾ºÅ
x210202_g_ScriptId = 210202

x210202_g_Position_X=110.0841
x210202_g_Position_Z=158.7671
x210202_g_SceneID=2
x210202_g_AccomplishNPC_Name="Ð² TØ Ð¢ng"

--ÈÎÎñºÅ
x210202_g_MissionId = 442

--ÉÏmµt cáiÈÎÎñtoÕ ðµ ID
x210202_g_MissionIdPre = 441

--Ä¿±êNPC
x210202_g_Name	="Ð² TØ Ð¢ng"

--ÈÎÎñµÀ¾ß±àºÅ
x210202_g_ItemId = 30101001

--ÈÎÎñµÀ¾ßÐèÇóÊýÁ¿
x210202_g_ItemNeedNum = 1

--ÈÎÎñ¹éÀà
x210202_g_MissionKind = 13

--ÐÆng c¤p nhi®m vø 
x210202_g_MissionLevel = 1

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x210202_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîÐúng¶¯Ì¬ÏÔÊ¾toÕ ðµ ÄÚÈÝ,ÓÃÓÚTÕi ÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************

--ÒÔÉÏÐúng¶¯Ì¬**************************************************************

--ÈÎÎñC¥n  ði¬mµ½toÕ ðµ ÎïÆ·
x210202_g_DemandItem={{id=30101001,num=1}}		--±äÁ¿µÚ1Î»
x210202_g_IsMissionOkFail = 1		--±äÁ¿toÕ ðµ µÚ0Î»

--ÈÎÎñÃû
x210202_g_MissionName="Cái bánh bao thÑ nh¤t"
x210202_g_MissionInfo_1="  #R"
x210202_g_MissionInfo_2="#{event_dali_0004}"
x210202_g_MissionTarget="#{xinshou_002}"
x210202_g_MissionContinue="Các hÕ ðã làm #Ybánh bao#W xong chßa?"
x210202_g_MissionComplete="  Chà, xem ra tài nång n¤u nß¾ng cüa các hÕ không chï · mÑc bình thß¶ng"
x210202_g_MoneyBonus=1
x210202_g_SignPost = {x = 110, z = 159, tip = "Ð² TØ Ð¢ng"}
x210202_g_RadioItemBonus={{id=30304030 ,num=1},{id=30304031,num=1}}
--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x210202_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ(Êµ¼ÊÉÏÈç¹ûÍê³ÉÁËÈÎÎñÕâÀï¾Í²»»áÏÔÊ¾,µ«ÐúngÔÙ¼ì²âmµt ´Î±È½Ï°²È«)
    --if IsMissionHaveDone(sceneId,selfId,x210202_g_MissionId) > 0 then
	--	return
	--end
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
		if IsHaveMission(sceneId,selfId,x210202_g_MissionId) > 0 then
			--·¢ËÍÈÎÎñÐèÇótoÕ ðµ ÐÅÏ¢
			BeginEvent(sceneId)
			AddText(sceneId,x210202_g_MissionName)
			AddText(sceneId,x210202_g_MissionContinue)
			for i, item in x210202_g_DemandItem do
				AddItemDemand( sceneId, item.id, item.num )
			end
			AddMoneyBonus( sceneId, x210202_g_MoneyBonus )
			EndEvent( )
			bDone = x210202_CheckSubmit( sceneId, selfId )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x210202_g_ScriptId,x210202_g_MissionId,bDone)
		--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
		elseif x210202_CheckAccept(sceneId,selfId) > 0 then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
				local  PlayerName=GetName(sceneId,selfId)	
	            local  PlayerSex=GetSex(sceneId,selfId)
	            if PlayerSex == 0 then
		            PlayerSex = " cô nß½ng"
	            else
		            PlayerSex = " các hÕ"
	            end
			BeginEvent(sceneId)
				AddText(sceneId,x210202_g_MissionName)
				AddText(sceneId,x210202_g_MissionInfo_1..PlayerName..PlayerSex..x210202_g_MissionInfo_2)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210202_g_MissionTarget)
				for i, item in x210202_g_RadioItemBonus do
					AddItemBonus( sceneId, item.id, item.num )
				end
				AddMoneyBonus( sceneId, x210202_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210202_g_ScriptId,x210202_g_MissionId)
		end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x210202_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼mµt ¹Î´Íê³ÉÉÏmµt cáiÈÎÎñ
    if 	IsMissionHaveDone(sceneId,selfId,x210202_g_MissionIdPre) <= 0 then
    	return
    end
    --Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
    if IsMissionHaveDone(sceneId,selfId,x210202_g_MissionId) > 0 then
    	return 
	end
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x210202_g_MissionId) > 0 then
		AddNumText(sceneId,x210202_g_ScriptId,x210202_g_MissionName,2,-1);
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x210202_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210202_g_ScriptId,x210202_g_MissionName,1,-1);
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x210202_CheckAccept( sceneId, selfId )
	--C¥n 1c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 1 then
		return 1
	else
		return 0
	end
end

--**********************************
--Tiªp thø
--**********************************
function x210202_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId,selfId, x210202_g_MissionId, x210202_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: bánh bao thÑ nh¤t",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210202_g_SignPost.x, x210202_g_SignPost.z, x210202_g_SignPost.tip )
end

--**********************************
--·ÅÆú
--**********************************
function x210202_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
    DelMission( sceneId, selfId, x210202_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210202_g_SignPost.tip )
end

--**********************************
--¼ÌÐø
--**********************************
function x210202_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210202_g_MissionName)
		AddText(sceneId,x210202_g_MissionComplete)
		AddMoneyBonus( sceneId, x210202_g_MoneyBonus )
		for i, item in x210202_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210202_g_ScriptId,x210202_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x210202_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210202_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	for i, item in x210202_g_DemandItem do
		itemCount = GetItemCount( sceneId, selfId, item.id )
		if itemCount < item.num then
			return 0
		end
	end
	return 1
end

--**********************************
--Ìá½»
--**********************************
function x210202_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210202_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		BeginAddItem(sceneId)
			for i, item in x210202_g_RadioItemBonus do
				if item.id == selectRadioId then
					AddItem( sceneId,item.id, item.num )
				end
			end
		ret = EndAddItem(sceneId,selfId)
		
		local DelRet = 1
		for i, item in x210202_g_DemandItem do
		  --qds ¿Û³ýÎïÆ·ÐÞ¸Ä
			if LuaFnDelAvailableItem( sceneId, selfId, item.id, item.num ) < 1 then
				DelRet = 0
			end
		end
		if DelRet == 0  then 
			Msg2Player(  sceneId, selfId,"#Ykh¤u tr× bánh bao th¤t bÕi#W",MSG2PLAYER_PARA )
			BeginEvent(sceneId)
				strText = "Kh¤u tr× bánh bao th¤t bÕi, phäi chång ðã b¸ khóa?"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		
		if ret > 0 then
			AddMoney(sceneId,selfId,x210202_g_MoneyBonus );
			LuaFnAddExp(sceneId, selfId,20)
			ret = DelMission( sceneId, selfId, x210202_g_MissionId )
			if ret > 0 then
				MissionCom( sceneId, selfId, x210202_g_MissionId )
				AddItemListToHuman(sceneId,selfId)
--				--¿Û³ýÈÎÎñÎïÆ·
--				for i, item in x210202_g_DemandItem do
--					if DelItem( sceneId, selfId, item.id, item.num ) < 1 then
--						DelRet = 0
--					end
--				end
				Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø#W: bánh bao thÑ nh¤t",MSG2PLAYER_PARA )
				CallScriptFunction( 210203, "OnDefaultEvent",sceneId, selfId, targetId)
			end
		else
			--ÈÎÎñ½±ÀøÃ»ÓÐ¼Ó³É¹¦
			BeginEvent(sceneId)
				strText = "Không th¬ Hoàn t¤t nhi®m vø"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210202_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x210202_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210202_OnItemChanged( sceneId, selfId, itemdataId )
	if itemdataId == 30101001 then 
		local misIndex = GetMissionIndexByID(sceneId,selfId,x210202_g_MissionId)
		SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	end
	
end
