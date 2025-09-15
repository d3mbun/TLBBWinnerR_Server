--ÉÌµê
--ÃÅÅÉÉÌµê
--Võ Ðang Á¶µ¤

--½Å±¾ºÅ
x701608_g_ScriptId = 701608

--ÉÌµêºÅ
x701608_g_shoptableindex=54

--ÉÌµêÃû³Æ
x701608_g_ShopName = "Mua phß½ng thÑc luy®n ðan"

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x701608_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	DispatchShopItem( sceneId, selfId,targetId, x701608_g_shoptableindex )
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x701608_OnEnumerate( sceneId, selfId, targetId )
	--ÅÐ¶ÏÐúng·ñÐúng±¾ÅÉµÜ×Ó
	if GetMenPai(sceneId,selfId) == MP_WUDANG then
		AddNumText(sceneId,x701608_g_ScriptId,x701608_g_ShopName,7,-1)
    end
	return
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x701608_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x701608_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x701608_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x701608_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x701608_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x701608_OnSubmit( sceneId, selfId, targetId,selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x701608_OnKillObject( sceneId, selfId, objdataId,objId)
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x701608_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x701608_OnItemChanged( sceneId, selfId, itemdataId )
end
