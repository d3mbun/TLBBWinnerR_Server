--ÉÌµê
--ÃÅÅÉÉÌµê
--Tinh Túc ÖÆ¶¾

--½Å±¾ºÅ
x701610_g_ScriptId = 701610

--ÉÌµêºÅ
x701610_g_shoptableindex=56

--ÉÌµêÃû³Æ
x701610_g_ShopName = "Mua phß½ng thÑc chª ðµc"

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x701610_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	DispatchShopItem( sceneId, selfId,targetId, x701610_g_shoptableindex )
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x701610_OnEnumerate( sceneId, selfId, targetId )
	--ÅÐ¶ÏÐúng·ñÐúng±¾ÅÉµÜ×Ó
	if GetMenPai(sceneId,selfId) == MP_XINGSU then
		AddNumText(sceneId,x701610_g_ScriptId,x701610_g_ShopName,7,-1)
    end
	return
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x701610_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x701610_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x701610_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x701610_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x701610_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x701610_OnSubmit( sceneId, selfId, targetId,selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x701610_OnKillObject( sceneId, selfId, objdataId,objId)
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x701610_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x701610_OnItemChanged( sceneId, selfId, itemdataId )
end
