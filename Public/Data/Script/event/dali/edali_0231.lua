--É±¹ÖÈÎÎñ
--Ğ¡Ä¾ÈËÏï
--Ğ¡Ä¾ÈËÏïÉ±Ä¾ÈËÈÎÎñ
--MisDescBegin
--½Å±¾ºÅ
x210231_g_ScriptId  = 210231

--ÉÏmµt cáiÈÎÎñtoÕ ğµ ID
x210231_g_MissionIdPre = 710

--ÈÎÎñºÅ
x210231_g_MissionId = 711

--Ä¿±êNPC
x210231_g_Name	="Hoàng Mi Tång"

--ÈÎÎñ¹éÀà
x210231_g_MissionKind = 13

--ĞÆng c¤p nhi®m vø 
x210231_g_MissionLevel = 9

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x210231_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîĞúng¶¯Ì¬ÏÔÊ¾toÕ ğµ ÄÚÈİ,ÓÃÓÚTÕi ÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
--ÈÎÎñĞúng·ñÒÑ¾­Íê³É
x210231_g_IsMissionOkFail = 0		--±äÁ¿toÕ ğµ µÚ0Î»

--ÈÎÎñC¥n É±ËÀtoÕ ğµ ¹Ö
x210231_g_DemandKill ={{id=703,num=5}}		--±äÁ¿µÚ1Î»

--ÒÔÉÏĞúng¶¯Ì¬**************************************************************

--ÈÎÎñÎÄ±¾ÃèÊö
x210231_g_MissionName="Ti¬u Mµc Nhân HÕng"
x210231_g_MissionInfo="  Thí chü, Ti¬u Mµc Nhân HÕng tuy sánh không b¢ng Thiªu Lâm Mµc Nhân HÕng, nhßng quái v§t · bên trong kiêu dûng d¸ thß¶ng. Xin thí chü lúc tu luy®n d¯c toàn sÑc. #rThí chü chï c¥n giªt chªt 5 con Mµc Ğ¥u Nhân, l¥n tu luy®n này ğã hoàn thành r°i. 1 l¥n chßa ğánh hªt cûng không sao, thí chü có th¬ quay ra r°i vào lÕi Ti¬u Mµc Nhân HÕng, ğªn khi nào hoàn thành thì thôi. " --ÈÎÎñÃèÊö
x210231_g_MissionTarget="— #G Ti¬u Mµc Nhân HÕng#W giªt chªt 5 con#R Mµc Ğ¥u Nhân#W, sau ğó quay v« g£p #RHoàng Mi Tång #W#{_INFOAIM275,49,2, Hoàng Mi Tång}."	--Møc tiêu nhi®m vø
x210231_g_ContinueInfo="Các hÕ ğã giªt chªt 5 con Mµc Ğ¥u Nhân chßa?"	--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x210231_g_MissionComplete="  Quá trình tu luy®n cüa thí chü r¤t thành công. Không g£p 1 lúc, võ công cüa thí chü ğã tinh tiªn không ít. "	--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°
x210231_g_SignPost = {x = 275, z = 50, tip = "Hoàng Mi Tång"}
--ÈÎÎñ½±Àø
x210231_g_MoneyBonus=200
--x210231_g_ItemBonus={{id=40002108,num=1},{id=30101001,num=5}}

x210231_g_DemandTrueKill ={{name="Mµc Ğ¥u Nhân",num=5}}

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x210231_OnDefaultEvent( sceneId, selfId, targetId )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	--Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ(Êµ¼ÊÉÏÈç¹ûÍê³ÉÁËÈÎÎñÕâÀï¾Í²»»áÏÔÊ¾,µ«ĞúngÔÙ¼ì²âmµt ´Î±È½Ï°²È«)
    --if IsMissionHaveDone(sceneId,selfId,x210231_g_MissionId) > 0 then
	--	return
	--end
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x210231_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñĞèÇótoÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x210231_g_MissionName)
			AddText(sceneId,x210231_g_ContinueInfo)
			--for i, item in g_DemandItem do
			--	AddItemDemand( sceneId, item.id, item.num )
			--end
			AddMoneyBonus( sceneId, x210231_g_MoneyBonus )
		EndEvent( )
		bDone = x210231_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210231_g_ScriptId ,x210231_g_MissionId,bDone)
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
    elseif x210231_CheckAccept(sceneId,selfId) > 0 then
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x210231_g_MissionName)
				AddText(sceneId,x210231_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210231_g_MissionTarget)
				--for i, item in x210231_g_ItemBonus do
				--	AddItemBonus( sceneId, item.id, item.num )
				--end
				AddMoneyBonus( sceneId, x210231_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210231_g_ScriptId ,x210231_g_MissionId)
    end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x210231_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÍæ¼mµt ¹Î´Íê³ÉÉÏmµt cáiÈÎÎñ
    if 	IsMissionHaveDone(sceneId,selfId,x210231_g_MissionIdPre) <= 0 then
    	return
    end
    --Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
    if IsMissionHaveDone(sceneId,selfId,x210231_g_MissionId) > 0 then
    	return
	end
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    if IsHaveMission(sceneId,selfId,x210231_g_MissionId) > 0 then
		AddNumText(sceneId,x210231_g_ScriptId ,x210231_g_MissionName,2,-1);
		--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x210231_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210231_g_ScriptId ,x210231_g_MissionName,1,-1);
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x210231_CheckAccept( sceneId, selfId )
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
function x210231_OnAccept( sceneId, selfId )
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId,selfId, x210231_g_MissionId, x210231_g_ScriptId , 1, 0, 0 )		--Ìí¼ÓÈÎÎñ
	misIndex = GetMissionIndexByID(sceneId,selfId,x210231_g_MissionId)			-- ği¬mµ½ÈÎÎñtoÕ ğµ ĞòÁĞºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ0Î»ÖÃ0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ1Î»ÖÃ0
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Ti¬u Mµc Nhân HÕng",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210231_g_SignPost.x, x210231_g_SignPost.z, x210231_g_SignPost.tip )
end

--**********************************
--·ÅÆú
--**********************************
function x210231_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
    DelMission( sceneId, selfId, x210231_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210231_g_SignPost.tip )
end

--**********************************
--¼ÌĞø
--**********************************
function x210231_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ğµ Ë ği¬m÷ĞÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x210231_g_MissionName)
		AddText(sceneId,x210231_g_MissionComplete)
		AddMoneyBonus( sceneId, x210231_g_MoneyBonus )
		--for i, item in x210231_g_ItemBonus do
		--	AddItemBonus( sceneId, item.id, item.num )
		--end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210231_g_ScriptId ,x210231_g_MissionId)
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x210231_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210231_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	misIndex = GetMissionIndexByID(sceneId,selfId,x210231_g_MissionId)
    num = GetMissionParam(sceneId,selfId,misIndex,1)
    if num == x210231_g_DemandTrueKill[1].num then
			return 1
		end
	return 0
end

--**********************************
--Ìá½»
--**********************************
function x210231_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x210231_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		ret = 1
		--Ìí¼ÓÈÎÎñ½±Àø
		if ret > 0 then
			AddMoney(sceneId,selfId,x210231_g_MoneyBonus );
			LuaFnAddExp( sceneId, selfId,1620)
			--¿Û³ıÈÎÎñÎïÆ·
			--for i, item in g_DemandItem do
			--	DelItem( sceneId, selfId, item.id, item.num )
			--end
			ret = DelMission( sceneId, selfId, x210231_g_MissionId )
			if ret > 0 then
				MissionCom( sceneId, selfId, x210231_g_MissionId )
				--AddItemListToHuman(sceneId,selfId)
				Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø#W: Ti¬u Mµc Nhân HÕng",MSG2PLAYER_PARA )
				CallScriptFunction( 210232, "OnDefaultEvent",sceneId, selfId, targetId)
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
function x210231_OnKillObject( sceneId, selfId, objdataId ,objId)
	
	if GetName(sceneId,objId) == x210231_g_DemandTrueKill[1].name	  then
		--  ğÕt ğßşcËùÓĞÈË
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			
			-- ¿´ÓĞÃ»ÓĞCái này ÈÎÎñ
			if IsHaveMission(sceneId, humanObjId, x210231_g_MissionId) > 0 then
				local misIndex = GetMissionIndexByID(sceneId,humanObjId,x210231_g_MissionId)
				local nNum = GetMissionParam(sceneId,humanObjId,misIndex,1)

	 			if nNum < x210231_g_DemandTrueKill[1].num then
	 				if nNum == x210231_g_DemandTrueKill[1].num - 1 then
	 					SetMissionByIndex(sceneId,humanObjId,misIndex,0,1)
	 				end
	 				
			    SetMissionByIndex(sceneId,humanObjId,misIndex,1,nNum+1)
			  	BeginEvent(sceneId)
					strText = format("Ğã giªt ğßşc %d/5 Mµc Ğ¥u Nhân", GetMissionParam(sceneId,humanObjId,misIndex,1) )
					AddText(sceneId,strText);
			  	EndEvent(sceneId)
			  	DispatchMissionTips(sceneId,humanObjId)
	 			end
			end
		end
	end
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x210231_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210231_OnItemChanged( sceneId, selfId, itemdataId )
end
