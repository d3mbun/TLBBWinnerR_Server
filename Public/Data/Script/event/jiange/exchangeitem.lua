-- 212221
-- ¶mµt »ÎïÆ·
x212221_g_scriptId = 212221

x212221_g_Stone = {
									{level=75, id=20310004, id2=20310005, num=60}, --20310004ÇØ»ÊÖé 20310005°ó¶¨ÇØ»ÊÖé
									{level=85, id=20310004, id2=20310005, num=90},

									}
										


x212221_g_Item = {
									{level=750,id=10412080},{level=750,id=10413083},{level=750,id=10422121},{level=750,id=10423046}, --75ÄÚ¹¦Ì××°
									{level=751,id=10412082},{level=751,id=10413085},{level=751,id=10422123},{level=751,id=10423048}, --75Íâ¹¦Ì××°
									{level=850,id=10412081},{level=850,id=10413084},{level=850,id=10422122},{level=850,id=10423047}, --85ÄÚ¹¦Ì××°				
									{level=851,id=10412083},{level=851,id=10413086},{level=851,id=10422124},{level=851,id=10423049}, --85Íâ¹¦Ì××°		
								 }


--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x212221_OnDefaultEvent( sceneId, selfId, targetId )
	local nNum = GetNumText()
	if nNum == 750 or nNum == 850  or nNum == 751 or nNum == 851   then		
		local str		
		if nNum == 750 or nNum == 751 then
			str = "#{DG_8724_5}"
		elseif nNum == 850 or nNum == 851  then
			str = "#{DG_8724_6}"
		end
		BeginEvent(sceneId)
			AddText(sceneId,str);
			for i, temp in x212221_g_Item do
				if temp.level == nNum  then
					AddRadioItemBonus( sceneId, temp.id, 1 )
				end
			end
		EndEvent(sceneId)
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x212221_g_scriptId,0)
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x212221_OnEnumerate( sceneId, selfId, targetId )
	AddNumText( sceneId, x212221_g_scriptId, "L¤y bµ trang b¸ nµi công c¤p 75", 6, 750 )
	AddNumText( sceneId, x212221_g_scriptId, "L¤y bµ trang b¸ ngoÕi công c¤p 75", 6, 751 )
	AddNumText( sceneId, x212221_g_scriptId, "L¤y bµ trang b¸ nµi công c¤p 85", 6, 850 )	
	AddNumText( sceneId, x212221_g_scriptId, "L¤y bµ trang b¸ ngoÕi công c¤p 85", 6, 851 )
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x212221_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x212221_OnAccept( sceneId, selfId )

end

--**********************************
--·ÅÆú
--**********************************
function x212221_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x212221_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x212221_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x212221_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	-- ¼ì²â´«¹ýÀ´toÕ ðµ Cái này ÖµÐúng²»ÐúngÓÐÐ§toÕ ðµ 
	local logNum1 = 0
	local item
	local stone

	local bHaveItem = 0
	local bHaveStone = 0
	local temp
	local temp1
	for i, temp in x212221_g_Item do
		if temp.id == selectRadioId  then
			item = temp
			bHaveItem = 1
		end
	end
	
	-- Ìá½»toÕ ðµ ÎïÆ·²»¶ÔÓ¦,Ö±½ÓTr· v«,²»×ö´¦Àí
	if bHaveItem == 0  then
		return
	end
	
	for i, temp1 in x212221_g_Stone do
		if (10*temp1.level == item.level) or ((10*temp1.level+1 == item.level)) then --ÓÐ ði¬m¹Ö,Ö»ÓÐÕâÑùÁË,ÒòÎªlua²»ÄÜÕû³ý.
			stone = temp1
			bHaveStone = 1
		end
	end
	
	-- ÕÒ²»µ½¶ÔÓ¦toÕ ðµ Ê¯Í·,Ö±½ÓTr· v«
	if bHaveStone == 0    then
		return
	end
	
	-- 1,¼ì²âÍæ¼ÒÉíÉÏÐúng²»ÐúngÓÐÎ»ÖÃÄÜ¹»·ÅÏÂÎïÆ·
	BeginAddItem(sceneId)
		AddItem( sceneId, item.id, 1 )
	local ret = EndAddItem(sceneId,selfId)

	if ret < 1 then
		return
	end
	
	-- 2,¼ÆËãÊ¯Í·ÊýÁ¿
	local selfStoneCount = GetItemCount(sceneId,selfId, stone.id) + GetItemCount(sceneId, selfId, stone.id2);
	if stone.num > selfStoneCount   then
		BeginEvent(sceneId)
			strText = format("Xin thÑ l²i, T¥n Hoàng Châu c¥n phäi có 60 viên", tostring(stone.num))
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return		
	end
	
	-- 3,¼ì²â±³°üÖÐ,Èç¹ûÓÐÊ¯Í·ÉÏËø,¾Í²»ÈÃÖ´ÐÐÏÂÈ¥
	local availableStone = LuaFnGetAvailableItemCount( sceneId, selfId, stone.id ) + LuaFnGetAvailableItemCount( sceneId, selfId, stone.id2 );
	if availableStone < stone.num  then
		BeginEvent(sceneId)
			strText = "#{DG_8724_8}"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end	
	
	-- 4,É¾³ýÎïÆ· ÓÅÏÈÉ¾³ý°ó¶¨toÕ ðµ 
	local bindNum = LuaFnGetAvailableItemCount(sceneId, selfId, stone.id2);
	if (bindNum >= stone.num) then --°ó¶¨toÕ ðµ Ê¯Í·×ã¹»
		if LuaFnDelAvailableItem(sceneId, selfId, stone.id2, stone.num) == 0 then
			BeginEvent(sceneId)
				strText = "Dong 2";
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
	else --²»¹»
		if (LuaFnDelAvailableItem(sceneId, selfId, stone.id2, bindNum) == 0) or (LuaFnDelAvailableItem(sceneId, selfId, stone.id, stone.num-bindNum) == 0) then
			BeginEvent(sceneId)
				strText = "Dong 2";
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
	end
	logNum1 = stone.num;
	-- ¸ø½±Àø
	AddItemListToHuman(sceneId,selfId)
	-- ¼ÇÂ¼Log
	LuaFnAuditYanXuanYuExchange(sceneId, selfId, stone.id, logNum1, item.id)
	
	--¶mµt »³É¹¦,²¥·ÅÌØÐ§
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
	
	-- ·¢ÊÀ½ç¹«¸æ
	local szItem = GetItemTransfer(sceneId,selfId,0)

  message = format("#W#{_INFOUSR%s}#P³É¹¦°ï#YÙøÎÞÃû#P´Ó#GÇØ»ÊµØ¹¬#PÖÐÇÀ¾È³ö%s¿Å#YÇØ»ÊÖé#P,ÙøÎÞÃûÎª±íÊ¾¸Ð¼¤,½«×æ´«toÕ ðµ #Y#{_INFOMSG%s}#Pmµt cáiÏàÔù.", 
   										GetName(sceneId, selfId), tostring(stone.num),  szItem);
	AddGlobalCountNews( sceneId, message )	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x212221_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x212221_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x212221_OnItemChanged( sceneId, selfId, itemdataId )
end



