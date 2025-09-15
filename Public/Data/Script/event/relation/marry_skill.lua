--���޼���ѧϰ

--�ű���
x806016_g_ScriptId		= 806016


--K� n�ng phu th� c�p ���ܱ�....
x806016_g_skillList_XXXY = {

	{id=260, name="K� n�ng phu th� c�p 1", firendPt=1000, lvM=0, lvF=0, exp=0, money=0},
	{id=261, name="K� n�ng phu th� c�p 2", firendPt=2000, lvM=0, lvF=0, exp=0, money=442},
	{id=262, name="K� n�ng phu th� c�p 3", firendPt=3000, lvM=0, lvF=0, exp=0, money=967},
	{id=263, name="K� n�ng phu th� c�p 4", firendPt=4000, lvM=0, lvF=0, exp=0, money=1800},
	{id=264, name="K� n�ng phu th� c�p 5", firendPt=5000, lvM=0, lvF=0, exp=0, money=3009},
	{id=265, name="K� n�ng phu th� c�p 6", firendPt=6000, lvM=0, lvF=0, exp=0, money=4660},
	{id=266, name="K� n�ng phu th� c�p 7", firendPt=7000, lvM=0, lvF=0, exp=0, money=6825},
	{id=267, name="K� n�ng phu th� c�p 8", firendPt=8000, lvM=0, lvF=0, exp=0, money=13322},
	{id=268, name="K� n�ng phu th� c�p 9", firendPt=9000, lvM=0, lvF=0, exp=0, money=23449}

};

--аng kh� li�n chi ���ܱ�....
x806016_g_skillList_TQLZ = {

	{id=250, name="аng kh� li�n chi (c�p 1)", firendPt=1000, lvM=35, lvF=20, exp=24739, money=10000},
	{id=251, name="аng kh� li�n chi (c�p 2)", firendPt=3000, lvM=45, lvF=30, exp=53745, money=40000},
	{id=252, name="аng kh� li�n chi (c�p 3)", firendPt=5000, lvM=55, lvF=40, exp=116762, money=100000},
	{id=253, name="аng kh� li�n chi (c�p 4)", firendPt=7000, lvM=65, lvF=50, exp=253665, money=200000},
	{id=254, name="аng kh� li�n chi (c�p 5)", firendPt=9999, lvM=75, lvF=60, exp=551086, money=500000},

};

--Thi�n tr߶ng �a c�u ���ܱ�....
x806016_g_skillList_TCDJ = {

	{id=255, name="Thi�n tr߶ng �a c�u (c�p 1)", firendPt=1000, lvM=35, lvF=20, exp=24739, money=10000},
	{id=256, name="Thi�n tr߶ng �a c�u (c�p 2)", firendPt=3000, lvM=45, lvF=30, exp=53745, money=40000},
	{id=257, name="Thi�n tr߶ng �a c�u (c�p 3)", firendPt=5000, lvM=55, lvF=40, exp=116762, money=100000},
	{id=258, name="Thi�n tr߶ng �a c�u (c�p 4)", firendPt=7000, lvM=65, lvF=50, exp=253665, money=200000},
	{id=259, name="Thi�n tr߶ng �a c�u (c�p 5)", firendPt=9999, lvM=75, lvF=60, exp=551086, money=500000},

};

--H�nh �nh B�t Ly ���ܱ�....
x806016_g_skillList_XYBL = {

	{id=269, name="H�nh �nh B�t Ly (c�p 1)", firendPt=1000, lvM=35, lvF=20, exp=24739, money=10000},
	{id=270, name="H�nh �nh B�t Ly (c�p 2)", firendPt=3000, lvM=45, lvF=30, exp=53745, money=40000},
	{id=271, name="H�nh �nh B�t Ly (c�p 3)", firendPt=5000, lvM=55, lvF=40, exp=116762, money=100000},
	{id=272, name="H�nh �nh B�t Ly (c�p 4)", firendPt=7000, lvM=65, lvF=50, exp=253665, money=200000},
	{id=273, name="H�nh �nh B�t Ly (c�p 5)", firendPt=9999, lvM=75, lvF=60, exp=551086, money=500000},

};

--H�nh �nh B�t Ly c�p 1��Ӧ�ļ���ID
x806016_g_xybl_SkillID = 269
--ѧϰH�nh �nh B�t Ly c�p 1��Ҫ����ƷID
x806016_g_xybl_ItemID = 30308059

--��Ҫ���繫��ļ��ܱ�ű�
x806016_g_MaxMarrySkill_T = {268,253,254,258,259,272,273};

--**********************************
--������ں���
--**********************************
function x806016_OnDefaultEvent(sceneId, selfId, targetId)

	local selectEventId	= GetNumText();

	if selectEventId == 0 then
		BeginEvent(sceneId);
			AddNumText(sceneId, x806016_g_ScriptId, "H�c t�p � h�p t�m �u", 12, 11);
			AddNumText(sceneId, x806016_g_ScriptId, "H�c t�p аng kh� li�n chi", 12, 12);
			AddNumText(sceneId, x806016_g_ScriptId, "H�c t�p Thi�n tr߶ng �a c�u", 12, 13);
			AddNumText(sceneId, x806016_g_ScriptId, "H�c t�p H�nh �nh b�t ly", 12, 14);
		EndEvent(sceneId);
		DispatchEventList(sceneId, selfId, targetId);

	elseif selectEventId == 11 then

		local ret, nextLevel, maleId, femaleId = x806016_CheckStudySkill( sceneId, selfId, targetId, x806016_g_skillList_XXXY );
		if ret > 0 then
			local skill = x806016_g_skillList_XXXY[nextLevel+1];
			BeginEvent(sceneId);
				AddText(sceneId, "  � h�p t�m �u c� th� gia t�ng th� l�c, k� n�ng c�p b�c c�ng cao gia t�ng th� l�c c�ng nhi�u.");
				if skill.money > 0 then
					AddText(sceneId, "  Nh� trai c�n t�n #{_EXCHG"..skill.money.."} h�c t�p "..skill.name..".");
				end
				if nextLevel > 0 then
					AddNumText(sceneId, x806016_g_ScriptId, "Th�ng c�p k� n�ng", 12, 21);
				else
					AddNumText(sceneId, x806016_g_ScriptId, "H�c t�p k� n�ng", 12, 21);
				end
			EndEvent(sceneId);
			DispatchEventList(sceneId, selfId, targetId);
		end

	elseif selectEventId == 12 then

		local ret, nextLevel, maleId, femaleId = x806016_CheckStudySkill( sceneId, selfId, targetId, x806016_g_skillList_TQLZ );
		if ret > 0 then
			local skill = x806016_g_skillList_TQLZ[nextLevel+1];
			BeginEvent(sceneId);
				AddText(sceneId, "  аng kh� li�n chi c� th� kh�i ph�c huy�t, k� n�ng c�p b�c c�ng cao, kh�i ph�c  huy�t c�ng nhi�u.");
				AddText(sceneId, "  H�c t�p "..skill.name.." Nh� trai c�n t�n "..skill.exp.." kinh nghi�m c�ng #{_EXCHG"..skill.money.."}.");
				AddText(sceneId, "  аng th�i c�n v� ch�ng h�o h�u � ��t t�i #G"..skill.firendPt.."#W, nh� trai c�p b�c ��t t�i "..skill.lvM.." c�p, nh� g�i c�p b�c ��t t�i "..skill.lvF.."c�p.");
				if nextLevel > 0 then
					AddNumText(sceneId, x806016_g_ScriptId, "Th�ng c�p k� n�ng", 12, 22);
				else
					AddNumText(sceneId, x806016_g_ScriptId, "H�c t�p k� n�ng", 12, 22);
				end
			EndEvent(sceneId);
			DispatchEventList(sceneId, selfId, targetId);
		end

	elseif selectEventId == 13 then

		local ret, nextLevel, maleId, femaleId = x806016_CheckStudySkill( sceneId, selfId, targetId, x806016_g_skillList_TCDJ );
		if ret > 0 then
			local skill = x806016_g_skillList_TCDJ[nextLevel+1];
			BeginEvent(sceneId);
				AddText(sceneId, "  Thi�n tr߶ng �a c�u c� h�i sinh l�i ph�i ng�u c�ng h�i ph�c nh�t �nh t� l� huy�t kh�, k� n�ng c�p b�c c�ng cao, th�i gian ph�c h�i c�ng �t.");
				AddText(sceneId, "  H�c t�p "..skill.name.." Nh� trai c�n t�n "..skill.exp.." kinh nghi�m c�ng #{_EXCHG"..skill.money.."}.");
				AddText(sceneId, "  аng th�i c�n v� ch�ng h�o h�u � ��t t�i #G"..skill.firendPt.."#W, nh� trai c�p b�c ��t t�i "..skill.lvM.." c�p, nh� g�i c�p b�c ��t t�i "..skill.lvF.."c�p.");
				if nextLevel > 0 then
					AddNumText(sceneId, x806016_g_ScriptId, "Th�ng c�p k� n�ng", 12, 23);
				else
					AddNumText(sceneId, x806016_g_ScriptId, "H�c t�p k� n�ng", 12, 23);
				end
			EndEvent(sceneId);
			DispatchEventList(sceneId, selfId, targetId);
		end

	elseif selectEventId == 14 then

		local ret, nextLevel, maleId, femaleId = x806016_CheckStudySkill( sceneId, selfId, targetId, x806016_g_skillList_XYBL );
		if ret > 0 then
			local skill = x806016_g_skillList_XYBL[nextLevel+1];
			BeginEvent(sceneId);
				AddText(sceneId, "  H�nh �nh B�t Ly c� th� trong nh�y m�t di chuy�n �n v� tr� v� ch�ng, k� n�ng c�p b�c c�ng cao, th�i gian c�ng h�i ph�c �t.");
				if skill.id == x806016_g_xybl_SkillID then
					AddText(sceneId, "  H�c t�p "..skill.name.." nh� trai c�n c� #G#{_ITEM"..tostring(x806016_g_xybl_ItemID).."}#W.");
				else
					AddText(sceneId, "  H�c t�p "..skill.name.." Nh� trai c�n t�n "..skill.exp.." kinh nghi�m c�ng #{_EXCHG"..skill.money.."}.");
				end
				AddText(sceneId, "  аng th�i c�n v� ch�ng h�o h�u � ��t t�i #G"..skill.firendPt.."#W, nh� trai c�p b�c ��t t�i "..skill.lvM.." c�p, nh� g�i c�p b�c ��t t�i "..skill.lvF.."c�p.");
				if nextLevel > 0 then
					AddNumText(sceneId, x806016_g_ScriptId, "Th�ng c�p k� n�ng", 12, 24);
				else
					AddNumText(sceneId, x806016_g_ScriptId, "H�c t�p k� n�ng", 12, 24);
				end
			EndEvent(sceneId);
			DispatchEventList(sceneId, selfId, targetId);
		end

	elseif selectEventId == 21 then

		x806016_StudySkill(sceneId, selfId, targetId, x806016_g_skillList_XXXY)

	elseif selectEventId == 22 then

		x806016_StudySkill(sceneId, selfId, targetId, x806016_g_skillList_TQLZ)

	elseif selectEventId == 23 then

		x806016_StudySkill(sceneId, selfId, targetId, x806016_g_skillList_TCDJ)

	elseif selectEventId == 24 then

		x806016_StudySkill(sceneId, selfId, targetId, x806016_g_skillList_XYBL)

	end

end

--**********************************
--�о��¼�
--**********************************
function x806016_OnEnumerate(sceneId, selfId, targetId)
	local isMarried = LuaFnIsMarried(sceneId, selfId);
	if isMarried and isMarried > 0 then
		AddNumText(sceneId, x806016_g_ScriptId, "K� n�ng h�c l�m phu th�", 12, 0);
	end
end

--**********************************
--����Ƿ����ѧϰĳ����޼���....
--**********************************
function x806016_CheckStudySkill( sceneId, selfId, targetId, SkillList )

	--ǰ������
	local szMsg = "N�u mu�n h�c k� n�ng phu th�, m�i 2 b�n nh� trai v� nh� g�i c�ng h�p th�nh m�t nh�m r�i t�i t�m ta"
	if LuaFnHasTeam(sceneId, selfId) == 0 then
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end
	
	szMsg = "Nh�m ch� c� th� do hai b�n phu th� l�p th�nh, trong nh�m kh�ng th� c� th�nh vi�n kh�c"
	if LuaFnGetTeamSize(sceneId, selfId) ~= 2 then
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	szMsg = "Ch� c� 2 ng߶i �u �n b�n ta m�i c� th� h�c k� n�ng n�y"
	local nearNum = GetNearTeamCount(sceneId, selfId);
	if nearNum ~= 2 then
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	szMsg = "Kh�ng ph�i l� phu th�, kh�ng th� h�c k� n�ng phu th�"
	local maleId = -1;
	local femaleId = -1;
	for nearIndex = 0, nearNum - 1 do
		local memId = GetNearTeamMember(sceneId, selfId, nearIndex);
		local sexType = LuaFnGetSex(sceneId, memId);
		if sexType == 1 then
			maleId = memId;
		else
			femaleId = memId;
		end
	end
	
	if maleId == -1 or femaleId == -1 then
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end
	
	local isSpouses = LuaFnIsSpouses(sceneId, maleId, femaleId);
	if isSpouses and isSpouses > 0 then
	else
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	szMsg = "N�i b� b� l�i, file kh�ng th� th�c hi�n b�nh th߶ng."
	if LuaFnIsCanDoScriptLogic(sceneId, maleId) ~= 1 then
		return 0;
	end
	if LuaFnIsCanDoScriptLogic(sceneId, femaleId) ~= 1 then
		return 0;
	end
	
	szMsg = "Hai b�n b�t bu�c ph�i tr� th�nh phu th� m�i c� ���c k� n�ng phu th�."
	local maleIsFirend, femaleIsFirend;
	maleIsFirend = LuaFnIsFriend(sceneId, maleId, femaleId);
	femaleIsFirend = LuaFnIsFriend(sceneId, femaleId, maleId);
	if maleIsFirend and maleIsFirend == 1 and femaleIsFirend and femaleIsFirend == 1 then
	else
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	local maleSkillLevel, femaleSkillLevel;
	maleSkillLevel = -1;
	femaleSkillLevel = -1;

	local skill, skillLevel;
	skillLevel = 0;
	--�����ҵķ��޼����Ѿ�ѧ������
	for _, skill in SkillList do
		local maleHaveSkill = HaveSkill(sceneId, maleId, skill.id);
		if maleHaveSkill and maleHaveSkill > 0 then
			maleSkillLevel = skillLevel;
		end
		
		local femaleHaveSkill = HaveSkill(sceneId, femaleId, skill.id);
		if femaleHaveSkill and femaleHaveSkill > 0 then
			femaleSkillLevel = skillLevel;
		end
		skillLevel  =skillLevel + 1;
	end
	
	local maxSkillLevel = skillLevel - 1;
	
	szMsg = "C�c ng߽i �� h�c xong t�t c� k� n�ng phu th�."
	if maleSkillLevel >= maxSkillLevel then
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return 0;
	end

	nextLevel = femaleSkillLevel+1;

	return 1, nextLevel, maleId, femaleId;

end

--**********************************
--H�c t�p k� n�ng
--**********************************
function x806016_StudySkill(sceneId, selfId, targetId, SkillList)

	--����������....
	local ret, nextLevel, maleId, femaleId = x806016_CheckStudySkill( sceneId, selfId, targetId, SkillList );
	if ret == 0 then
		return
	end

	local skill = SkillList[nextLevel+1];

	szMsg = "е h�u h�o c�a hai b�n c�n ��t t�i %d, m�i c� th� h�c ���c 1 k� n�ng phu th�."
	local maleFirendPt, femaleFirendPt, needFirendPt;
	maleFirendPt =  LuaFnGetFriendPoint(sceneId, maleId, femaleId);
	femaleFirendPt =  LuaFnGetFriendPoint(sceneId, femaleId, maleId);
	needFirendPt = skill.firendPt;
	if maleFirendPt >= needFirendPt and femaleFirendPt >= needFirendPt then
	else
		szMsg = format(szMsg, needFirendPt);
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return
	end

	szMsg = "Nh� trai c�p b�c ph�i ��t t�i %d m�i c� th� h�c ���c ti�p theo h�ng k� n�ng phu th�."
	if GetLevel( sceneId, maleId ) < skill.lvM then
		szMsg = format(szMsg, skill.lvM);
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return
	end

	szMsg = "Nh� g�i c�p b�c ph�i ��t t�i %d m�i c� th� h�c ���c ti�p theo h�ng k� n�ng phu th�."
	if GetLevel( sceneId, femaleId ) < skill.lvF then
		szMsg = format(szMsg, skill.lvF);
		x806016_MessageBox(sceneId, selfId, targetId, szMsg);
		return
	end
	
	if skill.id == x806016_g_xybl_SkillID then
		if HaveItemInBag(sceneId,maleId,x806016_g_xybl_ItemID)<0 then
			x806016_MessageBox(sceneId, selfId, targetId, "Nh� trai c�n c� #G#{_ITEM"..tostring(x806016_g_xybl_ItemID).."}#W t�i n�ng h�c t�p n�n k� n�ng!");
			return
		end
		if LuaFnGetAvailableItemCount(sceneId,maleId,x806016_g_xybl_ItemID)<=0 then
			x806016_MessageBox(sceneId, selfId, targetId, "V�t ph�m c�n thi�t #G#{_ITEM"..tostring(x806016_g_xybl_ItemID).."}#W �� b� kh�a, th�nh gi�i kh�a xong h�c l�i!");
			return
		end
		--�۳���Ʒ
		LuaFnDelAvailableItem(sceneId,maleId,x806016_g_xybl_ItemID,1)
	else
		szMsg = "Nh� trai kinh nghi�m ph�i ��t t�i %d m�i c� th� h�c ���c ti�p theo h�ng k� n�ng phu th�."
		if GetExp(sceneId, maleId) < skill.exp then
			szMsg = format(szMsg, skill.exp);
			x806016_MessageBox(sceneId, selfId, targetId, szMsg);
			return
		end
	
		szMsg = "Nh� trai c�n mang theo #{_EXCHG%d} m�i c� th� h�c t�p k� n�ng."
		local maleMoney, needMoney;
		maleMoney = LuaFnGetMoney(sceneId, maleId);
		needMoney = skill.money;
		
		if maleMoney and maleMoney+GetMoneyJZ(sceneId, maleId) >= needMoney then
		else
			szMsg = format(szMsg, needMoney);
			x806016_MessageBox(sceneId, selfId, targetId, szMsg);
			return
		end
	
		--�۳��з����Ͻ�Ǯ....
		LuaFnCostMoneyWithPriority(sceneId, maleId, needMoney);
		
		--�۳��з�����....
		if skill.exp > 0 then
			LuaFnAddExp( sceneId, maleId, -skill.exp );
		end
	end

	--����һ�����޼��ܸ�˫��
	x806016_MyAddSkill(sceneId, maleId, SkillList, nextLevel);
	x806016_MyAddSkill( sceneId, femaleId, SkillList, nextLevel);
	x806016_SendWorldMsg(sceneId,maleId,femaleId,SkillList, nextLevel)
	--���ͳ����Ϣ
	x806016_LogCoupleAction(sceneId,maleId,femaleId,SkillList, nextLevel)
	
	--�ɹ�ѧϰ��رնԻ�����....
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
	
	return

end

--**********************************
--���һ����޼���
--**********************************
function x806016_MyAddSkill(sceneId, selfId, SkillList, nextLevel)

	--ɾ�����޼���
	local tempSkill;
	for _, tempSkill in SkillList do
		local haveSkill = HaveSkill(sceneId, selfId, tempSkill.id);
		if haveSkill and haveSkill > 0 then
			DelSkill(sceneId, selfId, tempSkill.id);
		end
	end

	local skill = SkillList[nextLevel+1];

	AddSkill(sceneId, selfId, skill.id);
	--Msg2Player( sceneId, selfId, "C�c h� �� h�c ���c "..skill.name..".", MSG2PLAYER_PARA )
	
	--BeginEvent(sceneId)
		--AddText(sceneId, "C�c h� �� h�c ���c "..skill.name..".");
	--EndEvent(sceneId)
	--DispatchMissionTips(sceneId,selfId)
	
	if skill.id == x806016_g_xybl_SkillID then
		x806016_SendSkillMsg_XYBL(sceneId,selfId,skill.name)
	else
		x806016_SendSkillMsg(sceneId,selfId,skill.exp,skill.money,skill.name)
	end
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x806016_MessageBox(sceneId, selfId, targetId, msg)
	BeginEvent(sceneId);
		AddText(sceneId, msg);
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);
end

--ѧϰH�nh �nh B�t Ly c�p 1ʱ����ʾ��Ϣ
function x806016_SendSkillMsg_XYBL(sceneId,selfId,skname)
	if skname then
		local str = format("#IQu� v� ch�ng �ng t�m hi�p l�c, b�i tr� mu�n v�n kh� kh�n, � nh� trai hao ph� #Y#{_ITEM"..tostring(x806016_g_xybl_ItemID).."}#I r�t c�c h�c xong k� n�ng phu th�#Y%s.",skname)
		BeginEvent(sceneId)
			AddText(sceneId, str);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end

--ϵͳ��ʾ��Ϣ
function x806016_SendSkillMsg(sceneId,selfId,exp,money,skname)
	if exp and money and skname then
		local moneyt = format("#{_EXCHG%d}",money)
		local str = format("#IQu� v� ch�ng �ng t�m hi�p l�c, b�i tr� mu�n v�n kh� kh�n, � nh� trai hao ph�  #Y%d kinh nghi�m c�ng %s ti�n t�i #I r�t c�c h�c xong k� n�ng phu th� #Y%s.",exp,moneyt,skname)
		BeginEvent(sceneId)
			AddText(sceneId, str);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end

--������ʾ��Ϣ
function x806016_SendWorldMsg(sceneId,maleId,femaleId,SkillList, nextLevel)
	local skill = SkillList[nextLevel+1]
	
	if maleId and femaleId and skill then
		for _, tempId in x806016_g_MaxMarrySkill_T do
			if tempId == skill.id then
					local uname = format("#{_INFOUSR%s}",GetName(sceneId,maleId))
					local oname = format("#{_INFOUSR%s}",GetName(sceneId,femaleId))
					local str = format("#W%s#I c�ng #W%s#I v� ch�ng �ng t�m, r�t c�c kh� t�n cam lai, h�c xong #cff66cc%s#I, kh�ng h� l� m�u cho c�c c�p phu th�.",uname,oname,skill.name)
					BroadMsgByChatPipe(sceneId, maleId, str, 4)
				return
			end -- end if tempId
		end -- end for
	end -- end if maleId
	
end

--ͳ����Ϣ
function x806016_LogCoupleAction(sceneId,tid1,tid2,SkillList,nextLevel)
	local skill = SkillList[nextLevel+1]
	local logid = COUPLE_LOG_LEVELUPSKILL
	if nextLevel == 0 then logid = COUPLE_LOG_LEARNSKILL end
	
	if skill and logid and COUPLE_LOG_DETAIL[logid] then
		--CPL:���,˵��,GUID1,GUID2,����ID,��������,ʱ��
		local logstr = format("CPL:%d,%s,0x%X,0x%X,%d,%s",
									 				logid,
									 				COUPLE_LOG_DETAIL[logid],
									 				LuaFnGetGUID(sceneId,tid1),
									 				LuaFnGetGUID(sceneId,tid2),
									 				skill.id,
									 				skill.name)
		LogCouple(logstr)
	end
end
