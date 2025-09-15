--ÌØÊâÈÎÎñ ¸øÐÂÊÖmµt Ö»ÍÃ×Ó
--½ÇÉ«µÈc¤pÐ¡ÓÚ10c¤p¾Í¸ømµt Ö»ÍÃ×Ó,mµt cái½ÇÉ«mµt ´Î
--MisDescBegin
--½Å±¾ºÅ
x210218_g_ScriptId = 210218

--ÈÎÎñºÅ
x210218_g_MissionId = 458

--Møc tiêu nhi®m vønpc
x210218_g_Name	="Vân Phiêu Phiêu"

--ÈÎÎñ¹éÀà
x210218_g_MissionKind = 13

--ÐÆng c¤p nhi®m vø 
x210218_g_MissionLevel = 1

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x210218_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîÐúng¶¯Ì¬ÏÔÊ¾toÕ ðµ ÄÚÈÝ,ÓÃÓÚTÕi ÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
--ÈÎÎñÐúng·ñÒÑ¾­Íê³É
x210218_g_IsMissionOkFail = 0		--±äÁ¿toÕ ðµ µÚ0Î»

--ÒÔÉÏÐúng¶¯Ì¬**************************************************************

x210218_g_PetDataID = 3000

--ÈÎÎñÎÄ±¾ÃèÊö
x210218_g_MissionName="Ta mu¯n 1 con thö"
x210218_g_MissionInfo="Ðßþc r°i, nhìn ngß½i là ngß¶i m¾i ðªn, cho ngß½i 1 con ti¬u th¯, ngß½i phäi yêu thß½ng nó. "  --ÈÎÎñÃèÊö
x210218_g_MissionTarget="    G÷i ta 1 tiªng ch¸ Phiêu Phiêu. "		--Møc tiêu nhi®m vø
x210218_g_ContinueInfo="Ðây là con thö ta nuôi dÕy ðáng yêu nh¤t, ngß½i phäi chåm sóc nó c¦n th§n. "		--Î´Hoàn t¤t nhi®m vøtoÕ ðµ npc¶Ô»°
x210218_g_MissionComplete="Ch½i vui vë · ÐÕi Lý. "					--Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°

--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x210218_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ(Êµ¼ÊÉÏÈç¹ûÍê³ÉÁËÈÎÎñÕâÀï¾Í²»»áÏÔÊ¾,µ«ÐúngÔÙ¼ì²âmµt ´Î±È½Ï°²È«)
    if IsMissionHaveDone(sceneId,selfId,x210218_g_MissionId) > 0 then
		return
	end
	
	ret, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, x210218_g_PetDataID, -1, 0) --¸øÍæ¼ÒÉú³Émµt Ö»ÕäÊÞ
	if ret == 1 then 
		--ÏÂcái´°¿Ú,ÌáÊ¾Íæ¼Òmµt Ð©»°
		BeginEvent(sceneId)
		AddText(sceneId,x210218_g_ContinueInfo)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		--Hoàn t¤t nhi®m vø
		MissionCom( sceneId,selfId, x210218_g_MissionId )
	else
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ không th¬ mang quá nhi«u trân thú")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x210218_OnEnumerate( sceneId, selfId, targetId )

  --Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
  if IsMissionHaveDone(sceneId,selfId,x210218_g_MissionId) > 0 then
   	return 
	end
  --Èç¹ûÒÑ½Ó´ËÈÎÎñ
  --else
  if IsHaveMission(sceneId,selfId,x210218_g_MissionId) > 0 then
		AddNumText(sceneId,x210218_g_ScriptId,x210218_g_MissionName,2,-1);
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
    elseif x210218_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210218_g_ScriptId,x210218_g_MissionName,1,-1);
  end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x210218_CheckAccept( sceneId, selfId )
	--C¥n 8c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 8  then
		return 1
	else
		return 0
	end
end

--**********************************
--Tiªp thø
--**********************************
function x210218_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x210218_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x210218_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x210218_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x210218_OnSubmit( sceneId, selfId, targetId,selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210218_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x210218_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210218_OnItemChanged( sceneId, selfId, itemdataId )
end
