--É±¹ÖÈÎÎñ
--¿ï·öÕýÒå
--ÐÂÊÖ´åÉ±Thøc ÐÕo BÕch ViênÈÎÎñ
--MisDescBegin
--½Å±¾ºÅ
x210213_g_ScriptId = 210213

--Tiªp thøÈÎÎñNPCÊôÐÔ
x210213_g_Position_X=160.0895
x210213_g_Position_Z=156.9309
x210213_g_SceneID=2
x210213_g_AccomplishNPC_Name="Tri®u Thiên Sß"

--ÉÏmµt cáiÈÎÎñtoÕ ðµ ID
--g_MissionIdPre =

--ÈÎÎñºÅ
x210213_g_MissionId = 453

--Ä¿±êNPC
x210213_g_Name	="Tri®u Thiên Sß"

--ÈÎÎñ¹éÀà
x210213_g_MissionKind = 13

--ÐÆng c¤p nhi®m vø 
x210213_g_MissionLevel = 4

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x210213_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîÐúng¶¯Ì¬ÏÔÊ¾toÕ ðµ ÄÚÈÝ,ÓÃÓÚTÕi ÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************

--ÈÎÎñC¥n É±ËÀtoÕ ðµ ¹Ö
x210213_g_DemandKill ={{id=719,num=8}}		--±äÁ¿µÚ1Î»

--ÒÔÉÏÐúng¶¯Ì¬**************************************************************

--ÈÎÎñÎÄ±¾ÃèÊö
x210213_g_MissionName="L¥n ð¥u giªt quái v§t"
x210213_g_MissionInfo="#{event_dali_0018}"
x210213_g_MissionTarget="#{event_dali_0019}"
x210213_g_ContinueInfo="Các hÕ ðã giªt chªt 8 con #RThøc ÐÕo BÕch Viên#W chßa?"
x210213_g_MissionComplete="  Làm r¤t t¯t, bây gi¶ #RThøc ÐÕo BÕch Viên#W · #GÐ°i ThÕch Than#W cûng không dám tùy ti®n t§p kích bá tánh r°i"
x210213_g_SignPost = {x = 160, z = 156, tip = "Tri®u Thiên Sß"}
--ÈÎÎñ½±Àø
x210213_g_MoneyBonus=200
x210213_g_ItemBonus={{id=40002108,num=1},{id=30101001,num=5}}

x210213_g_DemandTrueKill ={{name="Thøc ÐÕo BÕch Viên",num=8}}
x210213_g_IsMissionOkFail = 1		--±äÁ¿toÕ ðµ µÚ0Î»

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x210213_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ(Êµ¼ÊÉÏÈç¹ûÍê³ÉÁËÈÎÎñÕâÀï¾Í²»»áÏÔÊ¾,µ«ÐúngÔÙ¼ì²âmµt ´Î±È½Ï°²È«)
    --if IsMissionHaveDone(sceneId,selfId,x210213_g_MissionId) > 0 then
	--	return
	--end
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x210213_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñÐèÇótoÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210213_g_MissionName)
			AddText(sceneId,x210213_g_ContinueInfo)
			--for i, item in g_DemandItem do
			--	AddItemDemand( sceneId, item.id, item.num )
			--end
			AddMoneyBonus( sceneId, x210213_g_MoneyBonus )
		EndEvent( )
		bDone = x210213_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210213_g_ScriptId,x210213_g_MissionId,bDone)
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
    elseif x210213_CheckAccept(sceneId,selfId) > 0 then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x210213_g_MissionName)
				AddText(sceneId,x210213_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210213_g_MissionTarget)
				for i, item in x210213_g_ItemBonus do
					AddItemBonus( sceneId, item.id, item.num )
				end
				AddMoneyBonus( sceneId, x210213_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210213_g_ScriptId,x210213_g_MissionId)
    end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x210213_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
    if IsMissionHaveDone(sceneId,selfId,x210213_g_MissionId) > 0 then
    	return
	end
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    if IsHaveMission(sceneId,selfId,x210213_g_MissionId) > 0 then
		AddNumText(sceneId,x210213_g_ScriptId,x210213_g_MissionName,2,-1);
		--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x210213_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210213_g_ScriptId,x210213_g_MissionName,1,-1);
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x210213_CheckAccept( sceneId, selfId )
	--C¥n 4c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 4 then
		return 1
	else
		return 0
	end
end

--**********************************
--Tiªp thø
--**********************************
function x210213_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId,selfId, x210213_g_MissionId, x210213_g_ScriptId, 1, 0, 0 )		--Ìí¼ÓÈÎÎñ
	misIndex = GetMissionIndexByID(sceneId,selfId,x210213_g_MissionId)			-- ði¬mµ½ÈÎÎñtoÕ ðµ ÐòÁÐºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ0Î»ÖÃ0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚ1Î»ÖÃ0
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø: µÚmµt ´ÎÉ±¹Ö",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210213_g_SignPost.x, x210213_g_SignPost.z, x210213_g_SignPost.tip )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, 7, 71, 250, "°×Ô³" )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, 75, 71, 250, "°×Ô³" )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, 76, 71, 250, "°×Ô³" )
end

--**********************************
--·ÅÆú
--**********************************
function x210213_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
    DelMission( sceneId, selfId, x210213_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210213_g_SignPost.tip )
end

--**********************************
--¼ÌÐø
--**********************************
function x210213_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210213_g_MissionName)
		AddText(sceneId,x210213_g_MissionComplete)
		AddMoneyBonus( sceneId, x210213_g_MoneyBonus )
		for i, item in x210213_g_ItemBonus do
			AddItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210213_g_ScriptId,x210213_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x210213_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210213_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	misIndex = GetMissionIndexByID(sceneId,selfId,x210213_g_MissionId)
    num = GetMissionParam(sceneId,selfId,misIndex,1)
    if num == x210213_g_DemandTrueKill[1].num then
			return 1
		end
	return 0
end

--**********************************
--Ìá½»
--**********************************
function x210213_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x210213_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
    	BeginAddItem(sceneId)
			for i, item in x210213_g_ItemBonus do
				AddItem( sceneId,item.id, item.num )
			end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
	if ret > 0 then
			AddMoney(sceneId,selfId,x210213_g_MoneyBonus );
			LuaFnAddExp( sceneId, selfId, 1200)
			--¿Û³ýÈÎÎñÎïÆ·
			--for i, item in g_DemandItem do
			--	DelItem( sceneId, selfId, item.id, item.num )
			--end
		ret = DelMission( sceneId, selfId, x210213_g_MissionId )
		if ret > 0 then
			MissionCom( sceneId, selfId, x210213_g_MissionId )
				AddItemListToHuman(sceneId,selfId)
				Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø: µÚmµt ´ÎÉ±¹Ö",MSG2PLAYER_PARA )
			end
		else
		--ÈÎÎñ½±ÀøÃ»ÓÐ¼Ó³É¹¦
			BeginEvent(sceneId)
				strText = "±³°üÒÑÂú,ÎÞ·¨Hoàn t¤t nhi®m vø"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210213_OnKillObject( sceneId, selfId, objdataId ,objId)

	if GetName(sceneId,objId) == x210213_g_DemandTrueKill[1].name	  then
		--  ðÕt ðßþcËùÓÐÈË
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			
			-- ¿´ÓÐÃ»ÓÐCái này ÈÎÎñ
			if IsHaveMission(sceneId, humanObjId, x210213_g_MissionId) > 0 then
				local misIndex = GetMissionIndexByID(sceneId,humanObjId,x210213_g_MissionId)
				local nNum = GetMissionParam(sceneId,humanObjId,misIndex,1)
	 			if nNum < x210213_g_DemandTrueKill[1].num then
	 				if nNum == x210213_g_DemandTrueKill[1].num - 1 then
	 					SetMissionByIndex(sceneId,humanObjId,misIndex,0,1)
	 				end
	 				
			    SetMissionByIndex(sceneId,humanObjId,misIndex,1,nNum+1)
			  	BeginEvent(sceneId)
					strText = format("Ðã giªt chªt %d/8 Thøc ÐÕo BÕch Viên", GetMissionParam(sceneId,humanObjId,misIndex,1) )
					AddText(sceneId,strText);
			  	EndEvent(sceneId)
			  	DispatchMissionTips(sceneId,humanObjId)
	 			end
			end
		end
	end

end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x210213_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210213_OnItemChanged( sceneId, selfId, itemdataId )
end
