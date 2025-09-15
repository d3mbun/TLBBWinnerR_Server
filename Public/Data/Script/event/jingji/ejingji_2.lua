-- 125021
-- ¾º¼¼³¡ ¸¨Öú¹¦ÄÜ£¬¶Ò»»Ñü´ø
x125021_g_ScriptId = 125021

--ÃËÖ÷Ö®Ó¡		Buff6_1		30505143
--Í­Ñü´ø		Girdle3_4		10421018
--ÒøÑü´ø		Girdle3_3		10421019
--½ðÑü´ø		Girdle3_2		10421020
--Æß±¦Ñü´ø	Girdle3_1		10421021

x125021_g_StoneId = 30505143

x125021_g_Item_1 = 10421018
x125021_g_Item_2 = 10421019
x125021_g_Item_3 = 10421020
x125021_g_Item_4 = 10421021

x125021_g_Exp = 50000

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x125021_OnEnumerate( sceneId, selfId, targetId )	
	AddNumText( sceneId, x125021_g_ScriptId, "Hoán ð±i Minh Chü Ð°ng Yêu Ðái", 12, 1 )
	AddNumText( sceneId, x125021_g_ScriptId, "Hoán ð±i Minh Chü Ngân Yêu Ðái", 12, 2 )
	AddNumText( sceneId, x125021_g_ScriptId, "Hoán ð±i Minh Chü Kim Yêu Ðái", 12, 3 )

	AddNumText( sceneId, x125021_g_ScriptId, "Thång c¤p Minh Chü Ð°ng Yêu Ðái", 6, 7 )
	AddNumText( sceneId, x125021_g_ScriptId, "Thång c¤p Minh Chü Ngân Yêu Ðái", 6, 4 )
	AddNumText( sceneId, x125021_g_ScriptId, "Thång c¤p Minh Chü Kim Yêu Ðái", 6, 5 )
	AddNumText( sceneId, x125021_g_ScriptId, "Thång c¤p Minh Chü Th¤t Bäo Yêu Ðái", 6, 6 )
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x125021_OnDefaultEvent( sceneId, selfId, targetId )
	local Num = GetNumText()
	if Num == 1  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BHoán ð±i Minh Chü Ð°ng Yêu Ðái");
      AddText(sceneId," 1 cái Minh Chü Ð°ng Yêu Ðái hoán ð±i 1 cái minh chü chi ¤n");
      AddNumText( sceneId, x125021_g_ScriptId, "Ð°ng ý", 8, 10 )
      AddNumText( sceneId, x125021_g_ScriptId, "Bö qua", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)
	
	elseif Num == 2  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BHoán ð±i Minh Chü Ngân Yêu Ðái");
      AddText(sceneId,"  1 cái Minh Chü Ngân Yêu Ðái hoán ð±i 10 minh chü chi ¤n");
      AddNumText( sceneId, x125021_g_ScriptId, "Ð°ng ý", 8, 11 )
      AddNumText( sceneId, x125021_g_ScriptId, "Bö qua", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)
		
	elseif Num == 3  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BHoán ð±i Minh Chü Kim Yêu Ðái");
      AddText(sceneId,"  1 Minh Chü Kim Yêu Ðái hoán ð±i 100 minh chü chi ¤n");
      AddNumText( sceneId, x125021_g_ScriptId, "Ð°ng ý", 8, 12 )
      AddNumText( sceneId, x125021_g_ScriptId, "Bö qua", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)

	elseif Num == 4  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BThång c¤p v¸ Minh Chü Ngân Yêu Ðái");
      AddText(sceneId,"  Thång c¤p v¸ Minh Chü Ngân Yêu Ðái tiêu hao #r#G    1 Minh Chü Ð°ng Yêu Ðái#r    9 Minh Chü Chi ¤n#r    Các hÕ có mu¯n?");
      AddNumText( sceneId, x125021_g_ScriptId, "Ð°ng ý", 8, 13 )
      AddNumText( sceneId, x125021_g_ScriptId, "Bö qua", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)

	elseif Num == 5  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BThång c¤p v¸ Minh Chü Kim Yêu Ðái");
      AddText(sceneId,"  Thång c¤p v¸ Minh Chü Kim Yêu Ðái tiêu hao#r#G    1 Minh Chü Ngân Yêu Ðái #r    90 Minh chü chi ¤n #r    #{_EXCHG"..tostring(500000).."}#W#r  Các hÕ có mu¯n ?");
      AddNumText( sceneId, x125021_g_ScriptId, "Ð°ng ý", 8, 14 )
      AddNumText( sceneId, x125021_g_ScriptId, "Bö qua", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)

	elseif Num == 6  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BThång c¤p Minh Chü Th¤t Bäo Yêu Ðái");
      AddText(sceneId,"  Thång c¤p Minh Chü Th¤t Bäo Yêu Ðái tiêu hao #r#G    1 Minh Chü Kim Yêu Ðái#r    400 Minh chü chi ¤n#r    #{_EXCHG"..tostring(1000000).."}#W#r  Các hÕ có mu¯n ?");
      AddNumText( sceneId, x125021_g_ScriptId, "Ð°ng ý", 8, 15 )
      AddNumText( sceneId, x125021_g_ScriptId, "Bö qua", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)

	elseif Num == 7  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BThång c¤p Minh Chü Ð°ng Yêu Ðái");
      AddText(sceneId,"  Thång c¤p Minh Chü Ð°ng Yêu Ðái tiêu hao#r#G    40 cái Minh Chü Ð°ng Yêu Ðái toái phiªn #W#r  Các hÕ có mu¯n ?");
      AddNumText( sceneId, x125021_g_ScriptId, "Ð°ng ý", 8, 16 )
      AddNumText( sceneId, x125021_g_ScriptId, "Bö qua", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)
	end
		
	if Num == 10  then
    x125021_ChangeItem( sceneId, selfId, 1 )
	elseif Num == 11  then
    x125021_ChangeItem( sceneId, selfId, 2 )
	elseif Num == 12  then
		x125021_ChangeItem( sceneId, selfId, 3 )
	end
	
	if Num == 13  then
		x125021_UpdateItem( sceneId, selfId, 1 )
	elseif Num == 14  then
		x125021_UpdateItem( sceneId, selfId, 2 )
	elseif Num == 15  then
		x125021_UpdateItem( sceneId, selfId, 3 )
	end	
	
	if Num == 16  then
		x125021_StoneToItem(sceneId, selfId)
	end
	
	if Num == 20  then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
	end

end

--**********************************
-- ËéÆ¬»»Ñü´ø
--**********************************
function x125021_StoneToItem(sceneId, selfId)
	
	BeginAddItem(sceneId)
		AddItem( sceneId, x125021_g_Item_1, 1 )
	local ret = EndAddItem(sceneId,selfId)
	
	-- Ñü´øËéÆ¬µÄID
	local nStoneId = 40004434
	if ret > 0  then
		if LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId)>=40 then
			LuaFnDelAvailableItem(sceneId,selfId,nStoneId,40)
			AddItemListToHuman(sceneId,selfId)
			x125021_DispatchTips(sceneId,selfId,1)
			-- Ìí¼ÓÒ»¸ö¶Ò»»ÈÕÖ¾
			LuaFnAuditPlayerBehavior(sceneId, selfId, "Toái phiªn ð±i Yêu Ðái");
		else
			x125021_DispatchTips(sceneId,selfId,0)
		end
		
	else
		x125021_DispatchTips(sceneId,selfId,-2)
	end
	
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
end

--**********************************
--x125021_UpdateItem
--**********************************
function x125021_UpdateItem( sceneId, selfId, nIndex )
	if nIndex == 1  then
	
		BeginAddItem(sceneId)
			AddItem( sceneId, x125021_g_Item_2, 1 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0  then
			if LuaFnGetAvailableItemCount(sceneId,selfId,x125021_g_StoneId)>=9 and
				LuaFnGetAvailableItemCount(sceneId,selfId,x125021_g_Item_1)>=1  then
				
				LuaFnDelAvailableItem(sceneId,selfId,x125021_g_StoneId,9)
				LuaFnDelAvailableItem(sceneId,selfId,x125021_g_Item_1,1)
				
				AddItemListToHuman(sceneId,selfId)
				-- Ìí¼Ó×°±¸Éý¼¶ÈÕÖ¾
				LuaFnAuditPlayerBehavior(sceneId, selfId, "Ð°ng Yêu Ðái ð±i Ngân Yêu Ðái");

		    	x125021_DispatchTips(sceneId,selfId,1)
				return
			end
		end
		
	elseif nIndex == 2  then
		
		if GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId) < 500000   then  
			x125021_DispatchTips(sceneId,selfId,-1)
			return
		end
	
		BeginAddItem(sceneId)
			AddItem( sceneId, x125021_g_Item_3, 1 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0  then
			if LuaFnGetAvailableItemCount(sceneId,selfId,x125021_g_StoneId)>=90 and
				LuaFnGetAvailableItemCount(sceneId,selfId,x125021_g_Item_2)>=1  then
				
				LuaFnDelAvailableItem(sceneId,selfId,x125021_g_StoneId,90)
				LuaFnDelAvailableItem(sceneId,selfId,x125021_g_Item_2,1)
				
				-- ¿ÛG
				--CostMoney(sceneId,selfId,500000)
				LuaFnCostMoneyWithPriority( sceneId, selfId, 500000 )  
				
				AddItemListToHuman(sceneId,selfId)
				-- Ìí¼Ó×°±¸Éý¼¶ÈÕÖ¾
				LuaFnAuditPlayerBehavior(sceneId, selfId, "Ngân Yêu Ðái ð±i Kim Yêu Ðái");

		    	x125021_DispatchTips(sceneId,selfId,1)
				return
			end
		end
		
	elseif nIndex == 3  then
		
		if GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId)< 1000000   then
			x125021_DispatchTips(sceneId,selfId,-1)
			return
		end
	
		BeginAddItem(sceneId)
			AddItem( sceneId, x125021_g_Item_4, 1 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0  then
			if LuaFnGetAvailableItemCount(sceneId,selfId,x125021_g_StoneId)>=400 and
					LuaFnGetAvailableItemCount(sceneId,selfId,x125021_g_Item_3)>=1  then
				
				LuaFnDelAvailableItem(sceneId,selfId,x125021_g_StoneId,400)
				LuaFnDelAvailableItem(sceneId,selfId,x125021_g_Item_3,1)
				
				-- ¿ÛG
				--CostMoney(sceneId,selfId,1000000)
				LuaFnCostMoneyWithPriority( sceneId, selfId, 1000000 )  
				AddItemListToHuman(sceneId,selfId)
				
				
				-- Ìí¼Ó×°±¸Éý¼¶ÈÕÖ¾
				LuaFnAuditPlayerBehavior(sceneId, selfId, "Kim Yêu Ðái ð±i Th¤t Bäo Yêu Ðái");
	    	x125021_DispatchTips(sceneId,selfId,1)
		    	
		    -- ·¢ËÍÊÀ½ç¹«¸æ
				local szTransferEquip = GetItemTransfer(sceneId,selfId,0)
		    
				local str = ""
				str = format("#PVu CØu Liên : Thiên hÕ anh hùng ðúng là anh hùng thiên hÕ ! #{_INFOUSR%s} giang h° tß½ng truy«n tÕi Phong Thi«n Ðài huyªt chiªn k¸ch li®t, cu¯i cùng cûng giành ðßþc chÑc v¸ Võ Lâm Minh Chü ! và #{_INFOMSG%s}", GetName(sceneId,selfId), szTransferEquip)
				BroadMsgByChatPipe(sceneId, selfId, str, 4)
		    
				return
			end
		end
		
	end
	
  x125021_DispatchTips(sceneId,selfId,0)
  
end

--**********************************
--x125021_ChangeItem
--**********************************
function x125021_ChangeItem( sceneId, selfId, nIndex )
	if nIndex == 1  then
		BeginAddItem(sceneId)
			AddItem( sceneId, x125021_g_StoneId, 1 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0  then
			if LuaFnDelAvailableItem(sceneId,selfId,x125021_g_Item_1,1) == 1  then
				AddItemListToHuman(sceneId,selfId)
				--Ìí¼Ó¶Ò»»ÈÕÖ¾
				LuaFnAuditPlayerBehavior(sceneId, selfId, "Ð°ng Yêu Ðái ð±i 1 Minh Chü ¤n");
			    x125021_DispatchTips(sceneId,selfId,1)
			    return
			end
		end
		
	elseif nIndex == 2  then
		BeginAddItem(sceneId)
			AddItem( sceneId, x125021_g_StoneId, 10 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0  then
			if LuaFnDelAvailableItem(sceneId,selfId,x125021_g_Item_2,1) == 1  then
				AddItemListToHuman(sceneId,selfId)
				--Ìí¼Ó¶Ò»»ÈÕÖ¾
				LuaFnAuditPlayerBehavior(sceneId, selfId, "Ngân yêu ðái ð±i 10 minh chü ¤n");
			    x125021_DispatchTips(sceneId,selfId,1)
			    return
			end
		end
		
	elseif nIndex == 3  then
		BeginAddItem(sceneId)
			AddItem( sceneId, x125021_g_StoneId, 100 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0  then
			if LuaFnDelAvailableItem(sceneId,selfId,x125021_g_Item_3,1) == 1  then
				AddItemListToHuman(sceneId,selfId)
				--Ìí¼Ó¶Ò»»ÈÕÖ¾
				LuaFnAuditPlayerBehavior(sceneId, selfId, "Kim yêu ðái ð±i 100 minh chü ¤n");
			  	x125021_DispatchTips(sceneId,selfId,1)
			    return
			end
		end
		
	end
	
 	x125021_DispatchTips(sceneId,selfId,0)  
  return
  
end

function x125021_DispatchTips(sceneId,selfId,bOk)
	if bOk == 0  then
	  BeginEvent(sceneId)
	    AddText(sceneId,"Hoán ð±i th¤t bÕi, vui lòng ki¬m tra lÕi v§t ph¦m");
	  EndEvent(sceneId)
	  DispatchMissionTips(sceneId,selfId)
	elseif bOk == -1  then
	  BeginEvent(sceneId)
	    AddText(sceneId,"Không ðü ngân lßþng");    
	  EndEvent(sceneId)
	  DispatchMissionTips(sceneId,selfId)
	elseif bOk == -2  then
	  BeginEvent(sceneId)
	    AddText(sceneId,"Thiªu không gian túi ðeo");
	  EndEvent(sceneId)
	  DispatchMissionTips(sceneId,selfId)
	else
	  BeginEvent(sceneId)
	    AddText(sceneId,"Hoán ð±i thành công");
	  EndEvent(sceneId)
	  DispatchMissionTips(sceneId,selfId)
	end
	
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
end
