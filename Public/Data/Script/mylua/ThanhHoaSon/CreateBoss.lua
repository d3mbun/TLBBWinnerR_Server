
function x045040_OnSceneTimer(sceneId)
	local BossDetail = {}
		BossDetail[0] = {"Vô Tr¥n",		44700,	120,	45,		19,		300,	045041}
		BossDetail[1] = {"Bá Ðao",		44701,	230,	110,	19,		301,	045041}
		BossDetail[2] = {"Kh¯ng Long",	44702,	30,		95,		19,		302,	045041}
		BossDetail[3] = {"V¤n Thiên",	44703,	175,	75,		19,		303,	045041}
		BossDetail[4] = {"Vû Hinh",		44704,	170,	145,	19,		304,	045041}
		BossDetail[5] = {"Huyªt Mµng",	44705,	95,		160,	19,		305,	045041}
		BossDetail[6] = {"Tùy HÕo",		44706,	35,		170,	19,		306,	045041}
		BossDetail[7] = {"Ði®p Änh",	44707,	50,		230,	19,		307,	045041}
		BossDetail[8] = {"Nhàn Vân",	44708,	180,	215,	19,		308,	045041}

	local nHour = GetHour() --Gio--
	--BroadMsgByChatPipe(sceneId,-1, "Hour: "..nHour, 4)
	
	if nHour == 3 or nHour == 9 or nHour == 15 or nHour == 21 then
		if GetMinute() == 32 then
			for i = 0, 8 do
				if x045040_IsHaveMonster( sceneId, BossDetail[i][1] ) == 0 then
					x045040_UpDateMonster( sceneId, i )
				end
			end
			x045040_DelMonsterBoss(sceneId)
		end
	end

end

function x045040_IsHaveMonster( sceneId, MonsterName )
	local nMonsterNum = GetMonsterCount(sceneId)
	local bHaveMonster = 0
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, nMonsterId) == MonsterName then
			bHaveMonster = 1
		end
	end
	return bHaveMonster
end

function x045040_UpDateMonster( sceneId, i )
	local BossDetail = {}
		BossDetail[0] = {"Vô Tr¥n",		44700,	120,	45,		19,		300,	045041}
		BossDetail[1] = {"Bá Ðao",		44701,	230,	110,	19,		301,	045041}
		BossDetail[2] = {"Kh¯ng Long",	44702,	30,		95,		19,		302,	045041}
		BossDetail[3] = {"V¤n Thiên",	44703,	175,	75,		19,		303,	045041}
		BossDetail[4] = {"Vû Hinh",		44704,	170,	145,	19,		304,	045041}
		BossDetail[5] = {"Huyªt Mµng",	44705,	95,		160,	19,		305,	045041}
		BossDetail[6] = {"Tùy HÕo",		44706,	35,		170,	19,		306,	045041}
		BossDetail[7] = {"Ði®p Änh",	44707,	50,		230,	19,		307,	045041}
		BossDetail[8] = {"Nhàn Vân",	44708,	180,	215,	19,		308,	045041}

	local nMonId = LuaFnCreateMonster(sceneId, BossDetail[i][2], BossDetail[i][3], BossDetail[i][4], BossDetail[i][5], BossDetail[i][6], BossDetail[i][7])
	SetCharacterName(sceneId, nMonId, BossDetail[i][1])
	SetCharacterTitle(sceneId, nMonId, "Thanh Hoa Ð¥u Lînh")
	-- LuaFnSendSpecificImpactToUnit(sceneId,nMonId,nMonId,nMonId,9601,0) --Impact MienCC--
	-- LuaFnSendSpecificImpactToUnit(sceneId,nMonId,nMonId,nMonId,9511,0) --Trung Lau Trieu--
	-- LuaFnSendSpecificImpactToUnit(sceneId,nMonId,nMonId,nMonId,9512,0) --Trung Lau Quy--
	
	local BossCheck = 0;
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, nMonsterId) == "Vô Tr¥n" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "Bá Ðao" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "Kh¯ng Long" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "V¤n Thiên" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "Vû Hinh" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "Huyªt Mµng" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "Tùy HÕo" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "Ði®p Änh" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "Nhàn Vân" then
			BossCheck = BossCheck + 1
		end
	end
	if BossCheck == 9 then
		BroadMsgByChatPipe(sceneId,-1, "#GThanh Hoa S½n #Yxu¤t hi®n #GCØu ÐÕi Ð¥u Lînh #Yðang tiªn hành ðánh chiªm, các anh hùng häo hán hãy mau mau tß½ng trþ, giäi cÑu muôn thú n½i ðây...", 4)
	end
end

function x045040_DelMonsterBoss(sceneId)
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, nMonsterId) == "MÕc Vß½ng" then
			LuaFnDeleteMonster(sceneId,nMonsterId)
		end
	end
end