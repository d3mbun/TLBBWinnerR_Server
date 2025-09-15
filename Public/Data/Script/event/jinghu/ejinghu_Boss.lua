-- 005116
-- Kính K°BOSS

x005116_g_PreTimeHour_1 = 0
x005116_g_PreTimeHour_2 = 0
x005116_g_PreTimeHour_3 = 0

x005116_g_Boss ={
								{x=141,z=96,	b1=884,b2=888,b3=886,n1="B¡c Häi H²n Giang Ti¬u Long",n2="B¡c Häi xu¤t ðµng Ti¬u Giao",n3="B¡c Häi phiên giang Ti¬u Th§n"},
								{x=250,z=98,	b1=884,b2=888,b3=886,n1="Ðông Häi H²n Giang Ti¬u Long",n2="Ðông Häi xu¤t ðµng Ti¬u Giao",n3="Ðông Häi phiên giang Ti¬u Th§n"},
								
								{x=206,z=253,	b1=884,b2=888,b3=886,n1="Nam Häi H²n Giang Ti¬u Long",n2="Nam Häi xu¤t ðµng Ti¬u Giao",n3="Nam Häi phiên giang Ti¬u Th§n"},
								{x=101,z=256,	b1=884,b2=888,b3=886,n1="Tây Häi H²n Giang Ti¬u Long",n2="Tây Häi xu¤t ðµng Ti¬u Giao",n3="Tây Häi phiên giang Ti¬u Th§n"},
								
								{x=139,z=133,	b1=885,b2=887,b3=889,n1="H²n Giang Long",n2="Xu¤t ðµng giao",n3="Phiên giang th§n"}}

-- Ê¹ÓÃmµt Ð©±¾³¡¾°Î¨mµt toÕ ðµ È«¾Ö±äÁ¿À´±£´æÊý¾Ý

-- ÕâÀïtoÕ ðµ ¼ÆÊ±Æ÷TÕi µÚmµt Íæ¼Ò½øÈë±¾³¡¾°ºó×Ô¼ºÆô¶¯,ÓÀ²»¹Ø±Õ.
function x005116_OnSceneTimer(sceneId)

	--  ðÕt ðßþcµ±Ç°Ê±¼ä
	--begin modified by zhangguoxin 090207
	--local nHour = GetHourTime()
	local nHour = GetQuarterTime()
	--local temp = floor(nHour/100)*100
	
	-- Ö»¶ÃTÕi  10:00 4:00 Ö±½ÓtoÕ ðµ Õâ¶ÎÊ±¼äÄÚ²Å¶Ã
	--if nHour-temp>16 and nHour-temp<40    then
	--	return
	--end
	
	local nQuarter = mod(nHour,100);
	-- Ö»¶ÃTÕi  10:00 4:00 Ö±½ÓtoÕ ðµ Õâ¶ÎÊ±¼äÄÚ²Å¶Ã
	if nQuarter > 16 and nQuarter < 40    then
		return
	end
	--end modified by zhangguoxin 090207
	
	--¹ÖÎï·Ö²¼: Ë¢ÐÂÊ±¹²Ë¢³ö5×éBOSS,
	--	µÚ45 phút,Á½×éBOSS,55c¤p´ø53Ð¡µÜ³öÏÖ.()
	--	50 phút,Á½×éBOSS,55c¤p´ø53Ð¡µÜ³öÏÖ.	()
	--	55 phút,mµt ×éBOSS,60c¤p´ø58Ð¡µÜ³öÏÖ.	()
	--	×îºómµt ×éBOSS³öÏÖÊ±H® th¯ng¹«¸æ.	
	
	-- µÚ45 phút,Ë¢µÚmµt ¶ÓBOSS
	if GetMinute() >= 45 and GetMinute() < 50  then 
		-- ±¾Ð¡Ê±toÕ ðµ Õâ×é¹ÖÒÑ¾­Ë¢¹ý
		if nHour == x005116_g_PreTimeHour_1  then
			return
		end
		
		-- ¼ÇÂ¼Cái này Ê±¼ä ði¬m
		x005116_g_PreTimeHour_1 = nHour
		
		-- ¼ì²âÐúng²»ÐúngThöa mãn´´½¨¹ÖtoÕ ðµ Ìõ¼þ
		-- ¼ì²â³¡¾°ÖÐ x005116_g_Boss[1].b1 Ðúng²»Ðúng»¹´æTÕi ,
		-- ´æTÕi ¾Í²»×ö²Ù×÷,·ñÔòÇå³ýÐ¡¹ÖÈ»ºóË¢³öÐÂtoÕ ðµ À´
		if x005116_IsHaveMonster( sceneId, "B¡c Häi H²n Giang Ti¬u Long" ) == 0  then
			x005116_UpDateMonster( sceneId, 1, 10 )
		end
		if x005116_IsHaveMonster( sceneId, "Ðông Häi H²n Giang Ti¬u Long" ) == 0  then
			x005116_UpDateMonster( sceneId, 2, 11 )
		end

		
	end
	
	-- 55 phút,Ë¢µÚ¶þ¶ÓBOSS
	if GetMinute() >= 50 and GetMinute() < 55  then
		-- ±¾Ð¡Ê±toÕ ðµ Õâ×é¹ÖÒÑ¾­Ë¢¹ý
		if nHour == x005116_g_PreTimeHour_2  then
			return
		end
		
		-- ¼ÇÂ¼Cái này Ê±¼ä ði¬m
		x005116_g_PreTimeHour_2 = nHour
		
		-- ¼ì²âÐúng²»ÐúngThöa mãn´´½¨¹ÖtoÕ ðµ Ìõ¼þ
		if x005116_IsHaveMonster( sceneId, "Nam Häi H²n Giang Ti¬u Long" ) == 0  then
			x005116_UpDateMonster( sceneId, 3, 12 )
		end
		if x005116_IsHaveMonster( sceneId, "Tây Häi H²n Giang Ti¬u Long" ) == 0  then
			x005116_UpDateMonster( sceneId, 4, 13 )
		end
		
	end
	
	-- 60 phút,Ë¢µÚÈý¶ÓBOSS
	if GetMinute() >= 55 	then
		-- ±¾Ð¡Ê±toÕ ðµ Õâ×é¹ÖÒÑ¾­Ë¢¹ý
		if nHour == x005116_g_PreTimeHour_3  then
			return
		end
		
		-- ¼ÇÂ¼Cái này Ê±¼ä ði¬m
		x005116_g_PreTimeHour_3 = nHour
		
		-- ¼ì²âÐúng²»ÐúngThöa mãn´´½¨¹ÖtoÕ ðµ Ìõ¼þ
		if x005116_IsHaveMonster( sceneId, "H²n Giang Long" ) == 0  then
			x005116_UpDateMonster( sceneId, 5, 14 )
		end
	end
	
		
end

function x005116_IsHaveMonster( sceneId, MonsterName )
	local FlowerName = ""
	if MonsterName == "B¡c Häi H²n Giang Ti¬u Long" then
		FlowerName = "Nimda1";
	elseif MonsterName == "Ðông Häi H²n Giang Ti¬u Long" then
		FlowerName = "Nimda2";
	elseif MonsterName == "Nam Häi H²n Giang Ti¬u Long" then
		FlowerName = "Nimda3";
	elseif MonsterName == "Tây Häi H²n Giang Ti¬u Long" then
		FlowerName = "Nimda4";
	elseif MonsterName == "H²n Giang Long" then
		FlowerName = "Nimda5";
	end

	local nMonsterNum = GetMonsterCount(sceneId)
	local bHaveMonster = 0
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)
		local nMonsterName = GetName(sceneId, nMonsterId)
		if nMonsterName == MonsterName or nMonsterName == FlowerName then
			bHaveMonster = 1
		end
	end
	return bHaveMonster
end

function x005116_UpDateMonster( sceneId, nIndex, nGroupId )
	
	if nIndex == 1 then
		local Tree_Index = LuaFnCreateMonster(sceneId,93,280,165,3,0,-1)
		SetCharacterName(sceneId, Tree_Index, "Nimda1")
		SetCharacterDieTime(sceneId,Tree_Index,900000)
	elseif nIndex == 2 then
		local Tree_Index = LuaFnCreateMonster(sceneId,93,280,165,3,0,-1)
		SetCharacterName(sceneId, Tree_Index, "Nimda2")
		SetCharacterDieTime(sceneId,Tree_Index,900000)
	elseif nIndex == 3 then
		local Tree_Index = LuaFnCreateMonster(sceneId,93,205,106,3,0,-1)
		SetCharacterName(sceneId, Tree_Index, "Nimda3")
		SetCharacterDieTime(sceneId,Tree_Index,900000)
	elseif nIndex == 4 then
		local Tree_Index = LuaFnCreateMonster(sceneId,93,155,250,3,0,-1)
		SetCharacterName(sceneId, Tree_Index, "Nimda4")
		SetCharacterDieTime(sceneId,Tree_Index,900000)
	elseif nIndex == 5 then
		local Tree_Index = LuaFnCreateMonster(sceneId,93,140,207,3,0,-1)
		SetCharacterName(sceneId, Tree_Index, "Nimda5")
		SetCharacterDieTime(sceneId,Tree_Index,900000)
	end

	-- ÏÈÇå³ýCái này ×éÀïÍ·toÕ ðµ ËùÓÐÐ¡¹Ö
	local nMonsterNum = GetMonsterCount(sceneId)
	local bHaveMonster = 0
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, nMonsterId) == x005116_g_Boss[nIndex].n1  then
			LuaFnDeleteMonster(sceneId, nMonsterId)
		end
		
		if GetName(sceneId, nMonsterId) == x005116_g_Boss[nIndex].n2  then
			LuaFnDeleteMonster(sceneId, nMonsterId)
		end
		
		if GetName(sceneId, nMonsterId) == x005116_g_Boss[nIndex].n3  then
			LuaFnDeleteMonster(sceneId, nMonsterId)
		end
	end
	
	-- °Ñ¹ÖÈ«´´½¨³öÀ´
	local nMonId
	nMonId = LuaFnCreateMonster(sceneId, x005116_g_Boss[nIndex].b1, x005116_g_Boss[nIndex].x, x005116_g_Boss[nIndex].z, 19, 197, 005117)
	SetCharacterName(sceneId, nMonId, x005116_g_Boss[nIndex].n1)
	SetMonsterGroupID(sceneId, nMonId, nGroupId)
	SetCharacterTitle(sceneId, nMonId, "")
	
	nMonId = LuaFnCreateMonster(sceneId, x005116_g_Boss[nIndex].b2, x005116_g_Boss[nIndex].x+2, x005116_g_Boss[nIndex].z, 19, 198, 005118)
	SetCharacterName(sceneId, nMonId, x005116_g_Boss[nIndex].n2)
	SetMonsterGroupID(sceneId, nMonId, nGroupId)
	SetCharacterTitle(sceneId, nMonId, "")
	
	nMonId = LuaFnCreateMonster(sceneId, x005116_g_Boss[nIndex].b3, x005116_g_Boss[nIndex].x-2, x005116_g_Boss[nIndex].z, 19, 199, 005119)
	SetCharacterName(sceneId, nMonId, x005116_g_Boss[nIndex].n3)
	SetMonsterGroupID(sceneId, nMonId, nGroupId)
	SetCharacterTitle(sceneId, nMonId, "")
	
	if nIndex == 5   then
		--µ±ÄêºáÐÐä±Ñô½­toÕ ðµ Ë®Ôô¡°»ì½­Áú¡±ÒÑ¾­´øÁì²¿ÏÂ³öÏÖTÕi Kính K°£¡ÇëÌìÏÂÓ¢ÐÛËÙÈ¥½ËÃð£¡
		-- Ë¢×ÜBOSStoÕ ðµ Ê±ºò,¸ømµt cáiÊÀ½ç¹«¸æ
		
		local str = "H²n Giang Long thüy t£c T¥m Dß½ng Giang ðang tung hoành th¯ng lînh thuµc hÕ xu¤t hi®n · Kính H°! Xin các v¸ anh hùng hãy nhanh chóng ði tiêu di®t!"
		BroadMsgByChatPipe(sceneId, -1, str, 4)
	end
	
	
end

