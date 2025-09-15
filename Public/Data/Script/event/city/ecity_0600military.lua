-- Th�nh ph� ����֮�����������¼��ű�
-- �ű���
x600030_g_ScriptId = 600030

-- �����
x600030_g_MissionId = 1109

-- M�c ti�u nhi�m v�npc
x600030_g_Name = "V� ��i Uy"

-- �����ı�����
x600030_g_MissionName = "Nhi�m v� qu�c ph�ng"
x600030_g_MissionInfo = "Nhi�m v� qu�c ph�ng"			--��������
x600030_g_MissionTarget = "  Ho�n th�nh nhi�m v� V� ��i Uy"			--M�c ti�u nhi�m v�
x600030_g_ContinueInfo = "  Nhi�m v� c�a c�c h� v�n ch�a ho�n th�nh �?"	--δHo�n t�t nhi�m v�to� � npc�Ի�
x600030_g_MissionComplete = "  L�m t�t l�m, c�m �n c�c h� r�t nhi�u. "				--Ho�n t�t nhi�m v�npc˵to� � ��

x600030_g_MissionParam_SubId = 1

-- ͨ��Th�nh ph� ����ű�
x600030_g_CityMissionScript = 600001

-- �������
x600030_g_SubMissionScriptList = { 600031, 600032, 600033, 600034, 600044 }

-- ������
x600030_g_ItemAwardIndexOffset = 28						-- ��Ʒ������T�i �����to� � ��ƫ��, need to modify
x600030_g_MissionRound = MD_CITY_MILITARY_ROUND			-- Th�nh ph� ������������
x600030_g_MissionAbandonTime = MD_CITY_MILITARY_TIME		-- Th�nh ph� �������������������to� � ʱ��

x600030_g_ContribType = GUILD_CONTRIB_POINT

x600030_g_SpecType = GUILD_DEF_LEVEL

--**********************************
--������ں���
--**********************************
function x600030_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�

	if GetName( sceneId, targetId ) ~= x600030_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	local rand = random( getn(x600030_g_SubMissionScriptList) )
	CallScriptFunction( x600030_g_CityMissionScript, "DoDefaultEvent", sceneId, selfId, targetId, x600030_g_MissionId, x600030_g_SubMissionScriptList[rand] )
end

--**********************************
--�о��¼�
--**********************************
function x600030_OnEnumerate( sceneId, selfId, targetId )

	if GetLevel(sceneId, selfId) < 40  then
		return
	end

	if GetName( sceneId, targetId ) ~= x600030_g_Name then								--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	--����ѽ������Th�a m�n�����������,���г�����
	if IsHaveMission( sceneId, selfId, x600030_g_MissionId ) > 0 then
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600030_g_MissionId )
		local subMissionScriptId = GetMissionParam( sceneId, selfId, misIndex, x600030_g_MissionParam_SubId )

		CallScriptFunction( subMissionScriptId, "OnEnumerate", sceneId, selfId, targetId )
	elseif x600030_CheckAccept( sceneId, selfId ) > 0 then
		AddNumText( sceneId, x600030_g_ScriptId, x600030_g_MissionName, 1 )
	end
end

--**********************************
--���Ti�p th�����,Ҳ�����������
--**********************************
function x600030_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600030_g_CityMissionScript, "DoCheckAccept", sceneId, selfId, x600030_g_MissionId, x600030_g_MissionAbandonTime )

	if GetLevel(sceneId, selfId) < 40  then
		ret = 0
	end

	return ret
end

--**********************************
--Ti�p th�,����������������ù�������
--**********************************
function x600030_OnAccept( sceneId, selfId, targetId, scriptId )
	if GetName( sceneId, targetId ) ~= x600030_g_Name then								--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	CallScriptFunction( x600030_g_CityMissionScript, "DoAccept", sceneId, selfId, scriptId, x600030_g_MissionId, x600030_g_MissionRound )
end

--**********************************
--����,�������������
--**********************************
function x600030_OnAbandon( sceneId, selfId )
	CallScriptFunction( x600030_g_CityMissionScript, "DoAbandon", sceneId, selfId, x600030_g_MissionId, x600030_g_MissionAbandonTime, x600030_g_MissionRound )
end

--**********************************
--����
--**********************************
function x600030_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--�����ng������ύ
--**********************************
function x600030_CheckSubmit( sceneId, selfId )
	local ret = CallScriptFunction( x600030_g_CityMissionScript, "DoCheckSubmit", sceneId, selfId, x600030_g_MissionId )
	return ret
end

--**********************************
--�ύ,�������������
--**********************************
function x600030_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x600030_CheckSubmit( sceneId, selfId ) == 1 then

		CallScriptFunction( x600030_g_CityMissionScript, "DoSubmit", sceneId, selfId, x600030_g_MissionId, x600030_g_MissionRound )

		-- Kinh nghi�m����
		local ExpBonus = CallScriptFunction( x600030_g_CityMissionScript, "CalcExpBonus", sceneId, selfId, x600030_g_MissionRound )
		AddExp( sceneId, selfId, ExpBonus )

		-- ��ṱ�׶Ƚ���
		if selectRadioId ~= 99999 then
			local ContribBonus = CallScriptFunction( x600030_g_CityMissionScript, "CalcContribBonus", sceneId, selfId, x600030_g_MissionRound )
			if ContribBonus > 0 then
				CityChangeAttr( sceneId, selfId, x600030_g_ContribType, ContribBonus )
			end
		end
		-- רҵ����
		local SpecBonus = CallScriptFunction( x600030_g_CityMissionScript, "CalcSpecBonus", sceneId, selfId, x600030_g_MissionRound )
		-- print(SpecBonus)
		if SpecBonus > 0 then
		--	CityGetAttr( sceneId, selfId, x600030_g_SpecRate )
			CityChangeAttr( sceneId, selfId, x600030_g_SpecType, SpecBonus )
		end

		-- ��Ʒ����
		CallScriptFunction( x600030_g_CityMissionScript, "RandomItemAward", sceneId, selfId,
			x600030_g_MissionRound, x600030_g_ItemAwardIndexOffset )

		-- ͳ����Ϣ
		LuaFnAuditQuest(sceneId, selfId, x600030_g_MissionName)

		-- ��¼��������m�t c�i����
		CallScriptFunction( x600030_g_CityMissionScript, "MissionComplete", sceneId, selfId )

	end

end

--**********************************
-- �ж�ĳc�i�¼�����ng���T�i �ڵ�ǰ�¼��б�
--**********************************
function x600030_IsInEventList( sceneId, selfId, eventId )
	local i = 1
	local findId = 0

	for i, findId in x600030_g_SubMissionScriptList do
		if eventId == findId then
			return 1
		end
	end

	return 0
end

