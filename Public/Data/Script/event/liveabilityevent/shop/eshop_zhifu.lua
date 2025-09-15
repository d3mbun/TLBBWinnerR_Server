--ÉÌµê
--ÃÅÅÉÉÌµê
--Nga My ÖÆ·û

--½Å±¾ºÅ
x701609_g_ScriptId = 701609

--ÉÌµêºÅ
x701609_g_shoptableindex=55

--ÉÌµêÃû³Æ
x701609_g_ShopName = "Mua phß½ng thÑc chª bùa"

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x701609_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	DispatchShopItem( sceneId, selfId,targetId, x701609_g_shoptableindex )
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x701609_OnEnumerate( sceneId, selfId, targetId )
	--ÅÐ¶ÏÐúng·ñÐúng±¾ÅÉµÜ×Ó
	if GetMenPai(sceneId,selfId) == MP_EMEI then
		AddNumText(sceneId,x701609_g_ScriptId,x701609_g_ShopName,7,-1)
    end
	return
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x701609_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x701609_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x701609_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x701609_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x701609_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x701609_OnSubmit( sceneId, selfId, targetId,selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x701609_OnKillObject( sceneId, selfId, objdataId,objId)
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x701609_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x701609_OnItemChanged( sceneId, selfId, itemdataId )
end
