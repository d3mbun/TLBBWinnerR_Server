--ÈËÖ®³õ--°Ñmµt cáiÂøÍ· ðßa cho Ð¡ÆòØ¤
--¶ÎÑÓÇì
--MisDescBegin
--½Å±¾ºÅ
x210226_g_ScriptId = 210226

--ÈÎÎñºÅ
x210226_g_MissionId = 706

--ÉÏmµt cáiÈÎÎñtoÕ ðµ ID
x210226_g_MissionIdPre = 705

--Ä¿±êNPC
x210226_g_Name	="Ðoàn Diên Khánh"

--ÈÎÎñ¹éÀà
x210226_g_MissionKind = 13

--ÐÆng c¤p nhi®m vø 
x210226_g_MissionLevel = 8

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x210226_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîÐúng¶¯Ì¬ÏÔÊ¾toÕ ðµ ÄÚÈÝ,ÓÃÓÚTÕi ÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
--ÈÎÎñÐúng·ñÒÑ¾­Íê³É
x210226_g_IsMissionOkFail = 0		--±äÁ¿toÕ ðµ µÚ0Î»

--ÒÔÉÏÐúng¶¯Ì¬**************************************************************

--ÈÎÎñÎÄ±¾ÃèÊö
x210226_g_MissionName="T£ng bánh bao"
x210226_g_MissionInfo="   [Té ra các hÕ vì cáo th¸ này mà ðªn. Ta không m¤t th¶i gian v¾i các hÕ. Bên kia có tên #Rti¬u kh¤t cái#W ðói s¡p chªt. Các hÕ hãy ði tìm #Ybánh bao#W cho h¡n. ]"
x210226_g_MissionTarget="#{event_dali_0037}"
x210226_g_ContinueInfo="   [Các hÕ ðã ðßa #Ybánh bao#W cho #Rti¬u kh¤t cái#W chßa?]"
x210226_g_MissionComplete="   [Chà, xem ra con ngß¶i trë tu±i các hÕ vçn là tài nång có th¬ ðào tÕo.]"
x210226_g_SignPost = {x = 199, z = 256, tip = "Ti¬u Kh¤t Cái"}
x210226_g_Custom	= { {id="Ðßa bánh bao cho ti¬u kh¤t cái!",num=1} }
--ÈÎÎñ½±Àø
x210226_g_MoneyBonus=100
--g_ItemBonus={{id=40002108,num=1}}

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x210226_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ(Êµ¼ÊÉÏÈç¹ûÍê³ÉÁËÈÎÎñÕâÀï¾Í²»»áÏÔÊ¾,µ«ÐúngÔÙ¼ì²âmµt ´Î±È½Ï°²È«)
    --if IsMissionHaveDone(sceneId,selfId,x210226_g_MissionId) > 0 then
	--	return
	--end
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x210226_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñÐèÇótoÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210226_g_MissionName)
			AddText(sceneId,x210226_g_ContinueInfo)
			--for i, item in g_DemandItem do
			--	AddItemDemand( sceneId, item.id, item.num )
			--end
			AddMoneyBonus( sceneId, x210226_g_MoneyBonus )
		EndEvent()
		bDone = x210226_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210226_g_ScriptId,x210226_g_MissionId,bDone)		
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
    elseif x210226_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210226_g_MissionName)
			AddText(sceneId,x210226_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}")
			AddText(sceneId,x210226_g_MissionTarget)
			--for i, item in g_ItemBonus do
			--	AddItemBonus( sceneId, item.id, item.num )
			--end
			--for i, item in g_RadioItemBonus do
			--	AddRadioItemBonus( sceneId, item.id, item.num )
			--end
			AddMoneyBonus( sceneId, x210226_g_MoneyBonus )
			EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x210226_g_ScriptId,x210226_g_MissionId)
    end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x210226_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼mµt ¹Î´Íê³ÉÉÏmµt cáiÈÎÎñ
    if 	IsMissionHaveDone(sceneId,selfId,x210226_g_MissionIdPre) <= 0 then
    	return
    end
    --Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
    if IsMissionHaveDone(sceneId,selfId,x210226_g_MissionId) > 0 then
    	return 
	end
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    if IsHaveMission(sceneId,selfId,x210226_g_MissionId) > 0 then
		AddNumText(sceneId,x210226_g_ScriptId,x210226_g_MissionName,2,-1);
		--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x210226_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210226_g_ScriptId,x210226_g_MissionName,1,-1);
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x210226_CheckAccept( sceneId, selfId )
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
function x210226_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId,selfId, x210226_g_MissionId, x210226_g_ScriptId, 1, 0, 0 )		--Ìí¼ÓÈÎÎñ
	misIndex = GetMissionIndexByID(sceneId,selfId,x210226_g_MissionId)			-- ði¬mµ½ÈÎÎñtoÕ ðµ ÐòÁÐºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ0Î»ÖÃ0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ1Î»ÖÃ0
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: T£ng bánh bao",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210226_g_SignPost.x, x210226_g_SignPost.z, x210226_g_SignPost.tip )
end

--**********************************
--·ÅÆú
--**********************************
function x210226_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
    DelMission( sceneId, selfId, x210226_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210226_g_SignPost.tip )
end

--**********************************
--¼ÌÐø
--**********************************
function x210226_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210226_g_MissionName)
		AddText(sceneId,x210226_g_MissionComplete)
		AddMoneyBonus( sceneId, x210226_g_MoneyBonus )
		--for i, item in g_ItemBonus do
		--	AddItemBonus( sceneId, item.id, item.num )
		--end
		--for i, item in g_RadioItemBonus do
		--	AddRadioItemBonus( sceneId, item.id, item.num )
		--end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210226_g_ScriptId,x210226_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x210226_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210226_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	misIndex = GetMissionIndexByID(sceneId,selfId,x210226_g_MissionId)
    num = GetMissionParam(sceneId,selfId,misIndex,0)
    if num == 1 then
		return 1
	end
	return 0
end

--**********************************
--Ìá½»
--**********************************
function x210226_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x210226_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
    	--BeginAddItem(sceneId)
		--	for i, item in g_ItemBonus do
		--		AddItem( sceneId,item.id, item.num )
		--	end
		--ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
		--if ret > 0 then
		--else
		--ÈÎÎñ½±ÀøÃ»ÓÐ¼Ó³É¹¦
		--	BeginEvent(sceneId)
		--		strText = "±³°üÒÑÂú,ÎÞ·¨Hoàn t¤t nhi®m vø"
		--		AddText(sceneId,strText);
		--	EndEvent(sceneId)
		--	DispatchMissionTips(sceneId,selfId)
		--end
		AddMoney(sceneId,selfId,x210226_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, 400)
		--¿Û³ýÈÎÎñÎïÆ·
		--for i, item in g_DemandItem do
		--	DelItem( sceneId, selfId, item.id, item.num )
		--end
		ret = DelMission( sceneId, selfId, x210226_g_MissionId )
		if ret > 0 then
			MissionCom( sceneId, selfId, x210226_g_MissionId )
			--AddItemListToHuman(sceneId,selfId)
			Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø#W: T£ng bánh bao",MSG2PLAYER_PARA )
			CallScriptFunction( 210227, "OnDefaultEvent",sceneId, selfId, targetId)
		end
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210226_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x210226_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210226_OnItemChanged( sceneId, selfId, itemdataId )
end
