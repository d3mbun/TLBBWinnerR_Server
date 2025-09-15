--ÕÒÈËÈÎÎñ
--Vân Phiêu PhiêuÑ°ÕÒÕÔÌìÊ¦
--MisDescBegin
--½Å±¾ºÅ
x210216_g_ScriptId = 210216

--Tiªp thøÈÎÎñNPCÊôĞÔ
x210216_g_Position_X=282
x210216_g_Position_Z=254
x210216_g_SceneID=2
x210216_g_AccomplishNPC_Name="Tri®u Thiên Sß"

--ÈÎÎñºÅ
x210216_g_MissionId = 456

--ÉÏmµt cáiÈÎÎñtoÕ ğµ ID
x210216_g_MissionIdPre = 455

--Ä¿±êNPC
x210216_g_Name	="Tri®u Thiên Sß"

--ÈÎÎñ¹éÀà
x210216_g_MissionKind = 13

--ĞÆng c¤p nhi®m vø 
x210216_g_MissionLevel = 5

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x210216_g_IfMissionElite = 0

--ÈÎÎñÃû
x210216_g_MissionName="Lá thß tiªn cØ thÑ 5"
x210216_g_MissionInfo="#{event_dali_0024}"
x210216_g_MissionTarget="    V« #GNgû Hoa Ğàn thành ĞÕi Lı#W tìm ğªn #GTri®u Thiên Sß #W#{_INFOAIM160,157,2, Tri®u Thiên Sß}. "
x210216_g_MissionComplete="  Các hÕ ngày càng gi¯ng mµt ğÕi hi®p r°i, ta nhìn mà lòng vui thay"
x210216_g_MoneyBonus=24
x210216_g_SignPost = {x = 282, z = 254, tip = "Tri®u Thiên Sß"}
x210216_g_ItemBonus={{id=40002108,num=1}}

x210216_g_Custom	= { {id="Ğã tìm th¤y Tri®u Thiên Sß",num=1} }
x210216_g_IsMissionOkFail = 1		--±äÁ¿toÕ ğµ µÚ0Î»

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x210216_OnDefaultEvent( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
    if (IsMissionHaveDone(sceneId,selfId,x210216_g_MissionId) > 0 ) then
    	return
	elseif( IsHaveMission(sceneId,selfId,x210216_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x210216_g_Name then
			x210216_OnContinue( sceneId, selfId, targetId )
		end
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x210216_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210216_g_Name then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x210216_g_MissionName)
				AddText(sceneId,x210216_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210216_g_MissionTarget)
				for i, item in x210216_g_ItemBonus do
					AddItemBonus( sceneId, item.id, item.num )
				end
				AddMoneyBonus( sceneId, x210216_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210216_g_ScriptId,x210216_g_MissionId)
		end
    end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x210216_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼mµt ¹Î´Íê³ÉÉÏmµt cáiÈÎÎñ
    if 	IsMissionHaveDone(sceneId,selfId,x210216_g_MissionIdPre) <= 0 then
    	return
    end
    --Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
    if IsMissionHaveDone(sceneId,selfId,x210216_g_MissionId) > 0 then
    	return 
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    elseif IsHaveMission(sceneId,selfId,x210216_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x210216_g_Name then
			AddNumText(sceneId, x210216_g_ScriptId,x210216_g_MissionName,2,-1);
		end
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x210216_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210216_g_Name then
			AddNumText(sceneId,x210216_g_ScriptId,x210216_g_MissionName,1,-1);
		end
    end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x210216_CheckAccept( sceneId, selfId )
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
function x210216_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId,selfId, x210216_g_MissionId, x210216_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Lá thß gi¾i thi®u thÑ 5",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210216_g_SignPost.x, x210216_g_SignPost.z, x210216_g_SignPost.tip )

	-- ÉèÖÃÈÎÎñÍê³É±êÖ¾
	local misIndex = GetMissionIndexByID(sceneId,selfId,x210216_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--·ÅÆú
--**********************************
function x210216_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
    DelMission( sceneId, selfId, x210216_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210216_g_SignPost.tip )
end

--**********************************
--¼ÌĞø
--**********************************
function x210216_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ğµ Ë ği¬m÷ĞÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210216_g_MissionName)
		AddText(sceneId,x210216_g_MissionComplete)
		AddMoneyBonus( sceneId, x210216_g_MoneyBonus )
		for i, item in x210216_g_ItemBonus do
			AddItemBonus( sceneId,item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210216_g_ScriptId,x210216_g_MissionId)
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x210216_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210216_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x210216_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210216_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
    	BeginAddItem(sceneId)
			for i, item in x210216_g_ItemBonus do
				AddItem( sceneId,item.id, item.num )
			end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
			if ret > 0 then
					AddMoney(sceneId,selfId,x210216_g_MoneyBonus );
					LuaFnAddExp( sceneId, selfId,500)
					ret = DelMission( sceneId, selfId, x210216_g_MissionId )
				if ret > 0 then
					MissionCom( sceneId, selfId, x210216_g_MissionId )
					AddItemListToHuman(sceneId,selfId)
					Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø#W: Lá thß gi¾i thi®u thÑ 5",MSG2PLAYER_PARA )
				end
			else
				--ÈÎÎñ½±ÀøÃ»ÓĞ¼Ó³É¹¦
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
function x210216_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x210216_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210216_OnItemChanged( sceneId, selfId, itemdataId )
end
