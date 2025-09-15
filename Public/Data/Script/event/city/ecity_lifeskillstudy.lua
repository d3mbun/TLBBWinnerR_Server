x600022_g_ScriptId = CITY_BUILDING_ABILITY_SCRIPT

--*******************************************************************************
--Th�nh ph� ���� k� n�ng��鱨����Ϣ
--*******************************************************************************
x600022_g_ErrorMsg = {
	{-1, "� ��y kh�ng c� k� n�ng cu�c s�ng n�y"},
	{-2, "��ng c�p kh�ng ��"},
	{-3, "Ng�n l��ng kh�ng ��"},
	{-4, "Kinh nghi�m kh�ng ��"},
	{-5, "C�c h� c�n ph�i n�ng c�p c�ng tr�nh x�y d�ng n�y"},
	{-6, "C�c h� ch�a h�c ���c k� n�ng cu�c s�ng n�y"},
	{-7, "C�c h� �� h�c ���c k� n�ng cu�c s�ng n�y"},
	{-8, "C�c h� kh�ng th� s� d�ng ch�c n�ng c�a th�nh ph� n�y"},
	{-9, "M�y ph�c v� b�n, � ngh� l�t n�a th� l�i"},
	{-10, "Kh�ng c� ng߶i t�m th�y th�ng tin ti�u hao m�c � c�ng hi�n cho bang"},
	{-11, "M�c � c�ng hi�n cho bang kh�ng ��"},
	{-12, "е th�nh th�c c�a k� n�ng ch�a ��"},
	{-13, "C�c h� c�n ph�i n�ng c�p c�ng tr�nh x�y d�ng n�y"},
	{-14, "C�c h� �� ��t t�i ��ng c�p cao nh�t c�a k� n�ng n�y, kh�ng c�n ph�i n�ng c�p n�a"},
	{-15, "C�ng tr�nh ki�n tr�c n�y hi�n t�i �� l� ��ng c�p cao nh�t, ch� c� th� n�ng c�p k� n�ng n�y �n c�p b�c n�y, kh�ng th� n�ng c�p ���c h�n"},
}
x600022_g_CITY_BUILDING_MaxLevel = {
					[CITY_BUILDING_SHUFANG]		= 4,
					[CITY_BUILDING_DUANTAI]		= 4,
					[CITY_BUILDING_MICANG]		= 4,
					[CITY_BUILDING_JIFANG]		=	4,
					[CITY_BUILDING_JIUSI]			=	3,
					[CITY_BUILDING_YISHE]			=	3,
					[CITY_BUILDING_QIANZHUANG]=	4,

}

--�۳��ﹱto� � ��
x600022_g_Contribution_Lock	=	0					--enum Obj_Human::BITLOCKTYPE
x600022_g_Contribution_AttrType = 6

--����c�p��ng12c�pto� � ���� k� n�ngto� � �ﹱ���ı�
x600022_g_Contribution_Cost_12 = {
	30,		-- 0 -> 1
	40,		-- 1 -> 2
	50,
	60,
	70,
	100,
	250,
	500,
	1000,
	2000,
	6870,
	7500,		-- 11 -> 12
}

--����c�p��ng100c�pto� � ���� k� n�ngto� � �ﹱ���ı�
--minlv ��С k� n�ng��c�p
--maxlv ��� k� n�ng��c�p
--costrate C�n costrate*curlv�ﹱ
--x600022_g_Contribution_Cost_100 = {
--	{minlv=1,		maxlv=20,		costrate=1},
--	{minlv=21,	maxlv=40,		costrate=2},
--	{minlv=41,	maxlv=60,		costrate=3},
--	{minlv=61,	maxlv=80,		costrate=4},
--	{minlv=81,	maxlv=100,	costrate=5},
--}

x600022_g_ExtraNPCName = {{"M�c Uy�n Thanh", "Nguy�n Tinh Tr�c", "Gia Lu�t ��i Th�ch"}
													,{ABILITY_FENGREN, ABILITY_GONGYI, ABILITY_ZHUZAO}}

function x600022_GetCostContributionByAbilityLevel(aid,alv)
	if CITY_ABILITY_DETAIL[aid] then
		local ret, maxlevel = LuaFnGetAbilityMaxLevel(aid);
		if ret and ret == 1 and maxlevel then
			if 10 == maxlevel then
			--12c�p�ⶥto� �  k� n�ng,����۳����ٰﹱ
				return x600022_g_Contribution_Cost_12[alv+1]
			elseif 100 == maxlevel or 99 == maxlevel then
			--100c�p�ⶥto� �  k� n�ng,ͨ�� k� n�ng��c�p�����
				return floor( x600022_g_Contribution_Cost_12[ floor( alv/10 ) + 1 ] / 10 )

			--	for i = 1, getn(x600022_g_Contribution_Cost_100) do
			--		local l = x600022_g_Contribution_Cost_100[i]
			--		if alv+1 >= l.minlv and alv+1 <= l.maxlv then
			--			return (alv+1)*l.costrate
			--		end
			--	end
			end
		end
	end
	--if CITY_ABILITY_DETAIL[aid] and CITY_ABILITY_DETAIL[aid].cond[alv+1] then
	--	if 12 == getn(CITY_ABILITY_DETAIL[aid].cond) then
	--	--12c�p�ⶥto� �  k� n�ng,����۳����ٰﹱ
	--		return x600022_g_Contribution_Cost_12[alv+1]
	--	elseif 100 == getn(CITY_ABILITY_DETAIL[aid].cond) then
	--	--100c�p�ⶥto� �  k� n�ng,ͨ�� k� n�ng��c�p�����
	--		for i = 1, getn(x600022_g_Contribution_Cost_100) do
	--			local l = x600022_g_Contribution_Cost_100[i]
	--			if alv+1 >= l.minlv and alv+1 <= l.maxlv then
	--				return (alv+1)*l.costrate
	--			end
	--		end
	--	end
	--end

	return -1
end

function x600022_ShowErrorMsg(sceneId,selfId,errid)
	for i = 1, getn(x600022_g_ErrorMsg) do
		if x600022_g_ErrorMsg[i][1] == errid then
			Msg2Player( sceneId,selfId,"@*;SrvMsg;DBD:"..x600022_g_ErrorMsg[i][2],MSG2PLAYER_PARA)
			--BeginEvent(sceneId)
      --	AddText(sceneId,x600022_g_ErrorMsg[i][2]);
      --EndEvent(sceneId)
      --DispatchMissionTips(sceneId,selfId)
			break
		end
	end
	return errid
end

--�����û� �i�m��to� � �˽�����to� � ���� k� n�ngѡ��
function x600022_OnDefaultEvent( sceneId, selfId, targetId, eventScriptId, npcScriptId, bid )
	--�ж������ng����ngC�i n�y Th�nh ph� �������to� � ��Ա
	--if GetNumText() == 666 then
	--	BeginEvent(sceneId)
	--		AddText(sceneId, "#{JZBZ_081031_01}");
	--	EndEvent()
	--	DispatchEventList(sceneId, selfId, targetId)
	--end
	if CityGetSelfCityID(sceneId,selfId) ~= sceneId then return end

	local nUserSelNum = GetNumText();
	if(eventScriptId == x600022_g_ScriptId) then
		--���ѡ����m�t c�i���� k� n�ng
		local aid = nUserSelNum;
		if(aid and CITY_ABILITY_DETAIL[aid]) then
			BeginEvent(sceneId)
			for i = 1, getn(CITY_ABILITY_DETAIL[aid].script) do
				if(CITY_ABILITY_DETAIL[aid].script[i] > 0) then
					-- i == 1	ѧϰ
					-- i == 2 ��c�p
					-- i == 3 �˽�
					CallScriptFunction( CITY_ABILITY_DETAIL[aid].script[i], "OnEnumerate",sceneId, selfId, targetId, bid, i)
				end
			end
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	else
		--���� k� n�ngto� � ������
		if x600022_IsValidCityLifeSkill_Script_Id(eventScriptId) == 1 then
			CallScriptFunction( eventScriptId, "OnDefaultEvent",sceneId, selfId, targetId, nUserSelNum, npcScriptId, bid )
		end
	end
end

--���C�i n�y �¼�Id��ng����ngTh�nh ph� ���� k� n�ngѧϰ��ϵto� � �ű�
function x600022_IsValidCityLifeSkill_Script_Id(eid)
	if nil == eid then return 0 end
	for i = 1, getn(CITY_ABILITY_DETAIL) do
		if CITY_ABILITY_DETAIL[i] then
			local letb = CITY_ABILITY_DETAIL[i].script
			for k = 1, getn(letb) do
				if eid == letb[k] then return 1 end
			end
		end
	end
	return 0
end

--�оٴ˽��������� k� n�ngto� � ѡ��
function x600022_GetLifeAbilityByBuildingId(bid)
	local aRet = {}
	if bid and CITY_BUILDING_ABILITY_LIST[bid] then
		aRet = CITY_BUILDING_ABILITY_LIST[bid]
	end

	return aRet	--Tr� v����
end

--���ѧϰ���� k� n�ngѡ��
function x600022_AddCityLifeAbilityOpt(sceneId, selfId, scriptid, bid, optid)
	--�ж������ng����ngC�i n�y Th�nh ph� �������to� � ��Ա
	if CityGetSelfCityID(sceneId,selfId) ~= sceneId then return end
	
	local lifeNum = getn(x600022_GetLifeAbilityByBuildingId(bid))
	if lifeNum > 0 then
		AddNumText( sceneId, scriptid, "H�c k� n�ng cu�c s�ng", 6, optid )
		--AddNumText( sceneId, x600022_g_ScriptId, "#{JZBZ_081031_02}", 11, 666)
	end
end

--������� k� n�ngto� � ��ϸ����
function x600022_IsHaveLifeAbilityByBuildingId(sceneId, selfId, bid)
	return getn(x600022_GetLifeAbilityByBuildingId(bid))
end

function x600022_OnEnumerate( sceneId, selfId, targetId, bid )
	--�ж������ng����ngC�i n�y Th�nh ph� �������to� � ��Ա
	if CityGetSelfCityID(sceneId,selfId) ~= sceneId then return end
	--������������ k� n�ngto� � ����
	AddText( sceneId, "#{BPJZ_081103_05}" )
	local aTable = x600022_GetLifeAbilityByBuildingId(bid)
	for i = 1, getn(aTable) do
		AddNumText( sceneId, x600022_g_ScriptId, CITY_ABILITY_DETAIL[aTable[i]].aname, 6, aTable[i])
	end
end

--���C�i n�y ������to� � ����Լ��,�������� k� n�ng�ű�������ѯ
--checktype = 1	ѧϰ���
--checktype = 2	��c�p���
--checktype = 3 ��c�p(Client)				--ѧϰ��ngT�i ������ k� n�ng�ű���ֱ�����to� � 
--checktype = 4 ѧϰto� � ��ʾ��Ϣ��C�n to� � ����(Server)
--checktype = 5 �о�ѧϰѡ��ʱto� � ���
--checktype = 6 �о���c�pѡ��ʱto� � ���
function x600022_OnCityCheck(sceneId, selfId, aid, bid, checktype, ex1, targetId)
	--�ж������ng����ngC�i n�y Th�nh ph� �������to� � ��Ա
	if CityGetSelfCityID(sceneId,selfId) ~= sceneId then return x600022_ShowErrorMsg(sceneId, selfId, -8) end

	--������������ k� n�ngto� � ����
	local blv = CityGetBuildingLevel(sceneId, selfId, sceneId, bid)
	local rl = nil
	if CITY_BUILDING_ABILITY_RULE[bid] and CITY_BUILDING_ABILITY_RULE[bid][blv] then
		local aTable = CITY_BUILDING_ABILITY_RULE[bid][blv]
	for i = 1, getn(aTable) do
		if aTable[i].aid == aid then rl = aTable[i] end
	end
	end

	-- ��t ���c�������
	local alv
	if(1 == checktype or 5 == checktype) then alv = 0 end	--ѧϰ
	if(2 == checktype or 3 == checktype or 6 == checktype) then --��c�p
		alv = QueryHumanAbilityLevel(sceneId, selfId, aid)
	end

	--�����ҵ�to� � ���������
	if CITY_BUILDING_SIXRATE[bid] then
		--��ȡѧϰ��ʾto� � ����
		if(4 == checktype) then return 1 end
		if(2 == checktype) then 
			local ret, maxlevel = LuaFnGetAbilityMaxLevel(aid);
			if ret and ret == 1 and alv>=maxlevel then
				return x600022_ShowErrorMsg(sceneId, selfId, -14);
			end;
			if(alv<1)then
				return x600022_ShowErrorMsg(sceneId, selfId, -6)
			end;
			return 1;			
		end
		--��ng��ѧ���� k� n�ng
		--ѧϰ
		if 1 == checktype and QueryHumanAbilityLevel(sceneId, selfId, aid) > 0 then
			return x600022_ShowErrorMsg(sceneId, selfId, -7)
		end
		if 5 == checktype and QueryHumanAbilityLevel(sceneId, selfId, aid) > 0 then
			return x600022_ShowErrorMsg(sceneId, selfId, -7)
		end
		--��c�p
		if 3 == checktype  then	--Client
			local ret, maxlevel = LuaFnGetAbilityMaxLevel(aid);
			if ret and ret == 1 and alv>=maxlevel then
				return x600022_ShowErrorMsg(sceneId, selfId, -14);
			end;
			if(alv<1)then
				return x600022_ShowErrorMsg(sceneId, selfId, -6)
			end;
		end
		if 6 == checktype and alv < 1 then	--Server
			return x600022_ShowErrorMsg(sceneId, selfId, -6)
		end

		if rl and 5 ~= checktype and 6 ~= checktype then
			-- k� n�ng��С����c�p���
			if alv >= rl.amax	or alv+1 < rl.amin then
				if x600022_g_CITY_BUILDING_MaxLevel[bid] and x600022_g_CITY_BUILDING_MaxLevel[bid]<=blv then
					return x600022_ShowErrorMsg(sceneId, selfId, -15);
				end;
				return x600022_ShowErrorMsg(sceneId, selfId, -5)
			end
		
			local tempAbilityId = rl.aid;
			local tempAbilityLevel = alv+1;
			local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel, extraMoney, extraExp = LuaFnGetAbilityLevelUpConfig2(tempAbilityId, tempAbilityLevel);
			
			--��д����NPC�߼�
			for i = 1, getn(x600022_g_ExtraNPCName[1]) do
				--PrintStr(GetName(sceneId, targetId).." "..x600022_g_ExtraNPCName[1][i].." "..tempAbilityId .." ".. x600022_g_ExtraNPCName[2][i])
				if GetName(sceneId, targetId) == x600022_g_ExtraNPCName[1][i] and tempAbilityId == x600022_g_ExtraNPCName[2][i] then
					demandMoney = extraMoney
					demandExp = extraExp
					break
				end
			end
			
			if ret and ret == 1 then
				--�����c�p���
				if GetLevel(sceneId,selfId) < limitLevel then
					return x600022_ShowErrorMsg(sceneId, selfId, -2)
				end
				--�����Ǯ���
				local rate = -0.2	--CITY_BUILDING_SIXRATE[bid]		 ��t ���cC�i n�y ������to� � ��Ӧ��ֵ
				if GetMoney(sceneId,selfId) + GetMoneyJZ(sceneId, selfId) < floor((1+rate)*demandMoney) then
					return x600022_ShowErrorMsg(sceneId, selfId, -3)
				end
				--����Kinh nghi�m���
				if 1 ~= checktype and 4 ~= checktype then
				if GetExp(sceneId,selfId) < floor((1+rate)*demandExp) then
					return x600022_ShowErrorMsg(sceneId, selfId, -4)
				end
				end
				--�����ṱ�׶ȼ��
				local costContribution = x600022_GetCostContributionByAbilityLevel(aid, alv)
				if costContribution < 0 then
					return x600022_ShowErrorMsg(sceneId, selfId, -10)
				end
				local curContribute = CityGetAttr(sceneId,selfId,x600022_g_Contribution_AttrType)
				if ex1 and ex1 < curContribute then curContribute = ex1 end
				if curContribute < costContribution then
					return x600022_ShowErrorMsg(sceneId, selfId, -11)
				end
				--���� k� n�ng�����ȼ��
				local aexp = GetAbilityExp(sceneId, selfId, aid)
				if checktype == 3 then
					if aexp < limitAbilityExp then
						return x600022_ShowErrorMsg(sceneId, selfId, -12)
					end
				end
			else
				return 0;
			end
		else
			if nil == rl and 5~= checktype and 6 ~= checktype then
				return x600022_ShowErrorMsg(sceneId, selfId, -13)
			end
		end
	else
		return x600022_ShowErrorMsg(sceneId, selfId, -1)			--û���ҵ�C�i n�y ��������Բ������� k� n�ng
	end

	return 1				--���ɹ�
end

-- ��t ���cC�i n�y ������ʵ�ʸÿ�to� � ��Ǯ�����׶ȡ�Kinh nghi�m����ֵ,�������� k� n�ng�ű�����
--checktype = 1	ѧϰ���(Server)
--checktype = 2	��c�p���(Server)
--checktype = 3 ��c�p(Client)				--ѧϰ��ngT�i ������ k� n�ng�ű���ֱ�����to� � 
--checktype = 4 ѧϰto� � ��ʾ��Ϣ��C�n to� � ����(Server)
function x600022_OnCityAction(sceneId, selfId, targetId, aid, bid, checktype, ex1)
	--������������ k� n�ngto� � ����
	local blv = CityGetBuildingLevel(sceneId, selfId, sceneId, bid)
	local rl = nil
	if CITY_BUILDING_ABILITY_RULE[bid] and CITY_BUILDING_ABILITY_RULE[bid][blv] then
		local aTable = CITY_BUILDING_ABILITY_RULE[bid][blv]
	for i = 1, getn(aTable) do
		if aTable[i].aid == aid then rl = aTable[i] end
	end
	end

	--�����ҵ�to� � ����������
	if x600022_OnCityCheck(sceneId, selfId, aid, bid, checktype, ex1, targetId) == 1 then
		local alv = QueryHumanAbilityLevel(sceneId, selfId, aid)
		local rate = -0.2	--CITY_BUILDING_SIXRATE[bid]		 ��t ���cC�i n�y ������to� � ��Ӧ��ֵ

		local tempAbilityId = aid;
		local tempAbilityLevel = alv+1;
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel, extraMoney, extraExp = LuaFnGetAbilityLevelUpConfig2(tempAbilityId, tempAbilityLevel);
		
		--��д����NPC�߼�
		for i = 1, getn(x600022_g_ExtraNPCName[1]) do
			--PrintStr(GetName(sceneId, targetId).." "..x600022_g_ExtraNPCName[1][i].." "..tempAbilityId .." ".. x600022_g_ExtraNPCName[2][i])
			if GetName(sceneId, targetId) == x600022_g_ExtraNPCName[1][i] and tempAbilityId == x600022_g_ExtraNPCName[2][i] then
				demandMoney = extraMoney
				demandExp = extraExp
				break
			end
		end
		
		if ret and ret == 1 then
			local Need_Money = floor((1+rate)*demandMoney)				--C�n ���to� � ��Ǯ
			local Need_Level	= limitLevel			--C�n ���to� � ��c�p
			local Need_Exp		=	floor((1+rate)*demandExp)		--C�n ���to� � Kinh nghi�mֵ
			local Need_Aexp	=	limitAbilityExpShow		--C�n to� �  k� n�ng������

			local costContribution = x600022_GetCostContributionByAbilityLevel(aid, alv)
			if costContribution < 0 then
				return x600022_ShowErrorMsg(sceneId, selfId, -10)
			end
			local Need_Contribute = costContribution																--C�n ���to� � �ﹱ

			--��鵱ǰ��ng���ܿ۳��ﹱto� � ��
			if Need_Contribute > 0 and 1 == checktype and 3 == checktype then
				if IsLocked(sceneId, selfId, x600022_g_Contribution_Lock) then return x600022_ShowErrorMsg(sceneId, selfId, -9) end
			end

			local User_Contribute = CityGetAttr(sceneId,selfId,x600022_g_Contribution_AttrType)			--��ҵ�ǰto� � �ﹱ
			if ex1 and ex1 < User_Contribute then User_Contribute = ex1 end	--Ϊ����ʱ��ʾʹ��,��Ϊ�ﹱ���ԱȽ�����

			if rl and checktype == 1 then	--Server
				--�۳�����
				LuaFnCostMoneyWithPriority(sceneId,selfId,Need_Money)
				--ѧϰ���� k� n�ng����Kinh nghi�mֵ
				--if Need_Exp > 0 then AddExp(sceneId,selfId,Need_Exp*-1)	end
				CityChangeAttr(sceneId,selfId,x600022_g_Contribution_AttrType,Need_Contribute*-1)
				--ѧϰ���� k� n�ng
				SetHumanAbilityLevel(sceneId,selfId,rl.aid,1)
				--T�i npc���촰��֪ͨ����Ѿ�ѧ����
				BeginEvent(sceneId)
					AddText(sceneId,"C�c h� �� h�c ���c "..CITY_ABILITY_DETAIL[rl.aid].aname.." k� n�ng")
				EndEvent()
				DispatchEventList(sceneId,selfId,targetId)
			elseif checktype == 2 then	--Server
				BeginUICommand(sceneId)
					UICommand_AddInt(sceneId,targetId) --����Th�nh ph� ���� k� n�ng����
					UICommand_AddInt(sceneId,aid)
					UICommand_AddInt(sceneId,Need_Aexp)
					UICommand_AddInt(sceneId,Need_Money)
					UICommand_AddInt(sceneId,Need_Level)
					UICommand_AddInt(sceneId,Need_Exp)
					UICommand_AddInt(sceneId,Need_Contribute)
					UICommand_AddInt(sceneId,bid)
					UICommand_AddInt(sceneId,User_Contribute)
				EndUICommand(sceneId)
				DispatchUICommand(sceneId,selfId, 555)
			elseif checktype == 3 then	--Client
				--�۳�����
				local bOk = CityChangeAttr(sceneId,selfId,x600022_g_Contribution_AttrType,Need_Contribute*-1)
				if bOk > 0 then
					--���ȿ۳����� zchw
					local HumanMoney = LuaFnGetMoney( sceneId, selfId )
  					local HumanMoneyJZ = GetMoneyJZ( sceneId, selfId );
					if HumanMoney + HumanMoneyJZ  <  Need_Money then
						return 0;
					end
					local nDelJZ, nDelMoney = LuaFnCostMoneyWithPriority(sceneId, selfId, Need_Money);
					if (nDelJZ == -1) then
						return 0;
					end

					if Need_Exp > 0 then AddExp(sceneId,selfId,Need_Exp*-1)	end
					--CityChangeAttr(sceneId,selfId,x600022_g_Contribution_AttrType,Need_Contribute*-1)
					--��c�p���� k� n�ng
					SetHumanAbilityLevel(sceneId,selfId,aid,alv+1)
					--���¼���ͻ���to� � ��c�p��ť
					BeginUICommand(sceneId)
						UICommand_AddInt(sceneId,targetId) --����Th�nh ph� ���� k� n�ng����
						UICommand_AddInt(sceneId,aid)
						UICommand_AddInt(sceneId,bid)
					EndUICommand(sceneId)
					DispatchUICommand(sceneId,selfId, 556)
					--�ݹ�����Լ�,��ʾ��m�t c�pto� � ��Ϣ
					x600022_OnCityAction(sceneId, selfId, targetId, aid, bid, 2, User_Contribute-Need_Contribute)
				end
			elseif checktype ==4 then	--Server
				return Need_Level,Need_Money,Need_Contribute
			end
		else
			return x600022_ShowErrorMsg(sceneId, selfId, -1)			--û���ҵ�C�i n�y ��������Բ������� k� n�ng
		end
	else
		return 0			--û���ҵ�C�i n�y ��������Բ������� k� n�ng
	end

	return 1				--���ɹ�
end

--���Th�nh ph� to� � ��ǰά��״̬,��ά��״̬ʱ,����ʾ��Ϣ.
function x600022_CheckCityStatus(sceneId, selfId,targetId)
	if CityGetSelfCityID(sceneId,selfId) ~= sceneId then return -2 end
	
	if CityGetMaintainStatus( sceneId, selfId, sceneId ) == 1 then				-- ��ά��״̬
		BeginEvent(sceneId)
			AddText(sceneId,"Bang ch�ng ta hi�n gi� ngu�n v�n kh�ng ��, hay l� l�m th�m c�c nhi�m v� c�a th߽ng nh�n � bang ch�ng ta c� th� kh�i ph�c l�i b�nh th߶ng b�o v� l�i �n t�m ta nh�.")
		EndEvent()
		DispatchEventList(sceneId,selfId,targetId)
  	return -1
	end
	
	return 1
end
