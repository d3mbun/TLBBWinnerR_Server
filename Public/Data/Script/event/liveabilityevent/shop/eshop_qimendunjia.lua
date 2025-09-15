--ÉÌµê
--ÃÅÅÉÉÌµê
--Tiêu Dao ÆæÃÅ¶Ý¼×

--½Å±¾ºÅ
x701611_g_ScriptId = 701611

--ÉÌµêºÅ
x701611_g_shoptableindex=57

--ÉÌµêÃû³Æ
x701611_g_ShopName = "Mua phß½ng thÑc kÏ môn"

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x701611_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	DispatchShopItem( sceneId, selfId,targetId, x701611_g_shoptableindex )
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x701611_OnEnumerate( sceneId, selfId, targetId )
	--ÅÐ¶ÏÐúng·ñÐúng±¾ÅÉµÜ×Ó
	if GetMenPai(sceneId,selfId) == MP_XIAOYAO then
		AddNumText(sceneId,x701611_g_ScriptId,x701611_g_ShopName,7,-1)
    end
	return
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x701611_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x701611_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x701611_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x701611_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x701611_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x701611_OnSubmit( sceneId, selfId, targetId,selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x701611_OnKillObject( sceneId, selfId, objdataId,objId)
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x701611_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x701611_OnItemChanged( sceneId, selfId, itemdataId )
end
