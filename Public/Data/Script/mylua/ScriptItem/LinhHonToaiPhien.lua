--********************--
x045505_g_scriptId = 045505
x045505_g_wuhunIdList = {
	10308001, 10308002, 10308003, 10308004
}
--********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x045505_OnDefaultEvent(sceneId,selfId,bagIndex)

	--********************--
	--********************--

end
--**********************************--
--*      Is Skill Like Script      *--
--**********************************--
function x045505_IsSkillLikeScript(sceneId,selfId)

	--********************--
	return 1
	--********************--

end
--**********************************--
--*         Cancel Impacts         *--
--**********************************--
function x045505_CancelImpacts(sceneId,selfId)

	--********************--
	return 0
	--********************--

end
--**********************************--
--*       On Condition Check       *--
--**********************************--
function x045505_OnConditionCheck(sceneId,selfId)

	--********************--
	if LuaFnVerifyUsedItem(sceneId,selfId) ~= 1 then
		return 0
	end
	--********************--
	local ItemId = LuaFnGetItemTableIndexByIndex(sceneId,selfId,0)
	local isWuhun = 0
	for i, wuhunId in x045505_g_wuhunIdList do
		if ItemId == wuhunId then
			isWuhun = 1
			break
		end
	end
	if isWuhun == 1 then
		local Author, szAuthor = LuaFnGetItemCreator(sceneId,selfId,0)
		if szAuthor == nil then
			return 1
		end

		local VoHon_Level = CallScriptFunction(045001,"GetWuhunAuthor",sceneId,selfId,0,1,3)
		if VoHon_Level >= GetLevel(sceneId,selfId) then
			BeginEvent(sceneId)
				AddText(sceneId,"Nâng cao ðÆng c¤p ð¬ tiªp tøc nuôi dßÞng Võ H°n.")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
		end
	else
		BeginEvent(sceneId)
			AddText(sceneId,"Hãy ð£t v² h°n vào ð¥u tay näi ð¬ tång trß·ng kinh nghi®m cho nó.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end

	--********************--
	return 1
	--********************--

end
--**********************************--
--*           On Deplete           *--
--**********************************--
function x045505_OnDeplete(sceneId,selfId)

	--********************--
	if LuaFnDepletingUsedItem(sceneId,selfId) > 0 then
		return 1
	end
	--********************--
	return 0
	--********************--

end
--**********************************--
--*        On Activate Once        *--
--**********************************--
function x045505_OnActivateOnce(sceneId,selfId)
	--********************--
	local WHExpLevel = {}
		WHExpLevel[1] = {1500}
		WHExpLevel[2] = {1510}
		WHExpLevel[3] = {1540}
		WHExpLevel[4] = {1580}
		WHExpLevel[5] = {1640}
		WHExpLevel[6] = {1710}
		WHExpLevel[7] = {1800}
		WHExpLevel[8] = {1890}
		WHExpLevel[9] = {2000}
		WHExpLevel[10] = {2120}
		WHExpLevel[11] = {2250}
		WHExpLevel[12] = {2390}
		WHExpLevel[13] = {2540}
		WHExpLevel[14] = {2700}
		WHExpLevel[15] = {2870}
		WHExpLevel[16] = {3060}
		WHExpLevel[17] = {3250}
		WHExpLevel[18] = {3450}
		WHExpLevel[19] = {3660}
		WHExpLevel[20] = {3880}
		WHExpLevel[21] = {4120}
		WHExpLevel[22] = {4360}
		WHExpLevel[23] = {4610}
		WHExpLevel[24] = {4870}
		WHExpLevel[25] = {5130}
		WHExpLevel[26] = {5410}
		WHExpLevel[27] = {5700}
		WHExpLevel[28] = {5990}
		WHExpLevel[29] = {6300}
		WHExpLevel[30] = {6610}
		WHExpLevel[31] = {6930}
		WHExpLevel[32] = {7260}
		WHExpLevel[33] = {7600}
		WHExpLevel[34] = {7950}
		WHExpLevel[35] = {8310}
		WHExpLevel[36] = {8670}
		WHExpLevel[37] = {9040}
		WHExpLevel[38] = {9430}
		WHExpLevel[39] = {9820}
		WHExpLevel[40] = {10210}
		WHExpLevel[41] = {10620}
		WHExpLevel[42] = {11040}
		WHExpLevel[43] = {11460}
		WHExpLevel[44] = {11890}
		WHExpLevel[45] = {12330}
		WHExpLevel[46] = {12780}
		WHExpLevel[47] = {13230}
		WHExpLevel[48] = {13690}
		WHExpLevel[49] = {14170}
		WHExpLevel[50] = {14640}
		WHExpLevel[51] = {15130}
		WHExpLevel[52] = {15630}
		WHExpLevel[53] = {16130}
		WHExpLevel[54] = {16640}
		WHExpLevel[55] = {17160}
		WHExpLevel[56] = {17680}
		WHExpLevel[57] = {18220}
		WHExpLevel[58] = {18760}
		WHExpLevel[59] = {19310}
		WHExpLevel[60] = {19860}
		WHExpLevel[61] = {20430}
		WHExpLevel[62] = {21000}
		WHExpLevel[63] = {21580}
		WHExpLevel[64] = {22170}
		WHExpLevel[65] = {22760}
		WHExpLevel[66] = {23360}
		WHExpLevel[67] = {23970}
		WHExpLevel[68] = {24590}
		WHExpLevel[69] = {25210}
		WHExpLevel[70] = {25840}
		WHExpLevel[71] = {26480}
		WHExpLevel[72] = {27130}
		WHExpLevel[73] = {27780}
		WHExpLevel[74] = {28440}
		WHExpLevel[75] = {29110}
		WHExpLevel[76] = {29790}
		WHExpLevel[77] = {30470}
		WHExpLevel[78] = {31160}
		WHExpLevel[79] = {31860}
		WHExpLevel[80] = {32560}
		WHExpLevel[81] = {33270}
		WHExpLevel[82] = {33990}
		WHExpLevel[83] = {34720}
		WHExpLevel[84] = {35450}
		WHExpLevel[85] = {36190}
		WHExpLevel[86] = {36940}
		WHExpLevel[87] = {37690}
		WHExpLevel[88] = {38450}
		WHExpLevel[89] = {39220}
		WHExpLevel[90] = {40000}
		WHExpLevel[91] = {40780}
		WHExpLevel[92] = {41570}
		WHExpLevel[93] = {42360}
		WHExpLevel[94] = {43170}
		WHExpLevel[95] = {43980}
		WHExpLevel[96] = {44790}
		WHExpLevel[97] = {45620}
		WHExpLevel[98] = {46450}
		WHExpLevel[99] = {47280}
		WHExpLevel[100] = {48130}
		WHExpLevel[101] = {48980}
		WHExpLevel[102] = {49840}
		WHExpLevel[103] = {50700}
		WHExpLevel[104] = {51580}
		WHExpLevel[105] = {52450}
		WHExpLevel[106] = {53340}
		WHExpLevel[107] = {54230}
		WHExpLevel[108] = {55130}
		WHExpLevel[109] = {56040}
		WHExpLevel[110] = {56950}
		WHExpLevel[111] = {57870}
		WHExpLevel[112] = {58790}
		WHExpLevel[113] = {59730}
		WHExpLevel[114] = {60660}
		WHExpLevel[115] = {61610}
		WHExpLevel[116] = {62560}
		WHExpLevel[117] = {63520}
		WHExpLevel[118] = {64490}
		WHExpLevel[119] = {65460}
		WHExpLevel[120] = {66440}

	local VoHon_Level = CallScriptFunction(045001,"GetWuhunAuthor",sceneId,selfId,0,1,3)
	local VoHon_Exp = CallScriptFunction(045001,"GetWuhunAuthor",sceneId,selfId,0,4,8)
	
	local ItemID = LuaFnGetItemIndexOfUsedItem(sceneId, selfId)
	local New_Exp = 0
	if ItemID == 30700230 then
		New_Exp = 3000;
	end
	if ItemID == 30700231 then
		New_Exp = 4000;
	end
	if ItemID == 30700232 then
		New_Exp = 5000;
	end

	for i = 1, 4 do
		if WHExpLevel[VoHon_Level][1] > VoHon_Exp + New_Exp then
			VoHon_Exp = VoHon_Exp + New_Exp;
			New_Exp = 0;
		else
			New_Exp = VoHon_Exp + New_Exp - WHExpLevel[VoHon_Level][1];
			VoHon_Level = VoHon_Level + 1;
			VoHon_Exp = 0;
		end
	end
	
	if VoHon_Level >= 1 and VoHon_Level <= 9 then
		VoHon_Level = "00"..VoHon_Level;
	elseif VoHon_Level >= 10 and VoHon_Level <= 99 then
		VoHon_Level = "0"..VoHon_Level;
	end
	
	if VoHon_Exp >= 1 and VoHon_Exp <= 9 then
		VoHon_Exp = "0000"..VoHon_Exp;
	elseif VoHon_Exp >= 10 and VoHon_Exp <= 99 then
		VoHon_Exp = "000"..VoHon_Exp;
	elseif VoHon_Exp >= 100 and VoHon_Exp <= 999 then
		VoHon_Exp = "00"..VoHon_Exp;
	elseif VoHon_Exp >= 1000 and VoHon_Exp <= 9999 then
		VoHon_Exp = "0"..VoHon_Exp;
	end
	
	CallScriptFunction(045001,"SetWuhunAuthor",sceneId,selfId,0,1,VoHon_Level..VoHon_Exp)
	x045505_Noitice(sceneId,selfId,"Võ H°n nuôi dßÞng thành công!")
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
	--********************--
	return 1
	--********************--
end
--**********************************--
--*        On Default Event        *--
--**********************************--
function x045505_OnActivateEachTick(sceneId,selfId)

	--********************--
	return 1
	--********************--

end

function x045505_Noitice(sceneId,selfId,str)
	BeginEvent(sceneId)
		AddText(sceneId,str)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end

