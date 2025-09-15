--ÕÒÈËÈÎÎñ
--ÕÔÌìÊ¦Ñ°Õmµt ÆÃ¼É®
--MisDescBegin
--½Å±¾ºÅ
x210230_g_ScriptId = 210230

--Tiªp thøÈÎÎñNPCÊôĞÔ
x210230_g_Position_X=275.2234
x210230_g_Position_Z=49.2906
x210230_g_SceneID=2
x210230_g_AccomplishNPC_Name="Hoàng Mi Tång"

--ÈÎÎñºÅ
x210230_g_MissionId = 710

--ÉÏmµt cáiÈÎÎñtoÕ ğµ ID
--g_MissionIdPre =

--Ä¿±êNPC
x210230_g_Name	="Hoàng Mi Tång"

--ÈÎÎñ¹éÀà
x210230_g_MissionKind = 13

--ĞÆng c¤p nhi®m vø 
x210230_g_MissionLevel = 9

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x210230_g_IfMissionElite = 0

--ÈÎÎñÃû
x210230_g_MissionName="Ğä Ti¬u Mµc Nhân HÕng"
x210230_g_MissionInfo="#{event_dali_0043}"
x210230_g_MissionTarget="Ği #GNiêm Hoa Tñ cüa góc Ğông B¡c thành ĞÕi Lı#W tìm #RHoàng Mi Tång #W#{_INFOAIM275,49,2, Hoàng Mi Tång}. "
x210230_g_MissionComplete="  Thí chü, chúng ta lÕi g£p m£t r°i. Xin thí chü chu¦n b¸ ğ¥y ğü dßşc ph¦m và trang b¸ tu luy®n, r°i vào #GTi¬u Mµc Nhân HÕng #W"
x210230_g_MoneyBonus=72
x210230_g_SignPost = {x = 275, z = 50, tip = "Hoàng Mi Tång"}

x210230_g_Custom	= { {id="Ğã tìm th¤y Hoàng Mi Tång",num=1} }
x210230_g_IsMissionOkFail = 1		--±äÁ¿toÕ ğµ µÚ0Î»

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x210230_OnDefaultEvent( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
    if (IsMissionHaveDone(sceneId,selfId,x210230_g_MissionId) > 0 ) then
    	return
	elseif( IsHaveMission(sceneId,selfId,x210230_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x210230_g_Name then
			x210230_OnContinue( sceneId, selfId, targetId )
		end
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x210230_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210230_g_Name then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x210230_g_MissionName)
				AddText(sceneId,x210230_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210230_g_MissionTarget)
				AddMoneyBonus( sceneId, x210230_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210230_g_ScriptId,x210230_g_MissionId)
		end
    end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x210230_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼mµt ¹Î´Íê³ÉÉÏmµt cáiÈÎÎñ
    --if 	IsMissionHaveDone(sceneId,selfId,g_MissionIdPre) <= 0 then
    --	return
    --end
    --Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
    if IsMissionHaveDone(sceneId,selfId,x210230_g_MissionId) > 0 then
    	return
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    elseif IsHaveMission(sceneId,selfId,x210230_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x210230_g_Name then
			AddNumText(sceneId, x210230_g_ScriptId,x210230_g_MissionName,2,-1);
		end
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x210230_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210230_g_Name then
			AddNumText(sceneId,x210230_g_ScriptId,x210230_g_MissionName,1,-1);
		end
    end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x210230_CheckAccept( sceneId, selfId )
	--C¥n 9c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 9 then
		return 1
	else
		return 0
	end
end

--**********************************
--Tiªp thø
--**********************************
function x210230_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId,selfId, x210230_g_MissionId, x210230_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Ğä Ti¬u Mµc Nhân HÕng",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210230_g_SignPost.x, x210230_g_SignPost.z, x210230_g_SignPost.tip )

	-- ÉèÖÃÈÎÎñÍê³É±êÖ¾
	local misIndex = GetMissionIndexByID(sceneId,selfId,x210230_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--·ÅÆú
--**********************************
function x210230_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
  DelMission( sceneId, selfId, x210230_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210230_g_SignPost.tip )
end

--**********************************
--¼ÌĞø
--**********************************
function x210230_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ğµ Ë ği¬m÷ĞÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210230_g_MissionName)
		AddText(sceneId,x210230_g_MissionComplete)
		AddMoneyBonus( sceneId, x210230_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210230_g_ScriptId,x210230_g_MissionId)
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x210230_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210230_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x210230_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210230_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId,x210230_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,300)
		DelMission( sceneId,selfId,  x210230_g_MissionId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
		MissionCom( sceneId,selfId,  x210230_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø#W: Ğä Ti¬u Mµc Nhân HÕng",MSG2PLAYER_PARA )
		CallScriptFunction( 210231, "OnDefaultEvent",sceneId, selfId, targetId)
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210230_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x210230_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210230_OnItemChanged( sceneId, selfId, itemdataId )
end
