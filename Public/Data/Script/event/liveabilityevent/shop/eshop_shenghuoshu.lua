--ÉÌµê
--ÃÅÅÉÉÌµê
--Minh Giáo Ê¥»ðÊõ

--½Å±¾ºÅ
x701607_g_ScriptId = 701607

--ÉÌµêºÅ
x701607_g_shoptableindex=53

--ÉÌµêÃû³Æ
x701607_g_ShopName = "Mua phß½ng thÑc thánh höa"

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x701607_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	DispatchShopItem( sceneId, selfId,targetId, x701607_g_shoptableindex )
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x701607_OnEnumerate( sceneId, selfId, targetId )
	--ÅÐ¶ÏÐúng·ñÐúng±¾ÅÉµÜ×Ó
	if GetMenPai(sceneId,selfId) == MP_MINGJIAO then
		AddNumText(sceneId,x701607_g_ScriptId,x701607_g_ShopName,7,-1)
    end
	return
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x701607_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x701607_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x701607_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x701607_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x701607_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x701607_OnSubmit( sceneId, selfId, targetId,selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x701607_OnKillObject( sceneId, selfId, objdataId,objId)
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x701607_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x701607_OnItemChanged( sceneId, selfId, itemdataId )
end
