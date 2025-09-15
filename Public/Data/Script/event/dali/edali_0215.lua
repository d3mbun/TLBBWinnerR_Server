--Á·ÕäÊŞÈÎÎñ

--************************************************************************
--MisDescBegin

--½Å±¾ºÅ
x210215_g_ScriptId = 210215

--ÉÏmµt cáiÈÎÎñtoÕ ğµ ID
x210215_g_MissionIdPre = 454

--ÈÎÎñºÅ
x210215_g_MissionId = 455

--Møc tiêu nhi®m vønpc
x210215_g_Name	="Vân Phiêu Phiêu"

--ÈÎÎñ¹éÀà
x210215_g_MissionKind = 13

--ĞÆng c¤p nhi®m vø 
x210215_g_MissionLevel = 5

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x210215_g_IfMissionElite = 0

--********ÏÂÃæ¼¸ÏîĞúng¶¯Ì¬ÏÔÊ¾toÕ ğµ ÄÚÈİ,ÓÃÓÚTÕi ÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******

--**********************************ÒÔÉÏĞúng¶¯Ì¬****************************

--ÈÎÎñÎÄ±¾ÃèÊö
x210215_g_MissionName="Thú quı lên c¤p r°i"
x210215_g_MissionInfo="#{event_dali_0021}"  --ÈÎÎñÃèÊö
x210215_g_MissionTarget="#{event_dali_0022}"		--Møc tiêu nhi®m vø
x210215_g_ContinueInfo="  Ti¬u th¯ ğã lên ğªn c¤p 2 chßa? "		--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x210215_g_MissionComplete="#{event_dali_0023}"					--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°
x210215_g_SignPost = {x = 263, z = 129, tip = "Vân Phiêu Phiêu"}

--ÈÎÎñ½±Àø
x210215_g_MoneyBonus=20

--MisDescEnd
--************************************************************************

--½ÇÉ«Mission±äÁ¿Ë ği¬m÷
--0ºÅ: Î´ÓÃ
--1ºÅ: Î´ÓÃ
--2ºÅ: Î´ÓÃ
--3ºÅ: Î´ÓÃ
--4ºÅ: Î´ÓÃ
--5ºÅ: Î´ÓÃ
--6ºÅ: Î´ÓÃ
--7ºÅ: Î´ÓÃ
x210215_g_PetNeedLevel=2	--C¥n ½«ÕäÊŞÁ·µ½toÕ ğµ µÈc¤p
x210215_g_PetDataID=559	--ÈÎÎñÕäÊŞtoÕ ğµ ±àºÅ

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x210215_OnDefaultEvent( sceneId, selfId, targetId )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾

	if IsHaveMission(sceneId,selfId,x210215_g_MissionId) > 0 then --Èç¹ûÒÑ½Ó´ËÈÎÎñ
		--·¢ËÍÈÎÎñĞèÇótoÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210215_g_MissionName)
			AddText(sceneId,x210215_g_ContinueInfo)
			AddMoneyBonus( sceneId, x210215_g_MoneyBonus )
		EndEvent( )
		bDone = x210215_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210215_g_ScriptId,x210215_g_MissionId,bDone)
	elseif x210215_CheckAccept(sceneId,selfId) > 0 then --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210215_g_MissionName)
			AddText(sceneId,x210215_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}")
			AddText(sceneId,x210215_g_MissionTarget)
			AddMoneyBonus( sceneId, x210215_g_MoneyBonus )
			EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x210215_g_ScriptId,x210215_g_MissionId)
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x210215_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼mµt ¹Î´Íê³ÉÉÏmµt cáiÈÎÎñ
    if 	IsMissionHaveDone(sceneId,selfId,x210215_g_MissionIdPre) <= 0 then
    	return
    end
    --Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x210215_g_MissionId) > 0 then
		return
	end
    if IsHaveMission(sceneId,selfId,x210215_g_MissionId) > 0 then
			AddNumText(sceneId,x210215_g_ScriptId,x210215_g_MissionName,2,-1);
		--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x210215_CheckAccept(sceneId,selfId) > 0 then
			AddNumText(sceneId,x210215_g_ScriptId,x210215_g_MissionName,1,-1);
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x210215_CheckAccept( sceneId, selfId )

	if IsMissionHaveDone(sceneId,selfId,x210215_g_MissionId) > 0 then
		return 0
	end
	--½ÓÊÕÌõ¼ş
	if GetLevel( sceneId, selfId ) >= x210215_g_MissionLevel then
		return 1
	else
		return 0
	end
end

--**********************************
--Tiªp thø
--**********************************
function x210215_OnAccept( sceneId, selfId )

	if x210215_CheckAccept(sceneId, selfId) ~= 1 then
		return
	end
	
	local ret, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, x210215_g_PetDataID, -1, 0) --¸øÍæ¼ÒÉú³Émµt Ö»ÕäÊŞ
	if ret==1 then
		--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
		AddMission( sceneId,selfId, x210215_g_MissionId, x210215_g_ScriptId, 0, 0, 0 )	--Ìí¼ÓÈÎÎñ
		BeginEvent(sceneId)
			strText = "Các hÕ ğã nh§n ğßşc mµt con trân thú!"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Thång c¤p trân thú",MSG2PLAYER_PARA )
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210215_g_SignPost.x, x210215_g_SignPost.z, x210215_g_SignPost.tip )
	end
end

--**********************************
--·ÅÆú
--**********************************
function x210215_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
    DelMission( sceneId, selfId, x210215_g_MissionId )
    --É¾³ıÈÎÎñÕäÊŞ
	petcount = LuaFnGetPetCount(sceneId, selfId) --È¡ ği¬mÕäÊŞÊıÁ¿
	for	i=0,petcount-1 do
		petdataid = LuaFnGetPet_DataID(sceneId, selfId, i) --È¡ ği¬mÕäÊŞ±àºÅ
		if petdataid==x210215_g_PetDataID then
			local ret0 = LuaFnDeletePet(sceneId, selfId, i)
		end
   end
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210215_g_SignPost.tip )
end

--**********************************
--¼ÌĞø
--**********************************
function x210215_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ğµ Ë ği¬m÷ĞÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210215_g_MissionName)
		AddText(sceneId,x210215_g_MissionComplete)
		AddMoneyBonus( sceneId, x210215_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210215_g_ScriptId,x210215_g_MissionId)
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x210215_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210215_g_MissionId )

	-- ¿´Íæ¼ÒĞúng²»ĞúngÓĞmµt cáiµÈc¤pÎª2c¤ptoÕ ğµ ³èÎï,ÓĞ¾ÍOK
	local nPetCount = LuaFnGetPetCount(sceneId, selfId)
	
	for i=0, nPetCount-1  do
		local nPetId = LuaFnGetPet_DataID(sceneId, selfId, i)
		local nPetLevel = LuaFnGetPet_Level(sceneId, selfId, i)
		
		if nPetId==559 and nPetLevel>=2  then
			return 1
		end
	end

	return 0
end

--**********************************
--Ìá½»
--**********************************
function x210215_OnSubmit( sceneId, selfId, targetId,selectRadioId )

	--¼ì²âÍæ¼ÒĞúng²»ĞúngÍê³ÉÁË
	if x210215_CheckSubmit( sceneId, selfId ) ~= 1   then
		return
	end

	AddMoney(sceneId,selfId,x210215_g_MoneyBonus );
	LuaFnAddExp( sceneId, selfId,810)
	local ret0 = DelMission( sceneId, selfId, x210215_g_MissionId ) --É¾³ıÈÎÎñ
	if ret0>0  then
		MissionCom( sceneId,selfId, x210215_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø#W: Thång c¤p trân thú",MSG2PLAYER_PARA )
		CallScriptFunction( 210216, "OnDefaultEvent",sceneId, selfId, targetId)
	end

	BeginEvent(sceneId)
		strText = "Hoàn t¤t nhi®m vø"
		AddText(sceneId,strText);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210215_OnKillObject( sceneId, selfId, objdataId, objId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x210215_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210215_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--Íæ¼ÒÌá½»toÕ ğµ ÎïÆ·¼°ÕäÊŞ
--**********************************
function x210215_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
	
end

