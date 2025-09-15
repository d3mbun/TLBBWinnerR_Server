--×½ÕäÊŞÈÎÎñ

--************************************************************************
--MisDescBegin

--½Å±¾ºÅ
x210221_g_ScriptId = 210221

--ÉÏmµt cáiÈÎÎñtoÕ ğµ ID
x210221_g_MissionIdPre = 700

--ÈÎÎñºÅ
x210221_g_MissionId = 701

--Møc tiêu nhi®m vønpc
x210221_g_Name	="Vân Phiêu Phiêu"

--ÈÎÎñ¹éÀà
x210221_g_MissionKind = 13

--ĞÆng c¤p nhi®m vø 
x210221_g_MissionLevel = 7

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x210221_g_IfMissionElite = 0

--********ÏÂÃæ¼¸ÏîĞúng¶¯Ì¬ÏÔÊ¾toÕ ğµ ÄÚÈİ,ÓÃÓÚTÕi ÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
--ÈÎÎñĞúng·ñÒÑ¾­Íê³É
x210221_g_IsMissionOkFail = 0		--±äÁ¿toÕ ğµ µÚ0Î»
--**********************************ÒÔÉÏĞúng¶¯Ì¬****************************

--ÈÎÎñÎÄ±¾ÃèÊö
x210221_g_MissionName="B¡t ğßşc trân thú r°i"
x210221_g_MissionInfo="#{event_dali_0029}"  --ÈÎÎñÃèÊö
x210221_g_MissionTarget="#{event_dali_0030}"		--Møc tiêu nhi®m vø
x210221_g_ContinueInfo="Các hÕ ğã b¡t ğßşc v¸t con r°i?"		--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x210221_g_MissionComplete="#{event_dali_0031}"					--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°
x210221_g_SignPost = {x = 275, z = 50, tip = "Hoàng Mi Tång"}

--ÈÎÎñ½±Àø
x210221_g_MoneyBonus=20

--MisDescEnd
--************************************************************************

--½ÇÉ«Mission±äÁ¿Ë ği¬m÷
x210221_g_Param_ok=0	--0ºÅ: µ±Ç°ÈÎÎñĞúng·ñÍê³É(0Î´Íê³É£»1Íê³É)
--1ºÅ: Î´ÓÃ
--2ºÅ: Î´ÓÃ
--3ºÅ: Î´ÓÃ
--4ºÅ: Î´ÓÃ
--5ºÅ: Î´ÓÃ
--6ºÅ: Î´ÓÃ
--7ºÅ: Î´ÓÃ
x210221_g_PetDataID=558	--ÈÎÎñÕäÊŞtoÕ ğµ ±àºÅ


--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x210221_OnDefaultEvent( sceneId, selfId, targetId )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	if IsHaveMission(sceneId,selfId,x210221_g_MissionId) > 0 then	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
		--·¢ËÍÈÎÎñĞèÇótoÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210221_g_MissionName)
			AddText(sceneId,x210221_g_ContinueInfo)
			AddMoneyBonus( sceneId, x210221_g_MoneyBonus )
		EndEvent( )
		bDone = x210221_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210221_g_ScriptId,x210221_g_MissionId,bDone)
	elseif x210221_CheckAccept(sceneId,selfId) > 0 then		--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x210221_g_MissionName)
				AddText(sceneId,x210221_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210221_g_MissionTarget)
				--for i, item in g_ItemBonus do
				--	AddItemBonus( sceneId, item.id, item.num )
				--end
				AddMoneyBonus( sceneId, x210221_g_MoneyBonus )
				EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210221_g_ScriptId,x210221_g_MissionId)
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x210221_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼mµt ¹Î´Íê³ÉÉÏmµt cáiÈÎÎñ
    if 	IsMissionHaveDone(sceneId,selfId,x210221_g_MissionIdPre) <= 0 then
    	return
    end
    --Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x210221_g_MissionId) > 0 then
		return
	end
    if IsHaveMission(sceneId,selfId,x210221_g_MissionId) > 0 then
			AddNumText(sceneId,x210221_g_ScriptId,x210221_g_MissionName,2,-1);
		--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x210221_CheckAccept(sceneId,selfId) > 0 then
			AddNumText(sceneId,x210221_g_ScriptId,x210221_g_MissionName,1,-1);
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x210221_CheckAccept( sceneId, selfId )
	--½ÓÊÕÌõ¼ş
	if GetLevel( sceneId, selfId ) >= x210221_g_MissionLevel then
		return 1
	else
		return 0
	end
end

--**********************************
--Tiªp thø
--**********************************
function x210221_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMissionEx( sceneId,selfId, x210221_g_MissionId, x210221_g_ScriptId )		--Ìí¼ÓÈÎÎñ
	SetMissionEvent(sceneId,selfId, x210221_g_MissionId,3)	--ÉèÖÃÈÎÎñÊÂ¼ş,3±íÊ¾ÕäÊŞ±ä»¯ÊÂ¼ş

	misIndex = GetMissionIndexByID(sceneId,selfId,x210221_g_MissionId)	-- ği¬mµ½ÈÎÎñtoÕ ğµ ĞòÁĞºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,x210221_g_Param_ok,0)	--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ0Î»ÖÃ0
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: B¡t trân thú",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210221_g_SignPost.x, x210221_g_SignPost.z, x210221_g_SignPost.tip )
end

--**********************************
--·ÅÆú
--**********************************
function x210221_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
    DelMission( sceneId, selfId, x210221_g_MissionId )
	petcount = LuaFnGetPetCount(sceneId, selfId) --È¡ ği¬mÕäÊŞÊıÁ¿
	for	i=0,petcount-1 do
		petdataid = LuaFnGetPet_DataID(sceneId, selfId, i) --È¡ ği¬mÕäÊŞ±àºÅ
		if petdataid==x210221_g_PetDataID then
			LuaFnDeletePet(sceneId, selfId, i)
		end
	end
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210221_g_SignPost.tip )
end

--**********************************
--¼ÌĞø
--**********************************
function x210221_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ğµ Ë ği¬m÷ĞÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210221_g_MissionName)
		AddText(sceneId,x210221_g_MissionComplete)
		AddMoneyBonus( sceneId, x210221_g_MoneyBonus )
		--for i, item in g_ItemBonus do
		--	AddItemBonus( sceneId, item.id, item.num )
		--end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210221_g_ScriptId,x210221_g_MissionId)
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x210221_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210221_g_MissionId )
	if bRet ~= 1 then
		return 0
	end
	
	-- ¼ì²éÍæ¼ÒÉíÉÏĞúng²»ĞúngÓĞÕâÑùtoÕ ğµ ³èÎï
	local nPetCount = LuaFnGetPetCount(sceneId, selfId)
	
	for i=0, nPetCount-1  do
		local nPetId = LuaFnGetPet_DataID(sceneId, selfId, i)
		
		if nPetId==558   then
			return 1
		end
	end

	return 0
end

--**********************************
--Ìá½»
--**********************************
function x210221_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	--
	if x210221_CheckSubmit( sceneId, selfId ) < 1  then
		return
	end	
	
--	local ret1 = LuaFnDeletePet(sceneId, selfId, selectRadioId ) --É¾³ıÕäÊŞ
--	if ret1 > 0 then
		local ret0 = DelMission( sceneId, selfId, x210221_g_MissionId ) --É¾³ıÈÎÎñ
		if ret0>0  then
			AddMoney(sceneId,selfId,x210221_g_MoneyBonus );
			LuaFnAddExp( sceneId, selfId,700)
			MissionCom( sceneId,selfId, x210221_g_MissionId )
			Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø#W: B¡t trân thú",MSG2PLAYER_PARA )
			CallScriptFunction( 210223, "OnDefaultEvent",sceneId, selfId, targetId)
			BeginEvent(sceneId)
				strText = "Hoàn t¤t nhi®m vø: B¡t ğßşc trân thú"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
--	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210221_OnKillObject( sceneId, selfId, objdataId, objId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x210221_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210221_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--ÕäÊŞ¸Ä±ä
--**********************************
function x210221_OnPetChanged( sceneId, selfId, petdataId )
	if petdataId==x210221_g_PetDataID then --ĞúngÈÎÎñÕäÊŞ
		misIndex = GetMissionIndexByID(sceneId,selfId,x210221_g_MissionId)	-- ği¬mµ½ÈÎÎñtoÕ ğµ ĞòÁĞºÅ
		SetMissionByIndex(sceneId,selfId,misIndex,x210221_g_Param_ok,1)	--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ0Î»ÖÃ1

		BeginEvent(sceneId)
			strText = "B¡t ğßşc trân thú r°i, hoàn t¤t nhi®m vø!"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end

--**********************************
--Íæ¼ÒÌá½»toÕ ğµ ÎïÆ·¼°ÕäÊŞ
--**********************************
function x210221_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
end

--**********************************
--Íæ¼ÒÌá½»toÕ ğµ ÎïÆ·¼°ÕäÊŞ
--**********************************
function x210221_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
	
end
