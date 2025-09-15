--ÉÌµê
--ÃÅÅÉÉÌµê
--Thiên S½n Ðþ±ùÊõ

--½Å±¾ºÅ
x701612_g_ScriptId = 701612

--ÉÌµêºÅ
x701612_g_shoptableindex=58

--ÉÌµêÃû³Æ
x701612_g_ShopName = "Mua phß½ng thÑc huy«n bång"

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x701612_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	DispatchShopItem( sceneId, selfId,targetId, x701612_g_shoptableindex )
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x701612_OnEnumerate( sceneId, selfId, targetId )
	--ÅÐ¶ÏÐúng·ñÐúng±¾ÅÉµÜ×Ó
	if GetMenPai(sceneId,selfId) == MP_TIANSHAN then
		AddNumText(sceneId,x701612_g_ScriptId,x701612_g_ShopName,7,-1)
    end
	return
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x701612_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x701612_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x701612_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x701612_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x701612_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x701612_OnSubmit( sceneId, selfId, targetId,selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x701612_OnKillObject( sceneId, selfId, objdataId,objId)
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x701612_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x701612_OnItemChanged( sceneId, selfId, itemdataId )
end
