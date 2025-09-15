--Ñ­»·ÈÎÎñ
--ÕÙ¼¯Í¬°é
--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x210211_g_ScriptId = 210211

--Tiªp thøÈÎÎñNPCÊôÐÔ
x210211_g_Position_X=173
x210211_g_Position_Z=146
x210211_g_SceneID=2
x210211_g_AccomplishNPC_Name="Tôn Bát Gia" 

--ÉÏmµt cáiÈÎÎñtoÕ ðµ ID
x210211_g_MissionIdPre =450

--ÈÎÎñºÅ
x210211_g_MissionId = 451

--Møc tiêu nhi®m vønpc
x210211_g_Name	="Tôn Bát Gia" 

x210211_g_ItemId	=30505062

--ÈÎÎñ¹éÀà
x210211_g_MissionKind = 13

--ÐÆng c¤p nhi®m vø 
x210211_g_MissionLevel = 3

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x210211_g_IfMissionElite = 0

--********ÏÂÃæ¼¸ÏîÐúng¶¯Ì¬ÏÔÊ¾toÕ ðµ ÄÚÈÝ,ÓÃÓÚTÕi ÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
x210211_g_IsMissionOkFail = 0					--±äÁ¿toÕ ðµ µÚ0Î»
--**********************************ÒÔÉÏÐúng¶¯Ì¬****************************


--ÈÎÎñÎÄ±¾ÃèÊö
x210211_g_MissionName="Phóng hoä pháo"
x210211_g_MissionInfo="#{event_dali_0013}"  --ÈÎÎñÃèÊöÖÁÓÚÊ²Ã´µØ·½ºÏÊÊ,ÄãÖ»Òª´ò¿ª#Y±³°ü#WÀïtoÕ ðµ ÈÎÎñÔ ðÕo cø ðã ð¥y¸,ÓÒ¼ü ði¬mmµt ÏÂCái này #Y´«Ñ¶Ñæ»ð#W,Ëü¾ÍÄÜ¸øÄãÏà¹ØtoÕ ðµ ÌáÊ¾.
x210211_g_MissionTarget="#{xinshou_003}"		--Møc tiêu nhi®m vø
x210211_g_ContinueInfo="  LØa ðã phóng ði chßa?"		--Î´Hoàn t¤t nhi®m vøtoÕ ðµ npc¶Ô»°
x210211_g_MissionComplete="#{event_dali_0015}"					--Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°
x210211_g_ItemBonus={{id=10111000,num=1}}
x210211_g_SignPost = {x = 173, z = 146, tip = "Tôn Bát Gia "}
x210211_g_MoneyBonus=72
x210211_g_SignPost_1 = {x = 82, z = 220, tip = "Ði¬m ð¯t Hoä pháo"}

x210211_g_Custom	= { {id="Ðã ð¯t Hoä pháo truy«n tin",num=1} }

--MisDescEnd
--************************************************************************

--½ÇÉ«Mission±äÁ¿Ë ði¬m÷
--0ºÅ: ÈÎÎñ×´Ì¬
--1ºÅ: 
--2ºÅ: ËùTÕi ³¡¾°±àºÅ
--3ºÅ: Ö¸¶¨x×ø±ê
--4ºÅ: Ö¸¶¨z×ø±ê
--5ºÅ: Î´ÓÃ
--6ºÅ: Î´ÓÃ
--7ºÅ: Î´ÓÃ

--±¦²ØÎ»ÖÃ
x210211_g_TreasureAddress = {	{scene=2,x=82,z=220}}
--						{scene=2,x=104,z=201},
--						{scene=2,x=242,z=55},
--						{scene=2,x=202,z=237},
--						{scene=2,x=255,z=232},
--						{scene=2,x=82,z=220},
--						{scene=2,x=46,z=255},
--						{scene=2,x=44,z=151},
--						{scene=2,x=79,z=222}}

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x210211_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	if IsHaveMission(sceneId,selfId,x210211_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñÐèÇótoÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210211_g_MissionName)
			AddText(sceneId,x210211_g_ContinueInfo)
			AddMoneyBonus( sceneId, x210211_g_MoneyBonus )
		EndEvent( )
		bDone = x210211_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210211_g_ScriptId,x210211_g_MissionId,bDone)
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x210211_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210211_g_MissionName)
			AddText(sceneId,x210211_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x210211_g_MissionTarget)
			for i, item in x210211_g_ItemBonus do
				AddItemBonus( sceneId, item.id, item.num )
			end
			AddMoneyBonus( sceneId, x210211_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x210211_g_ScriptId,x210211_g_MissionId)
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x210211_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼mµt ¹Î´Íê³ÉÉÏmµt cáiÈÎÎñ
    if 	IsMissionHaveDone(sceneId,selfId,x210211_g_MissionIdPre) <= 0 then
    	return
    end
	if IsMissionHaveDone(sceneId,selfId,x210211_g_MissionId) > 0 then
    	return 
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    elseif IsHaveMission(sceneId,selfId,x210211_g_MissionId) > 0 then
		AddNumText(sceneId,x210211_g_ScriptId,x210211_g_MissionName,2,-1);
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
    elseif x210211_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210211_g_ScriptId,x210211_g_MissionName,1,-1);
    end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x210211_CheckAccept( sceneId, selfId )
	--C¥n 3c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 3 then
		return 1
	else
		return 0
	end
end

--**********************************
--Tiªp thø
--**********************************
function x210211_OnAccept( sceneId, selfId )

	if x210211_CheckAccept(sceneId, selfId )<=0 then
		return
	end
	
	--x210211_g_sequence = random(3)					--¸ù¾Ý±¦ÎïµØ ði¬m×ÜÊý ðÕt ðßþcmµt cáiËæ»úÊý
	SceneNum = x210211_g_TreasureAddress[1].scene
	X		 = x210211_g_TreasureAddress[1].x
	Z		 = x210211_g_TreasureAddress[1].z
	--Ìí¼ÓÑÌ»¨
	BeginAddItem(sceneId)
		AddItem( sceneId,x210211_g_ItemId, 1 )
	local ret = EndAddItem(sceneId,selfId)
	
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#Yhành Trang nhi®m vø#W cüa các hÕ ðã ð¥y", MSG2PLAYER_PARA )
	
	else
		--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
		local ret1 = AddMission( sceneId,selfId, x210211_g_MissionId, x210211_g_ScriptId, 0, 0, 1 )
	
		if ret1 > 0  then
			
			--ÉèÖÃÈÎÎñ±äÁ¿±¦ÎïtoÕ ðµ ³¡¾°±àºÅºÍ×ø±êÎ»ÖÃ
			misIndex = GetMissionIndexByID(sceneId,selfId,x210211_g_MissionId)		-- ði¬mµ½ÈÎÎñTÕi 20cáiÈÎÎñÖÐtoÕ ðµ ÐòÁÐºÅ
			SetMissionByIndex(sceneId,selfId,misIndex,0,0)					--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚmµt Î»ÖÃ0	µÚmµt Î»ÐúngÍê³É/th¤t bÕiÇé¿ö
			SetMissionByIndex(sceneId,selfId,misIndex,2,SceneNum)		--°ÑµÚÈýÎ»ÖÃÎª±¦ÎïtoÕ ðµ ³¡¾°±àºÅ
			SetMissionByIndex(sceneId,selfId,misIndex,3,X)					--°ÑµÚËÄÎ»ÖÃÎª±¦ÎïtoÕ ðµ X×ø±ê
			SetMissionByIndex(sceneId,selfId,misIndex,4,Z)					--°ÑµÚÎåÎ»ÖÃÎª±¦ÎïtoÕ ðµ Z×ø±ê
			
			AddItemListToHuman(sceneId,selfId)
			Msg2Player( sceneId, selfId,"#YNh§n nhi®m vø#W: ð¯t Hoä pháo",MSG2PLAYER_PARA )
			
		  Msg2Player( sceneId, selfId, "@*;flagPOS;" .. sceneId .. ";" .. X .. ";" .. Z .. ";".."Ði¬m ð¯t Hoä pháo", MSG2PLAYER_PARA )
			Msg2Player( sceneId, selfId, "@*;flashPOS;" .. sceneId .. ";" .. X .. ";" .. Z .. ";" .. "Ði¬m ð¯t Hoä pháo", MSG2PLAYER_PARA )
			BeginEvent(sceneId)
				AddText(sceneId, "Các hÕ ðã nh§n Hoä pháo truy«n tin");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210211_g_SignPost_1.x, x210211_g_SignPost_1.z, x210211_g_SignPost_1.tip )
		else
			Msg2Player( sceneId, selfId,"#YDanh sách nhi®m vø#W: cüa các hÕ ðã ð¥y r°i", MSG2PLAYER_PARA )
		
		end
	end
end

--**********************************
--·ÅÆú
--**********************************
function x210211_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
    res = DelMission( sceneId, selfId, x210211_g_MissionId )
	if res > 0 then
		--ÒÆÈ¥ÈÎÎñÎïÆ·
		DelItem( sceneId, selfId, x210211_g_ItemId, 1 )
		--CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210211_g_SignPost.tip )
		
	  Msg2Player( sceneId, selfId, "@*;flagNPCdel;" .. sceneId .. ";" .. "Ði¬m ð¯t Hoä pháo", MSG2PLAYER_PARA )
	  Msg2Player( sceneId, selfId, "@*;flashNPCdel;" .. sceneId .. ";" .. "Ði¬m ð¯t Hoä pháo", MSG2PLAYER_PARA )
		
		
	end
end

--**********************************
--¼ÌÐø
--**********************************
function x210211_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210211_g_MissionName)
		AddText(sceneId,x210211_g_MissionComplete)
		AddMoneyBonus( sceneId, x210211_g_MoneyBonus )
		for i, item in x210211_g_ItemBonus do
			AddItemBonus( sceneId,item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210211_g_ScriptId,x210211_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x210211_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210211_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	misIndex = GetMissionIndexByID(sceneId,selfId,x210211_g_MissionId)
	x210211_g_MissionCondition = GetMissionParam(sceneId,selfId,misIndex,0)		-- ðÕt ðßþcÈÎÎñ×´Ì¬
	if	x210211_g_MissionCondition>=1	then
		return	1
	else
		return	0
	end
end

--**********************************
--Ìá½»
--**********************************
function x210211_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x210211_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
    	BeginAddItem(sceneId)
			for i, item in x210211_g_ItemBonus do
				AddItem( sceneId,item.id, item.num )
			end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
			if ret > 0 then
					AddMoney(sceneId,selfId,x210211_g_MoneyBonus );
					LuaFnAddExp( sceneId, selfId,400)
					ret = DelMission( sceneId, selfId, x210211_g_MissionId )
				if ret > 0 then
					MissionCom( sceneId, selfId, x210211_g_MissionId )
					AddItemListToHuman(sceneId,selfId)
					Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø#W: Ð¯t Hoä pháo",MSG2PLAYER_PARA )
					CallScriptFunction( 210212, "OnDefaultEvent",sceneId, selfId, targetId)
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
function x210211_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x210211_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210211_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--µÀ¾ßÊ¹ÓÃ
--**********************************
function x210211_OnUseItem( sceneId, selfId, BagIndex )
	misIndex = GetMissionIndexByID(sceneId,selfId,x210211_g_MissionId)
	x210211_g_MissionCondition = GetMissionParam(sceneId,selfId,misIndex,0)		-- ðÕt ðßþcÈÎÎñ×´Ì¬
	scene = GetMissionParam(sceneId,selfId,misIndex,2)					-- ðÕt ðßþc±¦Îï³¡¾°ºÅ
	treasureX = x210211_g_SignPost_1.x				-- ðÕt ðßþc±¦ÎïX×ø±ê
	treasureZ = x210211_g_SignPost_1.z				-- ðÕt ðßþc±¦ÎïZ×ø±ê	
	--Èç¹ûÈÎÎñÒÑ¾­Íê³É
	if x210211_g_MissionCondition == 1 then
		BeginEvent(sceneId)
			AddText(sceneId,"Phát ra Hoä pháo truy«n tin thành công")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--È¡ ði¬mÍæ¼Òµ±Ç°×ø±ê
	PlayerX = GetHumanWorldX(sceneId,selfId)
	PlayerZ = GetHumanWorldZ(sceneId,selfId)
	--¼ÆËãÍæ¼ÒÓë±¦²ØtoÕ ðµ ¾àÀë
	Distance = floor(sqrt((treasureX-PlayerX)*(treasureX-PlayerX)+(treasureZ-PlayerZ)*(treasureZ-PlayerZ)))
	if sceneId==scene or sceneId==71 or sceneId==72 then
	else
		BeginEvent(sceneId)
			AddText(sceneId,"C½ h° · cänh này không th¬ phát ra Hoä pháo truy«n tin")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	if Distance > 5 then
		BeginEvent(sceneId)
			AddText(sceneId,"Ði¬m ð¯t Hoä pháo truy«n tin còn cách khoäng "..Distance.." GÕo")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	elseif Distance <= 5 then
		SetMissionByIndex(sceneId,selfId,misIndex,0,1)		--°ÑÈÎÎñ×´Ì¬±äÁ¿ÉèÖÃÎª1,±íÊ¾ÒÑ¾­Íê³É
		SetMissionByIndex(sceneId,selfId,misIndex,1,1)		--°ÑÈÎÎñ×´Ì¬±äÁ¿ÉèÖÃÎª1,±íÊ¾ÒÑ¾­Íê³É
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210211_g_SignPost.x, x210211_g_SignPost.z, x210211_g_SignPost.tip )
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4825, 0);
		BeginEvent(sceneId)
			AddText(sceneId,"Ð® tØ các ðÕi môn phái ðßþc tin lû lßþt kéo t¾i, mau v« tìm Tôn Bát Gia ði")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		DelItem( sceneId, selfId, x210211_g_ItemId, 1 )
	end
end
