
function x045040_OnSceneTimer(sceneId)
	local BossDetail = {}
		BossDetail[0] = {"V� Tr�n",		44700,	120,	45,		19,		300,	045041}
		BossDetail[1] = {"B� �ao",		44701,	230,	110,	19,		301,	045041}
		BossDetail[2] = {"Kh�ng Long",	44702,	30,		95,		19,		302,	045041}
		BossDetail[3] = {"V�n Thi�n",	44703,	175,	75,		19,		303,	045041}
		BossDetail[4] = {"V� Hinh",		44704,	170,	145,	19,		304,	045041}
		BossDetail[5] = {"Huy�t M�ng",	44705,	95,		160,	19,		305,	045041}
		BossDetail[6] = {"T�y H�o",		44706,	35,		170,	19,		306,	045041}
		BossDetail[7] = {"�i�p �nh",	44707,	50,		230,	19,		307,	045041}
		BossDetail[8] = {"Nh�n V�n",	44708,	180,	215,	19,		308,	045041}

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
		BossDetail[0] = {"V� Tr�n",		44700,	120,	45,		19,		300,	045041}
		BossDetail[1] = {"B� �ao",		44701,	230,	110,	19,		301,	045041}
		BossDetail[2] = {"Kh�ng Long",	44702,	30,		95,		19,		302,	045041}
		BossDetail[3] = {"V�n Thi�n",	44703,	175,	75,		19,		303,	045041}
		BossDetail[4] = {"V� Hinh",		44704,	170,	145,	19,		304,	045041}
		BossDetail[5] = {"Huy�t M�ng",	44705,	95,		160,	19,		305,	045041}
		BossDetail[6] = {"T�y H�o",		44706,	35,		170,	19,		306,	045041}
		BossDetail[7] = {"�i�p �nh",	44707,	50,		230,	19,		307,	045041}
		BossDetail[8] = {"Nh�n V�n",	44708,	180,	215,	19,		308,	045041}

	local nMonId = LuaFnCreateMonster(sceneId, BossDetail[i][2], BossDetail[i][3], BossDetail[i][4], BossDetail[i][5], BossDetail[i][6], BossDetail[i][7])
	SetCharacterName(sceneId, nMonId, BossDetail[i][1])
	SetCharacterTitle(sceneId, nMonId, "Thanh Hoa Хu L�nh")
	-- LuaFnSendSpecificImpactToUnit(sceneId,nMonId,nMonId,nMonId,9601,0) --Impact MienCC--
	-- LuaFnSendSpecificImpactToUnit(sceneId,nMonId,nMonId,nMonId,9511,0) --Trung Lau Trieu--
	-- LuaFnSendSpecificImpactToUnit(sceneId,nMonId,nMonId,nMonId,9512,0) --Trung Lau Quy--
	
	local BossCheck = 0;
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, nMonsterId) == "V� Tr�n" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "B� �ao" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "Kh�ng Long" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "V�n Thi�n" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "V� Hinh" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "Huy�t M�ng" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "T�y H�o" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "�i�p �nh" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "Nh�n V�n" then
			BossCheck = BossCheck + 1
		end
	end
	if BossCheck == 9 then
		BroadMsgByChatPipe(sceneId,-1, "#GThanh Hoa S�n #Yxu�t hi�n #GC�u ��i Хu L�nh #Y�ang ti�n h�nh ��nh chi�m, c�c anh h�ng h�o h�n h�y mau mau t߽ng tr�, gi�i c�u mu�n th� n�i ��y...", 4)
	end
end

function x045040_DelMonsterBoss(sceneId)
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, nMonsterId) == "M�c V߽ng" then
			LuaFnDeleteMonster(sceneId,nMonsterId)
		end
	end
end