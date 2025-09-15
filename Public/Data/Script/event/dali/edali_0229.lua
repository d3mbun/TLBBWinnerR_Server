--ÕÒÈËÈÎÎñ
--¶ÎÑÓÇìÑ°ÕÒÕÔÌìÊ¦
--MisDescBegin
--½Å±¾ºÅ
x210229_g_ScriptId = 210229

--Tiªp thøÈÎÎñNPCÊôÐÔ
x210229_g_Position_X=160.0895
x210229_g_Position_Z=156.9309
x210229_g_SceneID=2
x210229_g_AccomplishNPC_Name="Tri®u Thiên Sß"

--ÈÎÎñºÅ
x210229_g_MissionId = 709

--ÉÏmµt cáiÈÎÎñtoÕ ðµ ID
x210229_g_MissionIdPre = 708

--Ä¿±êNPC
x210229_g_Name	="Tri®u Thiên Sß"

--ÈÎÎñ¹éÀà
x210229_g_MissionKind = 13

--ÐÆng c¤p nhi®m vø 
x210229_g_MissionLevel = 8

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x210229_g_IfMissionElite = 0

--ÈÎÎñÃû
x210229_g_MissionName="Ði tìm lÕi #RTri®u Thiên Sß#W"
x210229_g_MissionInfo="#{event_dali_0042}"
x210229_g_MissionTarget="    V« #GNgû Hoa Ðàn thành ÐÕi Lý#W tìm #RTri®u Thiên Sß #W#{_INFOAIM160,157,2,Tri®u Thiên Sß}. "
x210229_g_MissionComplete="  Các hÕ v« chßa? G¥n ðây l¶i ð°n hành hung hÕi ngß¶i cüa #RÐoàn Diên Khánh#W g¥n nhß ít r¤t nhi«u r°i. Nh¤t ð¸nh ch¡c ch¡n là công lao cüa các hÕ!"
x210229_g_MoneyBonus=72
x210229_g_SignPost = {x = 160, z = 156, tip = "Tri®u Thiên Sß"}
x210229_g_ItemBonus={{id=40002108,num=1}}

x210229_g_Custom	= { {id="Ðã tìm th¤y Tri®u Thiên Sß",num=1} }
x210229_g_IsMissionOkFail = 1		--±äÁ¿toÕ ðµ µÚ0Î»

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x210229_OnDefaultEvent( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
    if (IsMissionHaveDone(sceneId,selfId,x210229_g_MissionId) > 0 ) then
    	return
	elseif( IsHaveMission(sceneId,selfId,x210229_g_MissionId) > 0)  then
			x210229_OnContinue( sceneId, selfId, targetId )
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
    elseif x210229_CheckAccept(sceneId,selfId) > 0 then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x210229_g_MissionName)
				AddText(sceneId,x210229_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210229_g_MissionTarget)
				for i, item in x210229_g_ItemBonus do
					AddItemBonus( sceneId, item.id, item.num )
				end
				AddMoneyBonus( sceneId, x210229_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210229_g_ScriptId,x210229_g_MissionId)
    end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x210229_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼mµt ¹Î´Íê³ÉÉÏmµt cáiÈÎÎñ
    if 	IsMissionHaveDone(sceneId,selfId,x210229_g_MissionIdPre) <= 0 then
    	return
    end
    --Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
    if IsMissionHaveDone(sceneId,selfId,x210229_g_MissionId) > 0 then
    	return 
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    elseif IsHaveMission(sceneId,selfId,x210229_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x210229_g_Name then
			AddNumText(sceneId, x210229_g_ScriptId,x210229_g_MissionName,2,-1);
		end
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
    elseif x210229_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210229_g_Name then
			AddNumText(sceneId,x210229_g_ScriptId,x210229_g_MissionName,1,-1);
		end
    end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x210229_CheckAccept( sceneId, selfId )
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
function x210229_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId,selfId, x210229_g_MissionId, x210229_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: LÕi ði tìm Tri®u Thiên Sß",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210229_g_SignPost.x, x210229_g_SignPost.z, x210229_g_SignPost.tip )

	-- ÉèÖÃÈÎÎñÍê³É±êÖ¾
	local misIndex = GetMissionIndexByID(sceneId,selfId,x210229_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--·ÅÆú
--**********************************
function x210229_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
    DelMission( sceneId, selfId, x210229_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210229_g_SignPost.tip )
end

--**********************************
--¼ÌÐø
--**********************************
function x210229_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210229_g_MissionName)
		AddText(sceneId,x210229_g_MissionComplete)
		AddMoneyBonus( sceneId, x210229_g_MoneyBonus )
		for i, item in x210229_g_ItemBonus do
			AddItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210229_g_ScriptId,x210229_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x210229_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210229_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x210229_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210229_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
    	BeginAddItem(sceneId)
			for i, item in x210229_g_ItemBonus do
				AddItem( sceneId,item.id, item.num )
			end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
			if ret > 0 then
					AddMoney(sceneId,selfId,x210229_g_MoneyBonus );
					LuaFnAddExp( sceneId, selfId,600)
					ret = DelMission( sceneId, selfId, x210229_g_MissionId )
				if ret > 0 then
					MissionCom( sceneId, selfId, x210229_g_MissionId )
					AddItemListToHuman(sceneId,selfId)
					Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø#W: LÕi ði tìm Tri®u Thiên Sß",MSG2PLAYER_PARA )
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
function x210229_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x210229_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210229_OnItemChanged( sceneId, selfId, itemdataId )
end
