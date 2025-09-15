--ÕÒÈËÈÎÎñ
--ÕÔÌìÊ¦Ñ°ÕÒ¶ÎÑÓÇì
--MisDescBegin
--½Å±¾ºÅ
x210225_g_ScriptId = 210225

--Tiªp thøÈÎÎñNPCÊôĞÔ
x210225_g_Position_X=214.8831
x210225_g_Position_Z=283.8709
x210225_g_SceneID=2
x210225_g_AccomplishNPC_Name="Ğoàn Diên Khánh"

--ÈÎÎñºÅ
x210225_g_MissionId = 705

--ÉÏmµt cáiÈÎÎñtoÕ ğµ ID
x210225_g_MissionIdPre = 704

--Ä¿±êNPC
x210225_g_Name	="Ğoàn Diên Khánh"

--ÈÎÎñ¹éÀà
x210225_g_MissionKind = 13

--ĞÆng c¤p nhi®m vø 
x210225_g_MissionLevel = 9

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x210225_g_IfMissionElite = 0

--ÈÎÎñÃû
x210225_g_MissionName="Ğoàn Diên Khánh"
x210225_g_MissionInfo="#{event_dali_0035}"
x210225_g_MissionTarget="— #Ghëm Ng÷c Nhî phía Ğông Nam thành ĞÕi Lı#W tìm #RĞoàn Diên Khánh#W#{_INFOAIM215,284,2, Ğoàn Diên Khánh}. "
x210225_g_MissionComplete="#{event_dali_0036}"
x210225_g_MoneyBonus=72
x210225_g_SignPost = {x = 215, z = 284, tip = "Ğoàn Diên Khánh"}

x210225_g_Custom	= { {id="Ğã tìm ğßşc Ğoàn Diên Khánh",num=1} }
x210225_g_IsMissionOkFail = 1		--±äÁ¿toÕ ğµ µÚ0Î»

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x210225_OnDefaultEvent( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
    if (IsMissionHaveDone(sceneId,selfId,x210225_g_MissionId) > 0 ) then
    	return
	elseif( IsHaveMission(sceneId,selfId,x210225_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x210225_g_Name then
			x210225_OnContinue( sceneId, selfId, targetId )
		end
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x210225_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210225_g_Name then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x210225_g_MissionName)
				AddText(sceneId,x210225_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210225_g_MissionTarget)
				AddMoneyBonus( sceneId, x210225_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210225_g_ScriptId,x210225_g_MissionId)
		end
    end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x210225_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼mµt ¹Î´Íê³ÉÉÏmµt cáiÈÎÎñ
    if 	IsMissionHaveDone(sceneId,selfId,x210225_g_MissionIdPre) <= 0 then
    	return
    end
    --Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
    if IsMissionHaveDone(sceneId,selfId,x210225_g_MissionId) > 0 then
    	return 
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    elseif IsHaveMission(sceneId,selfId,x210225_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x210225_g_Name then
			AddNumText(sceneId, x210225_g_ScriptId,x210225_g_MissionName,2,-1);
		end
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x210225_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210225_g_Name then
			AddNumText(sceneId,x210225_g_ScriptId,x210225_g_MissionName,1,-1);
		end
    end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x210225_CheckAccept( sceneId, selfId )
	--C¥n 8c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 8 then
		return 1
	else
		return 0
	end
end

--**********************************
--Tiªp thø
--**********************************
function x210225_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId,selfId, x210225_g_MissionId, x210225_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Ğoàn Diên Khánh",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210225_g_SignPost.x, x210225_g_SignPost.z, x210225_g_SignPost.tip )

	-- ÉèÖÃÈÎÎñÍê³É±êÖ¾
	local misIndex = GetMissionIndexByID(sceneId,selfId,x210225_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--·ÅÆú
--**********************************
function x210225_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
    DelMission( sceneId, selfId, x210225_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210225_g_SignPost.tip )
end

--**********************************
--¼ÌĞø
--**********************************
function x210225_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ğµ Ë ği¬m÷ĞÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210225_g_MissionName)
		AddText(sceneId,x210225_g_MissionComplete)
		AddMoneyBonus( sceneId, x210225_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210225_g_ScriptId,x210225_g_MissionId)
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x210225_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210225_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x210225_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210225_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId,x210225_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,100)
		DelMission( sceneId,selfId,  x210225_g_MissionId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
		MissionCom( sceneId,selfId,  x210225_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø#W: Ğoàn Diên Khánh",MSG2PLAYER_PARA )
		CallScriptFunction( 210226, "OnDefaultEvent",sceneId, selfId, targetId)
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210225_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x210225_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210225_OnItemChanged( sceneId, selfId, itemdataId )
end
