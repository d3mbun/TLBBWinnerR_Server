-- Th�nh ph� ����֮�о��������¼��ű�
-- �ű���
x600040_g_ScriptId = 600040

-- �����
x600040_g_MissionId = 1113

-- M�c ti�u nhi�m v�npc
x600040_g_Name = "Tr�nh V� Danh"

-- �����ı�����
x600040_g_MissionName = "Nghi�n c�u nhi�m v�"
x600040_g_MissionInfo = "N�i ch�nh th�nh th� - nhi�m v� nghi�n c�u"			--��������
x600040_g_NoMissionInfo = "    Trong bang h�nh nh� kh�ng c� nghi�n c�u c�i g�. "	--��T�i �о�ʱ��ʾ
x600040_g_MissionTarget = "Ho�n th�nh nhi�m v� bang h�i ��i Ch� Qu�n"		--M�c ti�u nhi�m v�
x600040_g_ContinueInfo = "    Nhi�m v� c�a c�c h� v�n ch�a ho�n th�nh �?"	--δHo�n t�t nhi�m v�to� � npc�Ի�
x600040_g_MissionComplete = "C�m �n c�c h� nhi�u"				--Ho�n t�t nhi�m v�npc˵to� � ��

x600040_g_MissionParam_SubId = 1

-- ͨ��Th�nh ph� ����ű�
x600040_g_CityMissionScript = 600001

-- �������
x600040_g_SubMissionScriptList = { 600041, 600042, 600043 }

-- ������
x600040_g_ItemAwardIndexOffset = 30						-- ��Ʒ������T�i �����to� � ��ƫ��
x600040_g_MissionRound = MD_CITY_RESEARCH_ROUND			-- Th�nh ph� �����о�����
x600040_g_MissionAbandonTime = MD_CITY_RESEARCH_TIME	-- Th�nh ph� �����о������������to� � ʱ��
x600040_g_ContribType = GUILD_CONTRIB_POINT				-- ��ṱ�׶�
x600040_g_CityProcess = 1								-- 0:�о�,1:�о�

--**********************************
--������ں���
--**********************************
function x600040_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	if GetName( sceneId, targetId ) ~= x600040_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	if CityInBuildingResearch( sceneId, selfId, sceneId ) ~= 1 then
		x600040_NotifyFailBox( sceneId, selfId, targetId, x600040_g_NoMissionInfo )
		return
	end

	local rand = random( getn(x600040_g_SubMissionScriptList) )
	CallScriptFunction( x600040_g_CityMissionScript, "DoDefaultEvent", sceneId, selfId, targetId, x600040_g_MissionId, x600040_g_SubMissionScriptList[rand] )
end

--**********************************
--�о��¼�
--**********************************
function x600040_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600040_g_Name then								--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	--����ѽ������Th�a m�n�����������,���г�����
	if IsHaveMission( sceneId, selfId, x600040_g_MissionId ) > 0 then
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600040_g_MissionId )
		local subMissionScriptId = GetMissionParam( sceneId, selfId, misIndex, x600040_g_MissionParam_SubId )

		CallScriptFunction( subMissionScriptId, "OnEnumerate", sceneId, selfId, targetId )
	elseif x600040_CheckAccept( sceneId, selfId ) > 0 then
		AddNumText( sceneId, x600040_g_ScriptId, x600040_g_MissionName,4,-1 )
	end
end

--**********************************
--���Ti�p th�����,Ҳ�����������
--**********************************
function x600040_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600040_g_CityMissionScript, "DoCheckAccept", sceneId, selfId, x600040_g_MissionId, x600040_g_MissionAbandonTime )
	return ret
end

--**********************************
--Ti�p th�,����������������ù�������
--**********************************
function x600040_OnAccept( sceneId, selfId, targetId, scriptId )
	if GetName( sceneId, targetId ) ~= x600040_g_Name then								--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	CallScriptFunction( x600040_g_CityMissionScript, "DoAccept", sceneId, selfId, scriptId, x600040_g_MissionId, x600040_g_MissionRound )
end

--**********************************
--����,�������������
--**********************************
function x600040_OnAbandon( sceneId, selfId )
	CallScriptFunction( x600040_g_CityMissionScript, "DoAbandon", sceneId, selfId, x600040_g_MissionId, x600040_g_MissionAbandonTime, x600040_g_MissionRound )
end

--**********************************
--����
--**********************************
function x600040_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--�����ng������ύ
--**********************************
function x600040_CheckSubmit( sceneId, selfId )
	local ret = CallScriptFunction( x600040_g_CityMissionScript, "DoCheckSubmit", sceneId, selfId, x600040_g_MissionId )
	return ret
end

--**********************************
--�ύ,�������������
--**********************************
function x600040_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x600040_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600040_g_CityMissionScript, "DoSubmit", sceneId, selfId, x600040_g_MissionId, x600040_g_MissionRound )

		-- ��c�p�о�
		CityIncProgress( sceneId, selfId, sceneId, x600040_g_CityProcess )

		-- Kinh nghi�m����
		local ExpBonus = CallScriptFunction( x600040_g_CityMissionScript, "CalcExpBonus", sceneId, selfId, x600040_g_MissionRound )
		AddExp( sceneId, selfId, ExpBonus )

		-- ��ṱ�׶Ƚ���
		if selectRadioId ~= 99999 then
			local ContribBonus = CallScriptFunction( x600040_g_CityMissionScript, "CalcContribBonus", sceneId, selfId, x600040_g_MissionRound )
			if ContribBonus > 0 then
				CityChangeAttr( sceneId, selfId, x600040_g_ContribType, ContribBonus )
			end
		end

		-- ��Ʒ����
		CallScriptFunction( x600040_g_CityMissionScript, "RandomItemAward", sceneId, selfId,
			x600040_g_MissionRound, x600040_g_ItemAwardIndexOffset )

		-- ͳ����Ϣ
		LuaFnAuditQuest(sceneId, selfId, x600040_g_MissionName)
	end
end

--**********************************
-- �ж�ĳc�i�¼�����ng���T�i �ڵ�ǰ�¼��б�
--**********************************
function x600040_IsInEventList( sceneId, selfId, eventId )
	local i = 1
	local findId = 0

	for i, findId in x600040_g_SubMissionScriptList do
		if eventId == findId then
			return 1
		end
	end

	return 0
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x600040_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
