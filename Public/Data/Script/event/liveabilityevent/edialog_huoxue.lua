--Éú»î kÛ nång
--HoÕt huyªt

--2006-9-18 17:05 (Cái này ÎÄ¼ş´æTÕi toÕ ğµ ÒâÒåĞúngÎªÁË¼æÈİ¡¢¼°À©Õ¹,ËùÓĞÕæÕıtoÕ ğµ ÅĞ¶Ï,¶¼TÕi ecity_lifeskillstudy.luaÖĞÊµÏÖ)
x713622_g_ScriptId 		= 713622
x713622_g_AbilityName	= "HoÕt huyªt"
x713622_g_AbilityID		= ABILITY_HUOXUE

-- ´¦ÀíÍæ¼ÒËù×ötoÕ ğµ Ñ¡Ôñ
function x713622_OnDefaultEvent( sceneId, selfId, targetId, nNum, npcScriptId, bid )
	if bid then
		if 0 == nNum then	--Ñ§Ï°
			if CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "CheckCityStatus",sceneId, selfId,targetId) < 0 then
				return
			end
			BeginEvent(sceneId)
			local lv,money,con
			lv,money,con = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, x713622_g_AbilityID, bid, 4)
			local studyMsg = format("Nªu các hÕ ğÕt t¾i c¤p %d, phäi tiêu t¯n #{_MONEY%d} và %d ği¬m bang hµi m¾i có th¬ h÷c kÛ nång huyªt h÷c. Các hÕ có quyªt ğ¸nh h÷c không?", lv, money, con)
			AddText(sceneId,studyMsg)
			--Xác nh§nÑ§Ï°°´Å¥
					AddNumText(sceneId,x713622_g_ScriptId,"TÕi hÕ xác ğ¸nh mu¯n h÷c", 6, 3)
			--HuÖ böÑ§Ï°°´Å¥
					AddNumText(sceneId,x713622_g_ScriptId,"TÕi hÕ chï mu¯n coi", 8, 4)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		elseif 1 == nNum then	--Thång c¤p 
			if CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "CheckCityStatus",sceneId, selfId,targetId) < 0 then
				return
			end
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713622_g_AbilityID, bid, 2)
			if ret > 0 then
				CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, x713622_g_AbilityID, bid, 2)
			end
		elseif 2 == nNum then	--ÁË½â
			local dialog = "#{event_liveabilityevent_0031}"
			BeginEvent(sceneId)
				AddText(sceneId, dialog)
			EndEvent(sceneId)
			DispatchEventList(sceneId, selfId, targetId)
		elseif 3 == nNum then	--Xác nh§nÑ§Ï°
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713622_g_AbilityID, bid, 1)
			if ret > 0 then
				CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, x713622_g_AbilityID, bid, 1)
			end
		elseif 4 <= nNum then	--Ö»À´¿´¿´
			CallScriptFunction( npcScriptId, "OnDefaultEvent",sceneId, selfId, targetId )
		end
	else
		-- Ä¿Ç°HoÕt huyªt kÛ nång±ØĞëTÕi Thành ph¯ Àï²ÅÄÜÑ§Ï°¡¢Thång c¤p ¡¢ÁË½â
	end
end

-- ÁĞ¾ÙÑ¡Ïî
-- nNum == 1 Ñ§Ï°
-- nNum == 2 Thång c¤p 
-- nNum == 3 ÁË½â
function x713622_OnEnumerate( sceneId, selfId, targetId, bid, nNum)
	if bid then
		if 1 == nNum then
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713622_g_AbilityID, bid, 5)
			if ret > 0 then AddNumText(sceneId,x713622_g_ScriptId,"H÷c "..x713622_g_AbilityName.." kÛ nång", 12, 0) end
			return
		elseif 2 == nNum then
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713622_g_AbilityID, bid, 6)
			if ret > 0 then AddNumText(sceneId,x713622_g_ScriptId,"Thång c¤p "..x713622_g_AbilityName.." kÛ nång", 12, 1) end
			return
		elseif 3 == nNum then
			AddNumText(sceneId,x713622_g_ScriptId,"TÕi hÕ mu¯n tìm hi¬u huyªt h÷c",11,2)
			AddNumText(sceneId,x713622_g_ScriptId,"Quay lÕi",8,5)
		end
	else
		-- Ä¿Ç°HoÕt huyªt kÛ nång±ØĞëTÕi Thành ph¯ Àï²ÅÄÜÑ§Ï°¡¢Thång c¤p ¡¢ÁË½â
	end
end
