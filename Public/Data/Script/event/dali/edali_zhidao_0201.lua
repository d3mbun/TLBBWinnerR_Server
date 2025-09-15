--ËÍ»õÈÎÎñ
--ÆÑÁ¼ËÍ»õ¸ø¶Å×ÓÌÚ
--MisDescBegin
--½Å±¾ºÅ
x210201_g_ScriptId = 210201

x210201_g_Position_X=230
x210201_g_Position_Z=251
x210201_g_SceneID=2
x210201_g_AccomplishNPC_Name="Ð² TØ Ð¢ng"

--ÈÎÎñºÅ
x210201_g_MissionId = 441

--ÉÏmµt cáiÈÎÎñtoÕ ðµ ID
x210201_g_MissionIdPre = 440

--Ä¿±êNPC
x210201_g_Name	="Ð² TØ Ð¢ng"

--ÈÎÎñµÀ¾ß±àºÅ
x210201_g_ItemId = 40002110

--ÈÎÎñµÀ¾ßÐèÇóÊýÁ¿
x210201_g_ItemNeedNum = 1

--ÈÎÎñ¹éÀà
x210201_g_MissionKind = 13

--ÐÆng c¤p nhi®m vø 
x210201_g_MissionLevel = 1

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x210201_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîÐúng¶¯Ì¬ÏÔÊ¾toÕ ðµ ÄÚÈÝ,ÓÃÓÚTÕi ÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
--ÈÎÎñÐúng·ñÒÑ¾­Íê³É
x210201_g_IsMissionOkFail = 0		--±äÁ¿toÕ ðµ µÚ0Î»

--ÒÔÉÏÐúng¶¯Ì¬**************************************************************

--ÈÎÎñÃû
x210201_g_MissionName="L¥n ð¥u giao hàng"
x210201_g_MissionInfo="#{event_dali_0003}"
x210201_g_MissionTarget="Mang #Ymµt hòm døng cø Bªp#W ðªn#G ðß¶ng l¾n phía Tây thành ÐÕi Lý#Y TØu quán#W cho ông chü #RÐ² TØ Ð¢ng #W#{_INFOAIM110,158,2, Ð² TØ Ð¢ng}. "
x210201_g_MissionComplete="  Các hÕ th§t hi¬u ðúng c½n nguy c¤p cüa ta, ta ðang c¥n g¤p #Ychiªc rß½ng døng cø n¤u nß¾ng#W này!"
x210201_g_MoneyBonus=10
x210201_g_SignPost = {x = 230, z = 251, tip = "Ð² TØ Ð¢ng"}

x210201_g_DemandItem={{id=40002110,num=1}}		--±äÁ¿µÚ1Î»
x210201_g_IsMissionOkFail = 1		--±äÁ¿toÕ ðµ µÚ0Î»

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x210201_OnDefaultEvent( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
    if (IsMissionHaveDone(sceneId,selfId,x210201_g_MissionId) > 0 ) then
    	return
	elseif( IsHaveMission(sceneId,selfId,x210201_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x210201_g_Name then
			x210201_OnContinue( sceneId, selfId, targetId )
		end
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
    elseif x210201_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210201_g_Name then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x210201_g_MissionName)
				AddText(sceneId,x210201_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210201_g_MissionTarget)
				AddMoneyBonus( sceneId, x210201_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210201_g_ScriptId,x210201_g_MissionId)
		end
    end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x210201_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼mµt ¹Î´Íê³ÉÉÏmµt cáiÈÎÎñ
    if 	IsMissionHaveDone(sceneId,selfId,x210201_g_MissionIdPre) <= 0 then
    	return
    end
    --Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
    if IsMissionHaveDone(sceneId,selfId,x210201_g_MissionId) > 0 then
    	return 
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    elseif IsHaveMission(sceneId,selfId,x210201_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x210201_g_Name then
			AddNumText(sceneId, x210201_g_ScriptId,x210201_g_MissionName,2,-1);
		end
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
    elseif x210201_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210201_g_Name then
			AddNumText(sceneId,x210201_g_ScriptId,x210201_g_MissionName,1,-1);
		end
    end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x210201_CheckAccept( sceneId, selfId )
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
function x210201_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId,selfId, x210201_g_MissionId, x210201_g_ScriptId, 0, 0, 0 )
	BeginAddItem(sceneId)
		--Ìí¼ÓÐÅ¼þÀàÎïÆ·
		AddItem( sceneId,x210201_g_ItemId, x210201_g_ItemNeedNum )
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
	if ret > 0 then
		AddItemListToHuman(sceneId,selfId)
		Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø: giao hàng l¥n 1",MSG2PLAYER_PARA )
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210201_g_SignPost.x, x210201_g_SignPost.z, x210201_g_SignPost.tip )

		-- ÉèÖÃÈÎÎñÍê³É±êÖ¾
		local misIndex = GetMissionIndexByID(sceneId,selfId,x210201_g_MissionId)
		SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
		SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)

	else
		--ÈÎÎñ½±ÀøÃ»ÓÐ¼Ó³É¹¦
		BeginEvent(sceneId)
			strText = "Túi xách ðã ð¥y, không th¬ tiªp nh§n thêm nhi®m vø"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end

--**********************************
--·ÅÆú
--**********************************
function x210201_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
    res = DelMission( sceneId, selfId, x210201_g_MissionId )
	if res > 0 then
		--ÒÆÈ¥ÈÎÎñÎïÆ·
		for i, item in x210201_g_DemandItem do
			DelItem( sceneId, selfId, item.id, item.num )
		end
		CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210201_g_SignPost.tip )
	end
end

--**********************************
--¼ÌÐø
--**********************************
function x210201_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210201_g_MissionName)
		AddText(sceneId,x210201_g_MissionComplete)
		AddMoneyBonus( sceneId, x210201_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210201_g_ScriptId,x210201_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x210201_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210201_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	for i, item in x210201_g_DemandItem do
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
function x210201_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210201_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--¿Û³ýÈÎÎñÎïÆ·
		for i, item in x210201_g_DemandItem do
			DelItem( sceneId, selfId, item.id, item.num )
		end
		DelMission( sceneId,selfId,  x210201_g_MissionId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ý
		MissionCom( sceneId,selfId,  x210201_g_MissionId )
		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId,x210201_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,15)
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ý
		Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø#W: giao hàng l¥n 1",MSG2PLAYER_PARA )
		CallScriptFunction( 210202, "OnDefaultEvent",sceneId, selfId, targetId)
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210201_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x210201_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210201_OnItemChanged( sceneId, selfId, itemdataId )
end
