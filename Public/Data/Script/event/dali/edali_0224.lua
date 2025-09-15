--ÈËÖ®³õ--ÔÄ¶Á²¼¸æÅÆÈÎÎñ
--ÕÔÌìÊ¦
--MisDescBegin
--½Å±¾ºÅ
x210224_g_ScriptId = 210224

--Tiªp thøÈÎÎñNPCÊôÐÔ
x210224_g_Position_X=160.0895
x210224_g_Position_Z=156.9309
x210224_g_SceneID=2
x210224_g_AccomplishNPC_Name="Tri®u Thiên Sß"

--ÈÎÎñºÅ
x210224_g_MissionId = 704

--ÉÏmµt cáiÈÎÎñtoÕ ðµ ID
--g_MissionIdPre =

--Ä¿±êNPC
x210224_g_Name	="Tri®u Thiên Sß"

--ÈÎÎñ¹éÀà
x210224_g_MissionKind = 13

--ÐÆng c¤p nhi®m vø 
x210224_g_MissionLevel = 8

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x210224_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîÐúng¶¯Ì¬ÏÔÊ¾toÕ ðµ ÄÚÈÝ,ÓÃÓÚTÕi ÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
--ÈÎÎñÐúng·ñÒÑ¾­Íê³É
x210224_g_IsMissionOkFail = 0		--±äÁ¿toÕ ðµ µÚ0Î»

--ÒÔÉÏÐúng¶¯Ì¬**************************************************************

--ÈÎÎñÎÄ±¾ÃèÊö
x210224_g_MissionName="Ði xem b¯ cáo"
x210224_g_MissionInfo="#{event_dali_0034}"
x210224_g_MissionTarget="Ð÷c #RBäng cáo th¸ #W · #Gtrß¾c c±ng Hoàng Cung ÐÕi Lý #W#{_INFOAIM258,202,2,-1}, sau ðó v«#G Ngû Hoa Ðàn thành ÐÕi Lý#W tìm #RTri®u Thiên Sß #W#{_INFOAIM160,157,2, Tri®u Thiên Sß}. "
x210224_g_ContinueInfo="  Ngß½i ðã xem #Ybäng cáo th¸#W chßa?"
x210224_g_MissionComplete="  Ngß½i ðã xem #Ybäng cáo th¸ #Wchßa? Lû ngß¶i x¤u nhß v§y, nh¤t ð¸nh phäi tr×ng tr¸ nghiêm kh¡c"
x210224_g_SignPost = {x = 148, z = 40, tip = "Bäng cáo th¸"}
--ÈÎÎñ½±Àø
x210224_g_MoneyBonus=100
--g_ItemBonus={{id=40002108,num=1}}

x210224_g_Custom	= { {id="Ðã ð÷c bäng cáo th¸",num=1} }
x210224_g_IsMissionOkFail = 1		--±äÁ¿toÕ ðµ µÚ0Î»

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x210224_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ(Êµ¼ÊÉÏÈç¹ûÍê³ÉÁËÈÎÎñÕâÀï¾Í²»»áÏÔÊ¾,µ«ÐúngÔÙ¼ì²âmµt ´Î±È½Ï°²È«)
    --if IsMissionHaveDone(sceneId,selfId,x210224_g_MissionId) > 0 then
	--	return
	--end
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x210224_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñÐèÇótoÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210224_g_MissionName)
			AddText(sceneId,x210224_g_ContinueInfo)
			--for i, item in g_DemandItem do
			--	AddItemDemand( sceneId, item.id, item.num )
			--end
			AddMoneyBonus( sceneId, x210224_g_MoneyBonus )
		EndEvent()
		bDone = x210224_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210224_g_ScriptId,x210224_g_MissionId,bDone)		
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
    elseif x210224_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210224_g_MissionName)
			AddText(sceneId,x210224_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}")
			AddText(sceneId,x210224_g_MissionTarget)
			--for i, item in g_ItemBonus do
			--	AddItemBonus( sceneId, item.id, item.num )
			--end
			--for i, item in g_RadioItemBonus do
			--	AddRadioItemBonus( sceneId, item.id, item.num )
			--end
			AddMoneyBonus( sceneId, x210224_g_MoneyBonus )
			EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x210224_g_ScriptId,x210224_g_MissionId)
    end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x210224_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼mµt ¹Î´Íê³ÉÉÏmµt cáiÈÎÎñ
    --if 	IsMissionHaveDone(sceneId,selfId,g_MissionIdPre) <= 0 then
    --	return
    --end
    --Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
    if IsMissionHaveDone(sceneId,selfId,x210224_g_MissionId) > 0 then
    	return 
	end
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    if IsHaveMission(sceneId,selfId,x210224_g_MissionId) > 0 then
		AddNumText(sceneId,x210224_g_ScriptId,x210224_g_MissionName,2,-1);
		--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x210224_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210224_g_ScriptId,x210224_g_MissionName,1,-1);
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x210224_CheckAccept( sceneId, selfId )
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
function x210224_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId,selfId, x210224_g_MissionId, x210224_g_ScriptId, 1, 0, 0 )		--Ìí¼ÓÈÎÎñ
	misIndex = GetMissionIndexByID(sceneId,selfId,x210224_g_MissionId)			-- ði¬mµ½ÈÎÎñtoÕ ðµ ÐòÁÐºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ0Î»ÖÃ0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ1Î»ÖÃ0
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Ð÷c cáo th¸",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210224_g_SignPost.x, x210224_g_SignPost.z, x210224_g_SignPost.tip )
end

--**********************************
--·ÅÆú
--**********************************
function x210224_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
  DelMission( sceneId, selfId, x210224_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210224_g_SignPost.tip )
end

--**********************************
--¼ÌÐø
--**********************************
function x210224_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210224_g_MissionName)
		AddText(sceneId,x210224_g_MissionComplete)
		AddMoneyBonus( sceneId, x210224_g_MoneyBonus )
		--for i, item in g_ItemBonus do
		--	AddItemBonus( sceneId, item.id, item.num )
		--end
		--for i, item in g_RadioItemBonus do
		--	AddRadioItemBonus( sceneId, item.id, item.num )
		--end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210224_g_ScriptId,x210224_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x210224_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210224_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	misIndex = GetMissionIndexByID(sceneId,selfId,x210224_g_MissionId)
    num = GetMissionParam(sceneId,selfId,misIndex,0)
    if num == 1 then
		return 1
	end
	return 0
end

--**********************************
--Ìá½»
--**********************************
function x210224_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x210224_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
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
		AddMoney(sceneId,selfId,x210224_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, 100)
		--¿Û³ýÈÎÎñÎïÆ·
		--for i, item in g_DemandItem do
		--	DelItem( sceneId, selfId, item.id, item.num )
		--end
		ret = DelMission( sceneId, selfId, x210224_g_MissionId )
		if ret > 0 then
			MissionCom( sceneId, selfId, x210224_g_MissionId )
			--AddItemListToHuman(sceneId,selfId)
			Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø#W: Ð÷c cáo th¸",MSG2PLAYER_PARA )
			CallScriptFunction( 210225, "OnDefaultEvent",sceneId, selfId, targetId)
		end
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210224_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x210224_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210224_OnItemChanged( sceneId, selfId, itemdataId )
end
