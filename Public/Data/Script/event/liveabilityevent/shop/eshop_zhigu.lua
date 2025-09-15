--ÉÌµê
--ÃÅÅÉÉÌµê
--ÐÕi Lý ÖÆ¹Æ

--½Å±¾ºÅ
x701613_g_ScriptId = 701613

--ÉÌµêºÅ
x701613_g_shoptableindex=52

--ÉÌµêÃû³Æ
x701613_g_ShopName = "Mua phß½ng thÑc chª ðµc"

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x701613_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	DispatchShopItem( sceneId, selfId,targetId, x701613_g_shoptableindex )
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x701613_OnEnumerate( sceneId, selfId, targetId )
	--ÅÐ¶ÏÐúng·ñÐúng±¾ÅÉµÜ×Ó
	if GetMenPai(sceneId,selfId) == MP_DALI then
		AddNumText(sceneId,x701613_g_ScriptId,x701613_g_ShopName,7,-1)
    end
	return
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x701613_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x701613_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x701613_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x701613_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x701613_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x701613_OnSubmit( sceneId, selfId, targetId,selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x701613_OnKillObject( sceneId, selfId, objdataId,objId)
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x701613_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x701613_OnItemChanged( sceneId, selfId, itemdataId )
end
