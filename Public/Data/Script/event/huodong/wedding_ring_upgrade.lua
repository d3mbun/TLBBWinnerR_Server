--����ָ��c�p
--Created by zchw
--L�c D߽ng 

--������
--MisDescBegin
--�ű���
x808010_g_ScriptId	= 808010
--Ti�p th�����NPC����
x808010_g_Position_X=47.0185
x808010_g_Position_Z=62.9575
x808010_g_SceneID=0
x808010_g_AccomplishNPC_Name="Nguy�t L�o"

--�����
x808010_g_MissionId			= 1144

--M�c ti�u nhi�m v�npc
x808010_g_Name 					= "Nguy�t L�o"
--�������
x808010_g_MissionKind			= 11
--��ng c�p nhi�m v� 
x808010_g_MissionLevel		= 10000
--��ng����ngTinhӢ����
x808010_g_IfMissionElite	= 0
--������ng���Ѿ����
x808010_g_IsMissionOkFail	= 0		--�������to� � ��0λ

--�����ı�����
x808010_g_MissionName			= "V�nh h�ng to�n gi�i"
--��������
x808010_g_MissionInfo			= ""
--M�c ti�u nhi�m v�
x808010_g_MissionTarget		= "%f"
--δHo�n t�t nhi�m v�to� � npc�Ի�
x808010_g_ContinueInfo		= ""
--Ho�n t�t nhi�m v�npc˵to� � ��
x808010_g_MissionComplete	= ""

x808010_g_StrForePart = 4

--���������ַ�����ʽ��to� � ����
x808010_g_FormatList = {"Th�nh v� ch�ng hai ng߶i t� �i �i tr߾c %s,%s,%s, d�ng h� l� Nguy�t L�o c�p thu th�p m�t �t ti�n linh kh� tr� v�.",}
								
x808010_g_StrList = {
	"V� l��ng s�n  b�ch vi�n th�ch tr�n#{_INFOAIM53,264,6,}",
	"Ki�m c�c ki�m m�n �i�p th�y#{_INFOAIM130,135,7,}",
	"��n Ho�ng H�n h�i c�u ph�t#{_INFOAIM260,260,8,}",
	"K�nh h� Ng�c ��i l�m phong#{_INFOAIM39,261,5,}",
	"Th�i h� V� t� ca ��i#{_INFOAIM160,252,4,}",
	"Tung s�n Giang s�n �a ki�u#{_INFOAIM275,85,3,}",
	"T�y h� Nh�t v�ng h� b�o#{_INFOAIM170,235,30,}",
	"Nh� h�i B�ch kh� l�u tranh#{_INFOAIM260,270,24,}",
	"Nh�n Nam Phong ki�u t�ch chi�u#{_INFOAIM150,250,18,}",
	"Long Tuy�n Phi l�u tr�c h�#{_INFOAIM270,280,31,}",
	"Th߽ng S�n T� th�y ni�n hoa#{_INFOAIM258,73,25,}",
	"Nh�n B�c B�ch l�p thi�n nh�n#{_INFOAIM283,179,19,}",
	"V� Di Y�n t�a nh� ki�u#{_INFOAIM54,182,32,}",
	"Th�ch L�m Phong loan nh�p t�#{_INFOAIM195,53,26,}",
	"Th�o Nguy�n Lang V߽ng th�ch tr�n#{_INFOAIM143,254,20,}",
	"Mai L�nh Mai l�nh ph�t quang#{_INFOAIM284,82,33,}",
	"Ng�c Kh� Thanh mi nh� �u#{_INFOAIM268,116,27,}",
	"Li�u T�y Ngao bao t߽ng h�i#{_INFOAIM277,117,21,}",
	"Nam H�i Thi�n Nam nh�t tr�#{_INFOAIM61,225,34,}",
	"Ho�ng Long Ph� Thi�n tr� tuy�t c�nh#{_INFOAIM289,66,23,}",
}

x808010_g_MaxRound	= 3
--���ƽű�
x808010_g_ControlScript		= 808010

--����������,���ݶ�̬ˢ��,�ֱ�ռ���������to� � ��1λ
x808010_g_Custom	= { {id="�� thu th�p linh kh� ti�n",num=3}}
--MisDescEnd

--��V�nh h�ng to�n gi�i��Ǯ
x808010_g_Price  	= 1000;
--ө���ID
x808010_g_FlashInsect_id = 30501104;
--�¹��«ID
x808010_g_HuLu_id = 40004465;
--V�nh h�ng to�n gi�i��c�pID��Ӧ��
x808010_g_Level2RingId =
{
	[1] = {Lvl = 30, RingId = 10422125},
	[2] = {Lvl = 50, RingId = 10422126},
	[3] = {Lvl = 70, RingId = 10422127},
	[4] = {Lvl = 90, RingId = 10422128},
	[5] = {Lvl = 100, RingId = 10422129},
	[6] = {Lvl = 105, RingId = 10422130},
	[7] = {Lvl = 110, RingId = 10422131},
	[8] = {Lvl = 115, RingId = 10422132},
	[9] = {Lvl = 120, RingId = 10422132}, -- add by zchw TT:41264
}
--V�nh h�ng to�n gi�i��ף����ָID��
x808010_g_RingId_Mapping =
{
	[1] = {10422125, 10422126, 10422127, 10422128, 10422129, 10422130, 10422131, 10422132}, 	--V�nh h�ng to�n gi�i
	[2] = {10422133, 10422134, 10422135, 10422136, 10422137, 10422138, 10422139, 10422140},		--ף����ָ	
}

--������Ϣ��
x808010_g_select_sceneId = 
{
	[1]=  {6, 	"V� l��ng s�n  b�ch vi�n th�ch tr�n", 	53,264, 612},
	[2]=  {7, 	"Ki�m c�c  ki�m m�n �i�p th�y",   	130,135, 711},
	[3]=  {8, 	"��n Ho�ng H�n h�i c�u ph�t",			260,260, 813},
	[4]=  {5, 	"K�nh h� Ng�c ��i l�m phong",			39,261, 513},
	[5]=  {4, 	"Th�i h� V� t� ca ��i",			160,252, 411},
	[6]=  {3, 	"Tung s�n Giang s�n �a ki�u",			275,85, 311},
	[7]=  {30, 	"T�y h� Nh�t v�ng h� b�o",     170,235, 3011},
	[8]=  {24, 	"Nh� h�i B�ch kh� l�u tranh",     260,270, 2411},
	[9]=  {18, 	"Nh�n Nam Phong ki�u t�ch chi�u",     150,250, 1811},
	[10]= {31, 	"Long Tuy�n Phi l�u tr�c h�",     270,280, 3111},
	[11]= {25, 	"Th߽ng S�n T� th�y ni�n hoa",     258,73, 2513},
	[12]= {19, 	"Nh�n B�c B�ch l�p thi�n nh�n",     283,179, 1912},
	[13]= {32, 	"V� Di Y�n t�a nh� ki�u",     54,182, 3211},
	[14]= {26, 	"Th�ch L�m Phong loan nh�p t�",     195,53, 2614},
	[15]= {20, 	"Th�o Nguy�n Lang V߽ng th�ch tr�n",     143,254, 2012},
	[16]= {33, 	"Mai L�nh Mai l�nh ph�t quang",     284,82, 3313},
	[17]= {27, 	"Ng�c Kh� Thanh mi nh� �u",     268,116, 2713},
	[18]= {21, 	"Li�u T�y Ngao bao t߽ng h�i",     277,117, 2113},
	[19]= {34, 	"Nam H�i Thi�n Nam nh�t tr�",     61,225, 3411},
	[20]= {23,	"Ho�ng Long Ph� Thi�n tr� tuy�t c�nh",   289,66, 2313},
}

--��c�p��Ӧ������ȡԴ��Ŀ
x808010_g_level_num =
{
	{min = 30, max = 49, num = 10},
	{min = 50, max = 69, num = 15},
	{min = 70, max = 89, num = 18},
	{min = 90, max = 120, num = 20},
}

--����ʯId
x808010_g_TrueLoveStone_id = 30700204;

--**********************************
--������ں���
--**********************************
function x808010_OnDefaultEvent( sceneId, selfId, targetId )
	local numText = GetNumText();
	--V�nh h�ng to�n gi�i
	if numText == 1 then
		x808010_OnClickTrueLoveRing(sceneId, selfId, targetId);
	--V�nh h�ng to�n gi�i����
	elseif numText == 2 then
		x808010_ReturnDlg(sceneId, selfId, targetId, "#{YHJZ_081007_48}");
	--L�nh V�nh h�ng to�n gi�i
	elseif numText == 11 then
		x808010_GetTrueLoveRing(sceneId, selfId, targetId);
	--��c�pV�nh h�ng to�n gi�i
	elseif numText == 12 then
		x808010_UpgradeTrueLoveRing(sceneId, selfId, targetId);
	--ף��V�nh h�ng to�n gi�i
	elseif numText == 13 then
	 	BeginEvent(sceneId)
			AddText(sceneId, "#{YHJZ_081007_26}");
			AddNumText(sceneId, x808010_g_ScriptId, "Ti�p th�", 6, 131);
			AddNumText(sceneId, x808010_g_ScriptId, "Tr� v�", 6, 132);
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId);
	--Ho�n t�t nhi�m v�,ѡ��"��ngto� � "
	elseif numText == 111 then
		x808010_ConfirmSubmitMission(sceneId, selfId, targetId);
	--X�c nh�n ��c�p���
	elseif numText == 333 then
		x808010_ConfirmUpgrade(sceneId, selfId, targetId);
	--nothing
	elseif numText == 14 or numText == 444 or numText == 222 then
	 	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )	
	--Ti�p th� ף�����
	elseif numText == 131 then
		x808010_BlessRing(sceneId, selfId, targetId);		
	--Tr� v� ף�����
	elseif numText == 132 then
		x808010_ListOption(sceneId, selfId, targetId);
	end
end

--**********************************
--��������ж�
--**********************************
function x808010_IsCoupleMakeTeam(sceneId,selfId,type)
	--1.��ng�����
	local teamId = GetTeamId(sceneId,selfId)
	if teamId<0 then
		if type == 1 then
			return 0, "#{YHJZ_081007_9}";
		elseif type == 2 then
			return 0, "#{YHJZ_081007_14}";
		else
			return 0, "#{YHJZ_081007_27}";
		end
	end	
	--2.��ng������
	if GetTeamSize(sceneId,selfId)~=2 then
		if type == 1 then
			return 0, "#{YHJZ_081007_9}";
		elseif type == 2 then
			return 0, "#{YHJZ_081007_14}";
		else
			return 0, "#{YHJZ_081007_9}";
		end
	end	
	--3.��ng��T�i ����
	if GetNearTeamCount(sceneId,selfId) ~= 2 then
		if type == 1 then
			return 0, "#{YHJZ_081007_9}";
		elseif type == 2 then
			return 0, "#{YHJZ_081007_15}";
		else
			return 0, "#{YHJZ_081007_28}";
		end
	end	
	--4.��ng����ng����
	local tid1 = GetNearTeamMember(sceneId,selfId,0)
	local tid2 = GetNearTeamMember(sceneId,selfId,1)
	if LuaFnIsMarried(sceneId,selfId)<=0 then
		if type == 1 then
			return 0, "#{YHJZ_081007_8}";
		elseif type == 2 then
			return 0, "#{YHJZ_081007_14}"
		else
			return 0, "#{YHJZ_081007_27}";
		end
	else
		if LuaFnGetSpouseGUID(sceneId,tid1) ~= LuaFnGetGUID(sceneId,tid2) or LuaFnGetSpouseGUID(sceneId,tid2) ~= LuaFnGetGUID(sceneId,tid1) then
			if type == 1 then
				return 0, "#{YHJZ_081007_9}";
			elseif type == 2 then
				return 0, "#{YHJZ_081007_14}";
			else
				return 0, "#{YHJZ_081007_27}";
			end
		end
	end	
	--ok
	return 1, "ok";
end

--**********************************
--�о�ѡ��
--**********************************
function x808010_ListOption(sceneId, selfId, targetId)
	BeginEvent(sceneId)
		AddText(sceneId, "#{YHJZ_081007_3}")
		AddNumText(sceneId, x808010_g_ScriptId, "#{YHJZ_081007_4}", 1, 11); 			--��ҪL�nh V�nh h�ng to�n gi�i
		AddNumText(sceneId, x808010_g_ScriptId, "#{YHJZ_081007_5}", 1, 12); 			--������c�pV�nh h�ng to�n gi�i
		AddNumText(sceneId, x808010_g_ScriptId, "#{YHJZ_081007_6}", 1, 13); 			--����ף��V�nh h�ng to�n gi�i
		AddNumText(sceneId, x808010_g_ScriptId, "#{YHJZ_081007_7}", 9, 14);	  		--��ûʲô��...
	EndEvent()
	DispatchEventList(sceneId, selfId, targetId);
end

--**********************************
--�о��¼�
--**********************************
function x808010_OnEnumerate( sceneId, selfId, targetId )
	AddNumText(sceneId, x808010_g_ScriptId, "#{YHJZ_081007_1}", 6, 1);				--V�nh h�ng to�n gi�i
	AddNumText(sceneId, x808010_g_ScriptId, "#{YHJZ_081007_2}", 11, 2);				--����V�nh h�ng to�n gi�i
end

--**********************************
--���Ti�p th�����
--**********************************
function x808010_CheckAccept( sceneId, selfId, type )
  if type == 1 then 		--L�nh 
  	--��c�p�ﵽ30?
  	if GetLevel(sceneId, selfId) < 30 then
  		return 0, "#{YHJZ_081007_47}";
  	end
		--����2�����?
		local ret, msg = x808010_IsCoupleMakeTeam(sceneId, selfId, 1);
		if ret == 0 then
			return 0, msg;
		end
	 	--��V�nh h�ng to�n gi�i or ף�����?
	 	for i=1, 2 do
	 		for j, subTab in x808010_g_RingId_Mapping[i] do
		 		if LuaFnGetItemCount(sceneId, selfId, subTab) >= 1 then
		 			return 0, "#{YHJZ_081007_10}";
		 		end
	 		end
	 	end
	 	--��10��?
	 	if GetMoney(sceneId, selfId) < x808010_g_Price then
	 		return 0, "#{YHJZ_081007_11}";
	 	end
	 	--����� ��o c� �� �y���?
	 	if LuaFnGetPropertyBagSpace(sceneId, selfId) < 1 then
	 		return 0, "#{YHJZ_081007_12}"
	 	end
	 	--���ͨ��
	 	return 1, "ok";
	elseif type == 2 then  --��c�p
		--����2�����?
		local ret, msg = x808010_IsCoupleMakeTeam(sceneId, selfId, 2);
		if ret == 0 then
			return 0, msg;
		end	
	 	--��40ֻө���
	 	if LuaFnGetAvailableItemCount(sceneId, selfId, x808010_g_FlashInsect_id) < 40 then
	 		return 0, "#{YHJZ_081007_16}";
	 	end
	 	--�ﵽ30c�p?
	 	if GetLevel(sceneId, selfId) < 30 then
	 		return 0, "#{YHJZ_081007_17}";
	 	end
	 	--װ����V�nh h�ng to�n gi�i?
	 	local ringCount = 0;
	 	local ringAvailCount = 0;
	 	local tempRingId = 0;
	 	local tempIndex = 0;
	 	
	 	for i=1, 2 do
	 		for j, Ring_Id in x808010_g_RingId_Mapping[i] do
		 		ringCount = ringCount + LuaFnGetItemCount(sceneId, selfId, Ring_Id);
		 		local num = LuaFnGetAvailableItemCount(sceneId, selfId, Ring_Id);
		 		if num > 0 then
		 			ringAvailCount = ringAvailCount + num;
		 			tempRingId = Ring_Id;
		 			tempIndex = j;
		 		end	 			
	 		end
	 	end

	 	if ringCount < 1 then 							--�޽�ָ
	 		return 0, "#{YHJZ_081007_19}";
	 	end
		if ringAvailCount < ringCount then	--װ���� or ������
			return 0, "#{YHJZ_081007_18}";
		end		
	 	--���Ψm�t ?
		if ringAvailCount > 1 then
			return 0, "#{YHJZ_081007_20}";
		end
	 	--������?
	 	local bagPos = GetBagPosByItemSn(sceneId, selfId, tempRingId);
	 	local _, name = LuaFnGetItemCreator(sceneId, selfId, bagPos);
	 	local spouseGuid = LuaFnGetSpouseGUID(sceneId, selfId);
	 	local spouseObjid = LuaFnGuid2ObjId(sceneId, spouseGuid);
	 	local spouseName = GetName(sceneId, spouseObjid);
	 	if name ~= spouseName then
	 		return 0, "#{YHJZ_081007_21}";
	 	end
	 	--���иõ�c�p��ָ?
	 	local myLvl = GetLevel(sceneId, selfId);
	 	local index = x808010_GetTblIdx(myLvl);
	 	if tempIndex == index then
	 		local msg = format("#{YHJZ_081007_22}%d#{YHJZ_081007_23}", x808010_g_Level2RingId[index+1].Lvl);
	 		return 0, msg;
	 	end
	 	--����� ��o c� �� �y���?
	 	if LuaFnGetPropertyBagSpace(sceneId, selfId) < 1 then
	 		return 0, "#{YHJZ_081007_24}";
	 	end
	 	--���ͨ��
	 	return 1, "OK";
	elseif type == 3 then		--ף��
		--�������?
		local ret, msg = x808010_IsCoupleMakeTeam(sceneId, selfId, 3);
		if ret == 0 then
			return 0, msg;
		end
		--�����ng���������ָ?
		local ret_Ring_id = 0;
		local sum = 0;
		local sumAvail = 0;
		for i=1, 2 do
			for j, Ring_Id in x808010_g_RingId_Mapping[i] do
				sum = sum + GetItemCount(sceneId, selfId, Ring_Id);
				local count = LuaFnGetAvailableItemCount(sceneId, selfId, Ring_Id);
				if count > 0 then
					ret_Ring_id = Ring_Id;
					sumAvail = sumAvail + count;
				end
			end				
		end
		if sum == 0 then
			return 0, "#{YHJZ_081007_29}"
		end
		--��� ����?
		if sum > sumAvail then
			return 0, "#{YHJZ_081007_18}";
		end
		--Ψm�t ?
		if sumAvail > 1 then
			return 0, "#{YHJZ_081007_20}";
		end
		--��ng��ף����?
		for i, Ring_Id in x808010_g_RingId_Mapping[2] do
			if ret_Ring_id == Ring_Id then
				return 0, "#{YHJZ_081103_1}";
			end
		end
		--���������ʯ?
		if LuaFnGetAvailableItemCount(sceneId, selfId, x808010_g_TrueLoveStone_id) < 1 then
			return 0, "#{YHJZ_081007_30}";
		end
		--ok
		return 1, ret_Ring_id;
	end
end

--**********************************
--ȡ �i�m��ҵ�c�p��Ӧ��x808010_g_Level2RingIdto� � ����
--**********************************
function x808010_GetTblIdx( level )
	for i, record in x808010_g_Level2RingId do
		if level >= record["Lvl"] and level < x808010_g_Level2RingId[i+1]["Lvl"] then
			return i;
		end
	end
	return 0;
end

--**********************************
--�����ng������ύ
--**********************************
function x808010_CheckSubmit( sceneId, selfId )
	--������� T�i ���� 
	
	--1.��ng�����
	local teamId = GetTeamId(sceneId,selfId)
	if teamId<0 then
		return 0, "#{YHJZ_081007_27}";
	end	
	--2.��ng������
	if GetTeamSize(sceneId,selfId)~=2 then
		return 0, "#{YHJZ_081007_27}";
	end	
	--3.��ng��T�i ����
	if GetNearTeamCount(sceneId,selfId) ~= 2 then
		return 0, "#{YHJZ_081007_28}";
	end	
	--4.��ng����ng����
	local tid1 = GetNearTeamMember(sceneId,selfId,0)
	local tid2 = GetNearTeamMember(sceneId,selfId,1)
	if LuaFnIsMarried(sceneId,selfId)<=0 then
			return 0, "#{YHJZ_081007_27}";
	else
		if LuaFnGetSpouseGUID(sceneId,tid1) ~= LuaFnGetGUID(sceneId,tid2) or LuaFnGetSpouseGUID(sceneId,tid2) ~= LuaFnGetGUID(sceneId,tid1) then
				return 0, "#{YHJZ_081007_27}";
		end
	end	
		
 	local ringCount = 0;
 	local ringAvailCount = 0;
 	local tempRingId = 0;
	
	for i=1, 2 do
	 	for j, Ring_id in x808010_g_RingId_Mapping[i] do
	 		local count = LuaFnGetItemCount(sceneId, selfId, Ring_id);
	 		if count > 0 then
	 			ringCount = ringCount + count;
	 		end
	 		local num = LuaFnGetAvailableItemCount(sceneId, selfId, Ring_id);
	 		if num > 0 then
	 			ringAvailCount = ringAvailCount + num;
	 			tempRingId = Ring_id;
	 		end
	 	end
	end

 	if ringCount < 1 then 							--��V�nh h�ng to�n gi�i
 		return 0, "#{YHJZ_081007_40}";
 	end
 	if ringCount ~= 1 then 							--���Ψm�t 
 		return 0, "#{YHJZ_081007_20}";
 	end
	if ringAvailCount < ringCount then	--װ�� or ����
		return 0, "#{YHJZ_081007_18}";
	end		
 	--������?
 	local bagPos = GetBagPosByItemSn(sceneId, selfId, tempRingId);
 	local _, name = LuaFnGetItemCreator(sceneId, selfId, bagPos);
 	local spouseGuid = LuaFnGetSpouseGUID(sceneId, selfId);
 	local spouseObjid = LuaFnGuid2ObjId(sceneId, spouseGuid);
 	local spouseName = GetName(sceneId, spouseObjid);
 	if name ~= spouseName then
 		return 0, "#{YHJZ_081007_21}";
 	end
 	return 1, tempRingId;
end

--**********************************
--�ύ
--**********************************
function x808010_OnSubmit( sceneId, selfId, targetId, selectRadioId )

end

--**********************************
--X�c nh�nHo�n t�t nhi�m v�
--**********************************
function x808010_ConfirmSubmitMission(sceneId, selfId, targetId)
	local ret, msg = x808010_CheckSubmit(sceneId, selfId);
	if ret == 0 then
		x808010_ReturnDlg(sceneId, selfId, targetId, msg);
		return 		
	end
	local bFlag = 0;
	--ף�� ��ʾ
	for i, RingId in x808010_g_RingId_Mapping[2] do
		if msg == RingId then
			bFlag = 1;
		end
	end
	--��� ���� ǿ�� ��ʾ
	local bagPos = GetBagPosByItemSn(sceneId, selfId, msg);
	if bagPos >= 0 then
		if GetGemEmbededCount(sceneId, selfId, bagPos) > 0 or
				LuaFnIsMarkOrEnhance(sceneId, selfId, bagPos, 1) > 0 or
				LuaFnIsMarkOrEnhance(sceneId, selfId, bagPos, 2) > 0 then
			bFlag = 1;
		end
	end
	
	if bFlag == 1 then
		BeginEvent(sceneId)
			AddText(sceneId, "#{YHJZ_081007_41}");
			AddNumText(sceneId, x808010_g_ScriptId, "#{INTERFACE_XML_557}", 6, 333);
			AddNumText(sceneId, x808010_g_ScriptId, "#{INTERFACE_XML_542}", 6, 444);
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId)	
		return
	end	
	x808010_ConfirmUpgrade(sceneId, selfId, targetId);
end

--**********************************
--Tr� v��Ի�
--**********************************
function x808010_ReturnDlg(sceneId, selfId, targetId, msg)
	BeginEvent(sceneId)
		AddText(sceneId, msg);
	EndEvent()
	DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ReturnTips
--**********************************
function x808010_Tips(sceneId, selfId, msg)
	BeginEvent(sceneId)
		AddText(sceneId, msg);
	EndEvent()
	DispatchMissionTips(sceneId, selfId)
end

--**********************************
--L�nh V�nh h�ng to�n gi�i
--**********************************
function x808010_GetTrueLoveRing(sceneId, selfId, targetId)
	local ret, msg = x808010_CheckAccept(sceneId, selfId, 1) ;
	--���th�t b�i
	if ret == 0 then
		x808010_ReturnDlg(sceneId, selfId, targetId, msg);
		return 		
	end
	--ͨ��		
	if CostMoney(sceneId, selfId, x808010_g_Price) == -1 then
		return
	end
	--�����c�p�����ָ
	local bagPos = TryRecieveItem( sceneId, selfId, x808010_g_Level2RingId[1].RingId, QUALITY_MUST_BE_CHANGE);
	if bagPos == -1 then
		return
	end
	--��T�n
	local spouseGuid = LuaFnGetSpouseGUID(sceneId, selfId);
	local spouseObjId = LuaFnGuid2ObjId(sceneId, spouseGuid);
	local spouseName = GetName(sceneId, spouseObjId);
	LuaFnSetItemCreator(sceneId, selfId, bagPos, spouseName);
	--ͳ��
	AuditUpgradeRing(sceneId, selfId, x808010_g_Level2RingId[1].RingId, 1);
 	--��ʾ��Ϣ
 	x808010_ReturnDlg(sceneId, selfId, targetId, "#{YHJZ_081007_13}"); 	
 	
end

--**********************************
--X�c nh�n��c�pV�nh h�ng to�n gi�i
--**********************************
function x808010_ConfirmUpgrade(sceneId, selfId, targetId)
	--�ٴ��ж�
	local ret, msg = x808010_CheckSubmit(sceneId, selfId); --�ɹ�Tr� v�1, ��ָid�� th�t b�iTr� v�0, ��Ϣ
	if ret == 0 then
		x808010_ReturnDlg(sceneId, selfId, targetId, msg);
		return 		
	end	
	--�۳���«
	if LuaFnDelAvailableItem(sceneId, selfId, x808010_g_HuLu_id, 1) == 0 then
		return
	end
	--�۳��ɽ�ָ
	LuaFnDelAvailableItem(sceneId, selfId, msg, 1);
	--������ҵ�c�p�����ָid	
	local index = x808010_GetTblIdx( GetLevel(sceneId, selfId) )
	if index == 0 then 
		return
	end
	-- �i�m�½�ָ
	local bagPos = TryRecieveItem( sceneId, selfId, x808010_g_Level2RingId[index]["RingId"], QUALITY_MUST_BE_CHANGE);
	--����T�n
	local spouseGuid = LuaFnGetSpouseGUID(sceneId, selfId);
	local spouseObjId = LuaFnGuid2ObjId(sceneId, spouseGuid);
	local spouseName = GetName(sceneId, spouseObjId);
	LuaFnSetItemCreator(sceneId, selfId, bagPos, spouseName);	
	--ɾ������
  if IsHaveMission(sceneId, selfId, x808010_g_MissionId) == 1 then  	
  	DelMission( sceneId, selfId, x808010_g_MissionId );
  end	
  --ͳ��
  AuditUpgradeRing(sceneId, selfId, x808010_g_Level2RingId[index]["RingId"], 2);
	--Tr� v���Ϣ
	x808010_ReturnDlg(sceneId, selfId, targetId, "#{YHJZ_081007_42}");
	--tips
	x808010_Tips(sceneId, selfId, "#{YHJZ_081007_43}");
	--���Ź���
	local myName = GetName(sceneId, selfId);
	local sTran	= GetBagItemTransfer( sceneId, selfId, bagPos );
	local str = format("#{_INFOUSR%s}#{YHJZ_081007_44}#{_INFOUSR%s}#{YHJZ_081007_45}#{_INFOMSG%s}#{YHJZ_081007_46}", myName, spouseName, sTran);
	AddGlobalCountNews(sceneId, str);
end

--**********************************
--ף�����
--**********************************
function x808010_BlessRing(sceneId, selfId, targetId)
	local ret, msg = x808010_CheckAccept(sceneId, selfId, 3);
	if ret == 0 then
		x808010_ReturnDlg(sceneId, selfId, targetId, msg);
		return
	end 
	--ͨ�����,����Ʒ
	if LuaFnDelAvailableItem(sceneId, selfId, msg, 1) == 0 then			--���ɹ�msgTr� v���ָId
		x808010_Tips(sceneId, selfId, "Kh�u tr� v�nh h�ng to�n gi�i th�t b�i!");
	  return
	end	
	local stone_pos = GetBagPosByItemSn(sceneId, selfId, x808010_g_TrueLoveStone_id);
	local stone_sTran	= GetBagItemTransfer( sceneId, selfId, stone_pos );
	if LuaFnDelAvailableItem(sceneId, selfId, x808010_g_TrueLoveStone_id, 1) == 0 then
		x808010_Tips(sceneId, selfId, "Kh�u tr� ch�n t�m th�ch th�t b�i!");
	  return
	end	
	--��ף����ָ
	local index = 0;
	for i, subTab in x808010_g_RingId_Mapping[1] do
		if subTab == msg then
			index = i;
			break;
		end
	end
	if index == 0 then
		return
	end
	local bagPos = TryRecieveItem( sceneId, selfId, x808010_g_RingId_Mapping[2][index], QUALITY_MUST_BE_CHANGE);
	if bagPos == -1 then
		x808010_Tips(sceneId, selfId, "C�p ch�c ph�c to�n gi�i th�t b�i!");		
		return
	end
	--��T�n
	local spouseGuid = LuaFnGetSpouseGUID(sceneId, selfId);
	local spouseObjId = LuaFnGuid2ObjId(sceneId, spouseGuid);
	local spouseName = GetName(sceneId, spouseObjId);
	LuaFnSetItemCreator(sceneId, selfId, bagPos, spouseName);	
	--ͳ��
	AuditUpgradeRing(sceneId, selfId, x808010_g_RingId_Mapping[2][index], 3);	
	x808010_Tips(sceneId, selfId, "Ch�c ph�c th�nh c�ng!");

	local blessRing_sTran	= GetBagItemTransfer( sceneId, selfId, bagPos );
	local myName = GetName(sceneId, selfId);
	local msg = format("#{_INFOUSR%s}#{JZSJ_1}#{_INFOMSG%s}#{JZSJ_2}#{_INFOMSG%s}#{JZSJ_3}", myName, stone_sTran, blessRing_sTran);
	AddGlobalCountNews(sceneId, msg);
	--�رնԻ���	
	BeginUICommand( sceneId )
	UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )	
end

--**********************************
--��c�pV�nh h�ng to�n gi�i
--**********************************
function x808010_UpgradeTrueLoveRing(sceneId, selfId, targetId)
 	local ret, msg = x808010_CheckAccept(sceneId, selfId, 2) ;
	--���th�t b�i
	if ret == 0 then
		x808010_ReturnDlg(sceneId, selfId, targetId, msg);
		return 		
	end	 
	--����ѡ��
	local i, j, k = x808010_SelectScene( GetLevel(sceneId, selfId) );
	if i == -1 then
		x808010_ReturnDlg(sceneId, selfId, targetId, "L�m l�i!");
		return 		
	end		
	if IsMissionFull(sceneId, selfId) == 1 then
		x808010_ReturnDlg(sceneId, selfId, targetId, "Nhi�m v� qu� h�n!");
		return
	end
	--�������
	AddMission( sceneId,selfId, x808010_g_MissionId, x808010_g_ScriptId, 0, 1, 0 );
	--��¼����
	local misIndex = GetMissionIndexByID(sceneId, selfId, x808010_g_MissionId);
	
	SetMissionByIndex(sceneId, selfId, misIndex, 4, 0);  --��x808010_g_FormatList��m�t ��
	
	SetMissionByIndex(sceneId, selfId, misIndex, 5, i-1);
	SetMissionByIndex(sceneId, selfId, misIndex, 6, j-1);
	SetMissionByIndex(sceneId, selfId, misIndex, 7, k-1);
	
	--��ө���
	LuaFnDelAvailableItem(sceneId, selfId, x808010_g_FlashInsect_id, 40);
	--����«
	TryRecieveItem( sceneId, selfId, x808010_g_HuLu_id, QUALITY_MUST_BE_CHANGE);
	--Tr� v��Ի�
	local text = format("#{YHJZ_081007_25}%s,%s,%s", x808010_g_StrList[i], x808010_g_StrList[j], x808010_g_StrList[k]);
	x808010_ReturnDlg(sceneId, selfId, targetId, text);
end

--**********************************
--������ȡ
--**********************************
function x808010_SelectScene(level)
	local num = 0;
	for i, subTab in x808010_g_level_num do
		if level >= subTab.min and level <= subTab.max then
			num = subTab.num;
			break;
		end
	end
	local i = 0; 
	local j = 0; 
	local k = 0;
	--û�ҵ���c�p��Ӧto� � ����Դ��Ŀ
	if num == 0 then
		return -1, -1, -1;
	end
	-- �i�m����m�t c�i����
	local temp = mod( floor(random(100000)), num )+1;
	i = temp;
	-- �i�m���ڶ�c�i����
	while 1 do
		temp =  mod( floor(random(100000)), num )+1;
		if temp ~= i then
			j = temp;
			break;
		end
	end
	-- �i�m������c�i����
	while 1 do
		temp =  mod( floor(random(100000)), num )+1;
		if temp ~= i and temp ~= j then
			k = temp;
			break;
		end
	end	
	return i, j, k;
end

--**********************************
-- �i�m��V�nh h�ng to�n gi�i
--**********************************
function x808010_OnClickTrueLoveRing(sceneId, selfId, targetId)
	if IsHaveMission(sceneId, selfId, x808010_g_MissionId) == 1 then
		local misIndex = GetMissionIndexByID(sceneId, selfId, x808010_g_MissionId);
		if GetMissionParam(sceneId, selfId, misIndex, 0) == 0 then
			x808010_ReturnDlg(sceneId, selfId, targetId, "#{YHJZ_081007_36}");
			return 
		else
			BeginEvent(sceneId)
				AddText(sceneId, "#{YHJZ_081007_37}")
				AddNumText(sceneId, x808010_g_ScriptId, "#{YHJZ_081007_38}", 6, 111);	--��ngto� � 
				AddNumText(sceneId, x808010_g_ScriptId, "#{YHJZ_081007_39}", 6, 222); --Ch�a chu�n b� t�t...
			EndEvent()
			DispatchEventList(sceneId, selfId, targetId);
			return
		end
	else
		x808010_ListOption(sceneId, selfId, targetId);
	end
end

--**********************************
--����
--**********************************
function x808010_OnAbandon( sceneId, selfId )
  if IsHaveMission(sceneId, selfId, x808010_g_MissionId) == 1 then  	
  	--�۳�Nguy�t L�o��«
  	local num = LuaFnGetItemCount(sceneId, selfId, x808010_g_HuLu_id);
  	local availNum = LuaFnGetAvailableItemCount(sceneId, selfId, x808010_g_HuLu_id)
  	if availNum < num then
  		x808010_Tips(sceneId, selfId, "Th�nh gi�i kh�a h� l� Nguy�t L�o!")
  		return
  	end
  	if availNum > 0 then
  		LuaFnDelAvailableItem(sceneId, selfId, x808010_g_HuLu_id, availNum);
  	end
  	--ɾ������
  	DelMission( sceneId, selfId, x808010_g_MissionId );
  end
end

--**********************************
--ɱ����������
--**********************************
function x808010_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x808010_OnEnterArea( sceneId, selfId, zoneId )
	
	if IsHaveMission( sceneId, selfId, x808010_g_MissionId ) <= 0 then
		return 0;
	end
	local misIndex = GetMissionIndexByID(sceneId,selfId,x808010_g_MissionId)	
	local order = {};
	order[1] = GetMissionParam(sceneId, selfId, misIndex, 5)+1;
	order[2] = GetMissionParam(sceneId, selfId, misIndex, 6)+1;
	order[3] = GetMissionParam(sceneId, selfId, misIndex, 7)+1;
	local bCompleted = GetMissionParam(sceneId, selfId, misIndex, 0);
	local place1 = GetMissionParam(sceneId, selfId, misIndex, 2); --2,3�������ڼ�¼�ռ�������to� � ������
	local place2 = GetMissionParam(sceneId, selfId, misIndex, 3);
	local bFlag = 0;	
	for i=1, 3 do
		if sceneId == x808010_g_select_sceneId[order[i]][1] and zoneId == x808010_g_select_sceneId[order[i]][5] 
			 and place1 ~= sceneId and place2 ~= sceneId and bCompleted ~= 1 then
			bFlag = order[i];
		end		
	end	
	if bFlag == 0 then	
		return 0;
	end	
	local nposX = random(3)
	local nposY = random(3)
	CreateSpecialObjByDataIndex(sceneId, selfId, 67, x808010_g_select_sceneId[bFlag][3]+nposX, x808010_g_select_sceneId[bFlag][4]+nposY, 0)
end

--**********************************
--���߸ı�
--**********************************
function x808010_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--Ti�p th�
--**********************************
function x808010_OnAccept( sceneId, selfId )
	--������������б�
	AddMission( sceneId,selfId, x808010_g_MissionId, x808010_g_ScriptId, 0, 0, 0 )
end

--**********************************
--����
--**********************************
function x808010_OnContinue( sceneId, selfId, targetId )

end

