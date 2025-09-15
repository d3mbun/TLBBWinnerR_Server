--ÉÌµê
--ÃÅÅÉÉÌµê
--Thiªu Lâm ¿ª¹â

--½Å±¾ºÅ
x701605_g_ScriptId = 701605

--ÉÌµêºÅ
x701605_g_shoptableindex=51

--ÉÌµêÃû³Æ
x701605_g_ShopName = "Mua phß½ng thÑc chª tÕo khai khoáng"

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x701605_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	DispatchShopItem( sceneId, selfId,targetId, x701605_g_shoptableindex )
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x701605_OnEnumerate( sceneId, selfId, targetId )
	--ÅÐ¶ÏÐúng·ñÐúng±¾ÅÉµÜ×Ó
	if GetMenPai(sceneId,selfId) == MP_SHAOLIN then
		AddNumText(sceneId,x701605_g_ScriptId,x701605_g_ShopName,7,-1)
    end
	return
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x701605_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x701605_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x701605_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x701605_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x701605_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x701605_OnSubmit( sceneId, selfId, targetId,selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x701605_OnKillObject( sceneId, selfId, objdataId,objId)
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x701605_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x701605_OnItemChanged( sceneId, selfId, itemdataId )
end
