--ÕÒÈËÈÎÎñ
--ÕÔÌìÊ¦Ñ°ÕÒÇ®Áú
--MisDescBegin
--½Å±¾ºÅ
x210205_g_ScriptId = 210205

--Tiªp thøÈÎÎñNPCÊôĞÔ
x210205_g_Position_X=266
x210205_g_Position_Z=234
x210205_g_SceneID=2
x210205_g_AccomplishNPC_Name="Ti«n Long"

--ÈÎÎñºÅ
x210205_g_MissionId = 445

--ÉÏmµt cáiÈÎÎñtoÕ ğµ ID
--g_MissionIdPre = 

--Ä¿±êNPC
x210205_g_Name	="Ti«n Long"

--ÈÎÎñ¹éÀà
x210205_g_MissionKind = 13

--ĞÆng c¤p nhi®m vø 
x210205_g_MissionLevel = 2

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x210205_g_IfMissionElite = 0

--ÈÎÎñÃû
x210205_g_MissionName="Quen biªt b¢ng hæu m¾i"
x210205_g_MissionInfo="#{event_dali_0008}"
x210205_g_MissionTarget="— #GNgû Hoa Ğàn thành ĞÕi Lı#W tìm 1 trong tÑ ğÕi thi®n nhân #RTi«n Long #W#{_INFOAIM145,138,2, Ti«n Long}. "
x210205_g_MissionComplete="#{event_dali_0009}"
x210205_g_MoneyBonus=20
x210205_g_SignPost = {x = 266, z = 234, tip = "Ti«n Long"}

x210205_g_Custom	= { {id="Ğã tìm ğßşc Ti«n Long",num=1} }
x210205_g_IsMissionOkFail = 1		--±äÁ¿toÕ ğµ µÚ0Î»

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x210205_OnDefaultEvent( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
    if (IsMissionHaveDone(sceneId,selfId,x210205_g_MissionId) > 0 ) then
    	return
	elseif( IsHaveMission(sceneId,selfId,x210205_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x210205_g_Name then
			x210205_OnContinue( sceneId, selfId, targetId )
		end
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x210205_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210205_g_Name then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x210205_g_MissionName)
				AddText(sceneId,x210205_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210205_g_MissionTarget)
				AddMoneyBonus( sceneId, x210205_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210205_g_ScriptId,x210205_g_MissionId)
		end
    end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x210205_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼mµt ¹Î´Íê³ÉÉÏmµt cáiÈÎÎñ
    --if 	IsMissionHaveDone(sceneId,selfId,g_MissionIdPre) <= 0 then
    --	return
    --end
    --Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
    if IsMissionHaveDone(sceneId,selfId,x210205_g_MissionId) > 0 then
    	return 
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    elseif IsHaveMission(sceneId,selfId,x210205_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x210205_g_Name then
			AddNumText(sceneId, x210205_g_ScriptId,x210205_g_MissionName,2,-1);
		end
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x210205_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210205_g_Name then
			AddNumText(sceneId,x210205_g_ScriptId,x210205_g_MissionName,1,-1);
		end
    end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x210205_CheckAccept( sceneId, selfId )
	--C¥n 2c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 2 then
		return 1
	else
		return 0
	end
end

--**********************************
--Tiªp thø
--**********************************
function x210205_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId,selfId, x210205_g_MissionId, x210205_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#Ytiªp nh§nnhi®m vø#W: quen bÕn m¾i",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210205_g_SignPost.x, x210205_g_SignPost.z, x210205_g_SignPost.tip )

	-- ÉèÖÃÈÎÎñÍê³É±êÖ¾
	local misIndex = GetMissionIndexByID(sceneId,selfId,x210205_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--·ÅÆú
--**********************************
function x210205_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
    DelMission( sceneId, selfId, x210205_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210205_g_SignPost.tip )
end

--**********************************
--¼ÌĞø
--**********************************
function x210205_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ğµ Ë ği¬m÷ĞÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210205_g_MissionName)
		AddText(sceneId,x210205_g_MissionComplete)
		AddMoneyBonus( sceneId, x210205_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210205_g_ScriptId,x210205_g_MissionId)
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x210205_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210205_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x210205_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210205_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId,x210205_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,100)
		DelMission( sceneId,selfId,  x210205_g_MissionId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
		MissionCom( sceneId,selfId,  x210205_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø#W: quen bÕn m¾i",MSG2PLAYER_PARA )
		CallScriptFunction( 210207, "OnDefaultEvent",sceneId, selfId, targetId)
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210205_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x210205_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210205_OnItemChanged( sceneId, selfId, itemdataId )
end
