--9��������˽ű�

x210299_g_ScriptId = 210299;

--ѧϰ��c�p����
x210299_g_SpecialEffectID = 18;

x210299_g_rideskillList = {};
x210299_g_rideskillList[1] ={limitLevel = 40, costMoney =350000, skillList = {
	{id=447,name="K� thu�t: H�"},
	{id=561,name="K� thu�t : S� t�"},
	{id=455,name="K� thu�t: Kh�i Lang"},
	{id=450,name="K� thu�t: H�c"},
	{id=451,name="K� thu�t: Thanh Ph��ng"},
	{id=452,name="K� thu�t: Mao ng�u"},
	{id=448,name="K� thu�t: Ho�ng Phi�u M�"},
	{id=454,name="K� thu�t: �i�u"},
	{id=453,name="K� thu�t: L�c"},
	--{id=470,name="K� thu�t: Linh D߽ng"}}
	}};

x210299_g_rideskillList[2] ={limitLevel = 60, costMoney =2900000, skillList = {
	{id=456,name="K� thu�t: B�ch H�"},
	{id=562,name="K� thu�t: B�ch s�"},
	{id=464,name="K� thu�t: B�ch Lang"},
	{id=459,name="K� thu�t: Kim D�c H�c"},
	{id=460,name="K� thu�t: H�ng B�ch Ph��ng"},
	{id=461,name="K� thu�t: B�ch mao ng�u"},
	{id=457,name="K� thu�t: Thanh B�ch Th�ng M�"},
	{id=463,name="K� thu�t: B�ch �i�u"},
	{id=462,name="K� thu�t: B�ch L�c"},
	--{id=471,name="K� thu�t: Tuy�t Linh D߽ng"}}
	}};
	
x210299_g_rideskillList[3] ={limitLevel = 80, costMoney =10000000, skillList = {
	{id=1087,name="K� Thu�t: Nh� � H�"},
	{id=1086,name="K� Thu�t: Li�t Di�m S�"},
	{id=1085,name="K� Thu�t: Ng�n Nguy�t Lang"},
	{id=1090,name="K� Thu�t: Thu� Li�n H�c"},
	{id=1084,name="K� Thu�t: L�u Ly Ph�ng"},
	{id=1092,name="K� Thu�t: Thanh Ly Ng�u"},
	{id=1088,name="K� Thu�t: Long Huy�t M�"},
	{id=1089,name="K� Thu�t: V� �nh �i�u"},
	{id=1091,name="K� Thu�t: Th�t Th�i L�c"},
	--{id=471,name="K� thu�t: Tuy�t Linh D߽ng"}}
	}};

--**********************************
--������ں���
--**********************************
function x210299_OnDefaultEvent(sceneId, selfId, targetId, level, skillLevel)
	local selectSkill;
	local limitLevel;
	local costMoney;
	local selfMenpai = LuaFnGetMenPai(sceneId, selfId);
	if selfMenpai then
		skillLevel = skillLevel + 1;
		local selectRideskillList = x210299_g_rideskillList[skillLevel];

		local selectSkillIndex = selfMenpai + 1;
		selectSkill = selectRideskillList.skillList[selectSkillIndex];
		limitLevel = selectRideskillList.limitLevel;
		costMoney = selectRideskillList.costMoney;
	end
	
	local selfLevel = LuaFnGetLevel(sceneId, selfId);
	if selectSkill and limitLevel and selfLevel then
		if selfLevel < limitLevel then
			x210299_ShowTipWindow(sceneId, selfId, "C�n ��t t�i c�p "..limitLevel.." m�i h�c c� th� k� n�ng n�y");
			return
		end
		
		local checkRet = LuaFnHaveSpecificEquitation(sceneId, selfId, selectSkill.id);
		if checkRet and checkRet == 0 then
				------------------------------------------------------------------------------	
			  local jz,_ = LuaFnCostMoneyWithPriority( sceneId, selfId, costMoney );	
				if jz == -1 then
					x210299_ShowTipWindow(sceneId, selfId, "#{GCShopBuyHandler_Info_Money_Is_Not_Enough}")
					return
				end
			------------------------------------------------------------------------------------
			local ret = LuaFnLearnSpecificEquitation(sceneId, selfId, selectSkill.id, 1);
			if ret and ret == 1 then
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x210299_g_SpecialEffectID, 0);
				x210299_ShowTipWindow(sceneId, selfId, "H�c ���c "..selectSkill.name..".");
			end
		else
			x210299_ShowTipWindow(sceneId, selfId, "C�c h� �� h�c ���c "..selectSkill.name..".");
		end
	end
end

--**********************************
--��ʾ
--**********************************
function x210299_ShowTipWindow(sceneId, selfId, message)
	BeginEvent(sceneId);
		AddText(sceneId, message);
	EndEvent( );
	DispatchMissionTips(sceneId, selfId);
end

