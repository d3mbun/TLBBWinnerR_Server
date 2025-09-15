--ÕÒÈËÈÎÎñ
--ÕÔÌìÊ¦Ñ°ÕÒVân Phiêu Phiêu
--MisDescBegin
--½Å±¾ºÅ
x210214_g_ScriptId = 210214

--Tiªp thøÈÎÎñNPCÊôĞÔ
x210214_g_Position_X=400
x210214_g_Position_Z=218
x210214_g_SceneID=2
x210214_g_AccomplishNPC_Name="Vân Phiêu Phiêu"

--ÈÎÎñºÅ
x210214_g_MissionId = 454

--ÉÏmµt cáiÈÎÎñtoÕ ğµ ID
--g_MissionIdPre = 

--Ä¿±êNPC
x210214_g_Name	="Vân Phiêu Phiêu"

--ÈÎÎñ¹éÀà
x210214_g_MissionKind = 13

--ĞÆng c¤p nhi®m vø 
x210214_g_MissionLevel = 5

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x210214_g_IfMissionElite = 0

--ÈÎÎñÃû
x210214_g_MissionName="Con trân thú thÑ nh¤t"
x210214_g_MissionInfo="#{event_dali_0020}"
x210214_g_MissionTarget="Ğªn #YTrùng Ği¬u phß¶ng#W · #Gğß¶ng l¾n phía Ğông cüa thành ĞÕi Lı#W tìm phß¶ng chü #RVân Phiêu Phiêu #W#{_INFOAIM265,129,2, Vân Phiêu Phiêu}. "
x210214_g_MissionComplete="  Ta không tùy ti®n v¾i ngß¶i bình thß¶ng kªt giao b¢ng hæu, nhßng Ngß½i là bÕn cüa TÑ ĞÕi Thi®n Nhân. V§y ta s¨ nói cho ngß½i biªt mµt vài ği«u hay"
x210214_g_MoneyBonus=72
x210214_g_SignPost = {x = 400, z = 218, tip = "Vân Phiêu Phiêu"}

x210214_g_Custom	= { {id="Ğã tìm ğßşc Vân Phiêu Phiêu",num=1} }
x210214_g_IsMissionOkFail = 1		--±äÁ¿toÕ ğµ µÚ0Î»

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x210214_OnDefaultEvent( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
    if (IsMissionHaveDone(sceneId,selfId,x210214_g_MissionId) > 0 ) then
    	return
	elseif( IsHaveMission(sceneId,selfId,x210214_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x210214_g_Name then
			x210214_OnContinue( sceneId, selfId, targetId )
		end
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x210214_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210214_g_Name then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x210214_g_MissionName)
				AddText(sceneId,x210214_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210214_g_MissionTarget)
				AddMoneyBonus( sceneId, x210214_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210214_g_ScriptId,x210214_g_MissionId)
		end
    end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x210214_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼mµt ¹Î´Íê³ÉÉÏmµt cáiÈÎÎñ
    --if 	IsMissionHaveDone(sceneId,selfId,g_MissionIdPre) <= 0 then
    --	return
    --end
    --Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
    if IsMissionHaveDone(sceneId,selfId,x210214_g_MissionId) > 0 then
    	return 
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    elseif IsHaveMission(sceneId,selfId,x210214_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x210214_g_Name then
			AddNumText(sceneId, x210214_g_ScriptId,x210214_g_MissionName,2,-1);
		end
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x210214_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210214_g_Name then
			AddNumText(sceneId,x210214_g_ScriptId,x210214_g_MissionName,1,-1);
		end
    end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x210214_CheckAccept( sceneId, selfId )
	--C¥n 5c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 5 then
		return 1
	else
		return 0
	end
end

--**********************************
--Tiªp thø
--**********************************
function x210214_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId,selfId, x210214_g_MissionId, x210214_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: trân thú thÑ nh¤t",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210214_g_SignPost.x, x210214_g_SignPost.z, x210214_g_SignPost.tip )

	-- ÉèÖÃÈÎÎñÍê³É±êÖ¾
	local misIndex = GetMissionIndexByID(sceneId,selfId,x210214_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--·ÅÆú
--**********************************
function x210214_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
    DelMission( sceneId, selfId, x210214_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210214_g_SignPost.tip )
end

--**********************************
--¼ÌĞø
--**********************************
function x210214_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ğµ Ë ği¬m÷ĞÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210214_g_MissionName)
		AddText(sceneId,x210214_g_MissionComplete)
		AddMoneyBonus( sceneId, x210214_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210214_g_ScriptId,x210214_g_MissionId)
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x210214_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210214_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x210214_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210214_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId,x210214_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,400)
		DelMission( sceneId,selfId,  x210214_g_MissionId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
		MissionCom( sceneId,selfId,  x210214_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø#W: trân thú thÑ nh¤t",MSG2PLAYER_PARA )
		CallScriptFunction( 210215, "OnDefaultEvent",sceneId, selfId, targetId)
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210214_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x210214_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210214_OnItemChanged( sceneId, selfId, itemdataId )
end
