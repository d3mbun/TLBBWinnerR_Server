--------------------------------------------
--Ç©ÃûÂ¼µÀ¾ß½Å±¾
--Created By ×ó´ºÎ°
--------------------------------------------

--½Å±¾ID
x335806_g_scriptId = 335806
--Ç©ÃûµÀ¾ßID
x335806_g_signatureId = 40004452; 
--ÐèÊÕ¼¯ÊýÁ¿
x335806_g_FullNum = 15;
-- ÊÕ¼¯Ç©ÃûÈÎÎñºÅ
x335806_g_MissionId = 1130;

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x335806_OnDefaultEvent( sceneId, selfId, bagIndex )	

end

--**********************************
--Cái này ÎïÆ·toÕ ðµ Ê¹ÓÃ¹ý³ÌÐúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ÐÐ¿ªÊ¼Ê±¼ì²âCái này º¯ÊýtoÕ ðµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ðµ ÀàËÆ¼¼ÄÜtoÕ ðµ Ö´ÐÐ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ðµ ÎïÆ·,¿ÉÒÔ¼ÌÐøÀàËÆ¼¼ÄÜtoÕ ðµ Ö´ÐÐ£»Tr· v«0: ºöÂÔºóÃætoÕ ðµ ²Ù×÷.
--**********************************
function x335806_IsSkillLikeScript( sceneId, selfId)
	return 1
end

--**********************************
--Ö±½ÓHuÖ böÐ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾ÝCái này º¯ÊýtoÕ ðµ Tr· v«ÖµXác nh§nÒÔºótoÕ ðµ Á÷³ÌÐúng·ñÖ´ÐÐ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ð§¹û,²»ÔÙÖ´ÐÐºóÐø²Ù×÷£»Tr· v«0: Ã»ÓÐ¼ì²âµ½Ïà¹ØÐ§¹û,¼ÌÐøÖ´ÐÐ.
--**********************************
function x335806_CancelImpacts( sceneId, selfId )
	return 0;
end

--**********************************
--Ìõ¼þ¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ðµ Ê±¼ä ði¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾ÝCái này º¯ÊýtoÕ ðµ Tr· v«ÖµXác nh§nÒÔºótoÕ ðµ Á÷³ÌÐúng·ñÖ´ÐÐ.
--Tr· v«1: Ìõ¼þ¼ì²âÍ¨¹ý,¿ÉÒÔ¼ÌÐøÖ´ÐÐ£»Tr· v«0: Ìõ¼þ¼ì²âth¤t bÕi,ÖÐ¶ÏºóÐøÖ´ÐÐ.
--**********************************
function x335806_OnConditionCheck( sceneId, selfId )
	--Ð£ÑéÊ¹ÓÃtoÕ ðµ ÎïÆ·
	if 1 ~= LuaFnVerifyUsedItem(sceneId, selfId) then
		return 0;
	end
	if x335806_IsFitCondition(sceneId, selfId) == 0 then
		return 0;
	end
	-- ¼ì²âÍ¨¹ý
	local targetId = LuaFnGetTargetObjID(sceneId, selfId);
	local myName = GetName(sceneId, selfId);
	BeginEvent(sceneId)
		local text = format("#{_INFOUSR%s}Ngß½i ðang thu th§p chæ kí, không ðßþc r¶i ði phÕm vi phø c§n.", myName);
		AddText(sceneId, text);
	EndEvent()
	DispatchMissionTips(sceneId, targetId);
	return 1;
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜÏûºÄtoÕ ðµ Ê±¼ä ði¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾ÝCái này º¯ÊýtoÕ ðµ Tr· v«ÖµXác nh§nÒÔºótoÕ ðµ Á÷³ÌÐúng·ñÖ´ÐÐ.
--Tr· v«1: ÏûºÄ´¦ÀíÍ¨¹ý,¿ÉÒÔ¼ÌÐøÖ´ÐÐ£»Tr· v«0: ÏûºÄ¼ì²âth¤t bÕi,ÖÐ¶ÏºóÐøÖ´ÐÐ.
--×¢Òâ: Õâ²»¹â¸ºÔðÏûºÄtoÕ ðµ ¼ì²âÒ²¸ºÔðÏûºÄtoÕ ðµ Ö´ÐÐ.
--**********************************
function x335806_OnDeplete( sceneId, selfId )	
	return 1;
end

--**********************************
--Ö»»áÖ´ÐÐmµt ´ÎÈë¿Ú: 
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼þ¶¼Thöa mãntoÕ ðµ Ê±ºò),¶øÒýµ¼
--¼¼ÄÜÒ²»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¼¼ÄÜtoÕ ðµ mµt ¿ªÊ¼,ÏûºÄ³É¹¦Ö´ÐÐÖ®ºó).
--Tr· v«1: ´¦Àí³É¹¦£»Tr· v«0: ´¦Àíth¤t bÕi.
--×¢: ÕâÀïÐúng¼¼ÄÜÉúÐ§mµt ´ÎtoÕ ðµ Èë¿Ú
--**********************************
function x335806_OnActivateOnce( sceneId, selfId )
	if IsHaveMission(sceneId, selfId, x335806_g_MissionId) == 1 then
		local misIndex = GetMissionIndexByID(sceneId, selfId, x335806_g_MissionId);
		SetMissionByIndex(sceneId, selfId, misIndex, 2, 1);
	end	
	return 1;
end

--**********************************
--Òýµ¼ÐÄÌø´¦ÀíÈë¿Ú: 
--Òýµ¼¼¼ÄÜ»áTÕi Ã¿´ÎÐÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌÐøÏÂ´ÎÐÄÌø£»0: ÖÐ¶ÏÒýµ¼.
--×¢: ÕâÀïÐúng¼¼ÄÜÉúÐ§mµt ´ÎtoÕ ðµ Èë¿Ú
--**********************************
function x335806_OnActivateEachTick( sceneId, selfId)
	--¼ì²âºÃÓÑÐúng·ñ³¬¾àÀë
	local targetId = LuaFnGetTargetObjID(sceneId, selfId);
	local cur_x, cur_y = LuaFnGetWorldPos(sceneId, selfId);
	local cur_x2, cur_y2 = LuaFnGetWorldPos(sceneId, targetId);
	if (cur_x2-cur_x)*(cur_x2-cur_x) + (cur_y2-cur_y)*(cur_y2-cur_y) > 30 then 	
		x335806_MsgBox(sceneId, selfId, "#{SJQM_8815_14}");
		return 0;	
	end
	if IsHaveMission(sceneId, selfId, x335806_g_MissionId) == 1 then
		local misIndex = GetMissionIndexByID(sceneId, selfId, x335806_g_MissionId);
		local tickCount = GetMissionParam(sceneId, selfId, misIndex, 2)
		if tickCount >= 60 then --1 phútÊ±¼äµ½,½ø¶ÈÌõ×ßÍê
			--Ìõ¼þ¼ì²é
			if x335806_IsFitCondition(sceneId, selfId) == 0 then
				return 0;
			end		
			--¸øºÃÓÑÇ©ÃûµÀ¾ß
			local bagPos = TryRecieveItem(sceneId, selfId, x335806_g_signatureId, QUALITY_MUST_BE_CHANGE);
			if bagPos == -1 then
				x335806_MsgBox(sceneId, selfId, "C¤p ðÕo cø chæ kí häo hæu th¤t bÕi!");
				return 0;
			end
			--Ç©Ãû
			local targetId = LuaFnGetTargetObjID(sceneId, selfId);
			local friendName = GetName(sceneId, targetId);
			LuaFnSetItemCreator(sceneId, selfId, bagPos, friendName);
			local num = GetItemCount(sceneId, selfId, x335806_g_signatureId);
			SetMissionByIndex(sceneId, selfId, misIndex, 1, num);
			if num >= x335806_g_FullNum then
				SetMissionByIndex(sceneId, selfId, misIndex, 0, 1);
			end
			local text = format("Ðã thành công thu th§p ðßþc %d/15 cái chæ kí.", num);
			x335806_MsgBox(sceneId, selfId, text);	
		end		
		SetMissionByIndex(sceneId, selfId, misIndex, 2, tickCount+1);
	end		
	return 1;   
end

--**********************************
--ÐÅÏ¢ÌáÊ¾
--**********************************
function x335806_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
-- Ìõ¼þ¼ì²é 
-- ³É¹¦: 1  th¤t bÕi: 0
--**********************************
function x335806_IsFitCondition(sceneId, selfId)
	--ÊÕ¼¯ÒÑÂú?
	local text = "";
	if LuaFnGetItemCount(sceneId, selfId, x335806_g_signatureId) >= x335806_g_FullNum then
		x335806_MsgBox(sceneId, selfId, "#{SJQM_8815_09}");
		return 0;
	end
	--Ñ¡ÔñÊ¹ÓÃ¶ÔÏóÁË?
	local targetId = LuaFnGetTargetObjID(sceneId, selfId);
	if targetId < 0 or targetId == selfId then
		x335806_MsgBox(sceneId, selfId, "#{YRJ_SelfUseTip}");	
		return 0;
	end	
	--Ö»ÄÜ¸øÍæ¼ÒÊ¹ÓÃ
	local objType = GetCharacterType( sceneId, targetId )--¶ÔÏóÀàÐÍ
	if(objType ~= 1)then	--¶ÔÏó²»ÐúngHuman
		x335806_MsgBox( sceneId, selfId, "#{ResultText_8}")	--ÎÞÐ§Ä¿±ê
		return 0
	end	
	--ÐúngºÃÓÑ?
	if LuaFnIsFriend(sceneId, selfId, targetId) == 1 then
		if LuaFnGetFriendPoint(sceneId, selfId, targetId) < 200 then --200ÓÑºÃ¶È?
			x335806_MsgBox(sceneId, selfId, "#{SJQM_8815_10}");
			return 0;
		end
	else --·ÇºÃÓÑ
		x335806_MsgBox(sceneId, selfId, "#{SJQM_8815_11}");
		return 0;
	end	
	--³¬¹ý¾àÀë
	local cur_x, cur_y = LuaFnGetWorldPos(sceneId, selfId);
	local cur_x2, cur_y2 = LuaFnGetWorldPos(sceneId, targetId);
	if (cur_x2-cur_x)*(cur_x2-cur_x) + (cur_y2-cur_y)*(cur_y2-cur_y) > 30 then 	
		x335806_MsgBox(sceneId, selfId, "Vßþt qua phÕm vi!");
		return 0;	
	end
	--ÒÑÓÐ¸ÃºÃÓÑÇ©Ãû?
	local friendName = GetName(sceneId, targetId);
	local taskBagStartPos	= LuaFnGetMaterialEndBagPos(sceneId, selfId) + 1;
	for i=taskBagStartPos, taskBagStartPos+19 do
		local bSucc, Creator = LuaFnGetItemCreator(sceneId, selfId, i);
		if friendName == Creator then
			x335806_MsgBox(sceneId, selfId, "#{SJQM_8815_12}");
			return 0;
		end
	end
	--ÈÎÎñÀ¸ÓÐ¿Õ¼ä?
	if LuaFnGetTaskItemBagSpace(sceneId, selfId) == 0 then
		x335806_MsgBox(sceneId, selfId, "#{SJQM_8815_13}");
		return 0;		
	end
	--·ÅÆúÈÎÎñ
	if IsHaveMission(sceneId, selfId, x335806_g_MissionId) == 0 then
		x335806_MsgBox(sceneId, selfId, "Ngß½i ðã vÑt bö nhi®m vø chæ kí, nên ðÕo cø không th¬ dùng!");
		return 0;		
	end
	--OK
	return 1;
end
