-- Th�nh ph� ����֮�����������¼��ű�
-- �ű���
x600035_g_ScriptId = 600035

-- �����
x600035_g_MissionId = 1111

-- M�c ti�u nhi�m v�npc
x600035_g_Name = "Tr�nh V� Danh"

-- �����ı�����
x600035_g_MissionName = "X�y d�ng nhi�m v�"
x600035_g_MissionInfo = "N�i ch�nh th�nh th� - Nhi�m v� x�y d�ng"			--��������
x600035_g_NoMissionInfo = "    Trong bang h�nh nh� kh�ng c� x�y d�ng c�i g�. "	--��T�i ����ʱ��ʾ
x600035_g_MissionTarget = "Ho�n th�nh nhi�m v� bang h�i ��i Ch� Qu�n"		--M�c ti�u nhi�m v�
x600035_g_ContinueInfo = "    Nhi�m v� c�a c�c h� v�n ch�a ho�n th�nh �?"	--δHo�n t�t nhi�m v�to� � npc�Ի�
x600035_g_MissionComplete = "C�m �n c�c h� nhi�u"				--Ho�n t�t nhi�m v�npc˵to� � ��

x600035_g_MissionParam_SubId = 1

-- ͨ��Th�nh ph� ����ű�
x600035_g_CityMissionScript = 600001

-- �������
x600035_g_SubMissionScriptList = { 600036, 600038, 600039 }

-- ������
x600035_g_ItemAwardIndexOffset = 29						-- ��Ʒ������T�i �����to� � ��ƫ��
x600035_g_MissionRound = MD_CITY_CONSTRUCT_ROUND		-- Th�nh ph� ������������
x600035_g_MissionAbandonTime = MD_CITY_CONSTRUCT_TIME	-- Th�nh ph� �������������������to� � ʱ��
x600035_g_ContribType = GUILD_CONTRIB_POINT				-- ��ṱ�׶�
x600035_g_CityProcess = 0								-- 0:����,1:�о�

--**********************************
--������ں���
--**********************************
function x600035_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	if GetName( sceneId, targetId ) ~= x600035_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	if CityInBuildingLevelUp( sceneId, selfId, sceneId ) ~= 1 then
		x600035_NotifyFailBox( sceneId, selfId, targetId, x600035_g_NoMissionInfo )
		return
	end

	local rand = random( getn(x600035_g_SubMissionScriptList) )
	CallScriptFunction( x600035_g_CityMissionScript, "DoDefaultEvent", sceneId, selfId, targetId, x600035_g_MissionId, x600035_g_SubMissionScriptList[rand] )
end

--**********************************
--�о��¼�
--**********************************
function x600035_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600035_g_Name then								--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	--����ѽ������Th�a m�n�����������,���г�����
	if IsHaveMission( sceneId, selfId, x600035_g_MissionId ) > 0 then
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600035_g_MissionId )
		local subMissionScriptId = GetMissionParam( sceneId, selfId, misIndex, x600035_g_MissionParam_SubId )

		CallScriptFunction( subMissionScriptId, "OnEnumerate", sceneId, selfId, targetId )
	elseif x600035_CheckAccept( sceneId, selfId ) > 0 then
		AddNumText( sceneId, x600035_g_ScriptId, x600035_g_MissionName,4,-1 )
	end
end

--**********************************
--���Ti�p th�����,Ҳ�����������
--**********************************
function x600035_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600035_g_CityMissionScript, "DoCheckAccept", sceneId, selfId, x600035_g_MissionId, x600035_g_MissionAbandonTime )
	return ret
end

--**********************************
--Ti�p th�,����������������ù�������
--**********************************
function x600035_OnAccept( sceneId, selfId, targetId, scriptId )
	if GetName( sceneId, targetId ) ~= x600035_g_Name then								--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	CallScriptFunction( x600035_g_CityMissionScript, "DoAccept", sceneId, selfId, scriptId, x600035_g_MissionId, x600035_g_MissionRound )
end

--**********************************
--����,�������������
--**********************************
function x600035_OnAbandon( sceneId, selfId )
	CallScriptFunction( x600035_g_CityMissionScript, "DoAbandon", sceneId, selfId, x600035_g_MissionId, x600035_g_MissionAbandonTime, x600035_g_MissionRound )
end

--**********************************
--����
--**********************************
function x600035_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--�����ng������ύ
--**********************************
function x600035_CheckSubmit( sceneId, selfId )
	local ret = CallScriptFunction( x600035_g_CityMissionScript, "DoCheckSubmit", sceneId, selfId, x600035_g_MissionId )
	return ret
end

--**********************************
--�ύ,�������������
--**********************************
function x600035_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x600035_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600035_g_CityMissionScript, "DoSubmit", sceneId, selfId, x600035_g_MissionId, x600035_g_MissionRound )

		-- ��c�p����
		CityIncProgress( sceneId, selfId, sceneId, x600035_g_CityProcess )

		-- Kinh nghi�m����
		local ExpBonus = CallScriptFunction( x600035_g_CityMissionScript, "CalcExpBonus", sceneId, selfId, x600035_g_MissionRound )
		AddExp( sceneId, selfId, ExpBonus )

		-- ��ṱ�׶Ƚ���
		if selectRadioId ~= 99999 then
			local ContribBonus = CallScriptFunction( x600035_g_CityMissionScript, "CalcContribBonus", sceneId, selfId, x600035_g_MissionRound )
			if ContribBonus > 0 then
				CityChangeAttr( sceneId, selfId, x600035_g_ContribType, ContribBonus )
			end
		end
		-- ��Ʒ����
		CallScriptFunction( x600035_g_CityMissionScript, "RandomItemAward", sceneId, selfId, x600035_g_MissionRound, x600035_g_ItemAwardIndexOffset )

		-- ͳ����Ϣ
		LuaFnAuditQuest(sceneId, selfId, x600035_g_MissionName)
	end
end

--**********************************
-- �ж�ĳc�i�¼�����ng���T�i �ڵ�ǰ�¼��б�
--**********************************
function x600035_IsInEventList( sceneId, selfId, eventId )
	local i = 1
	local findId = 0

	for i, findId in x600035_g_SubMissionScriptList do
		if eventId == findId then
			return 1
		end
	end

	return 0
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x600035_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
