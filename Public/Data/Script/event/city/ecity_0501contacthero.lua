-- ��ʶ��������
--MisDescBegin
-- �ű���
x600024_g_ScriptId = 600024

--�����
x600024_g_MissionId = 1110

--M�c ti�u nhi�m v�npc
x600024_g_Name = "��ng Ph� Dung"

--�������
x600024_g_MissionKind = 50

--��ng c�p nhi�m v� 
x600024_g_MissionLevel = 10000

--��ng����ngTinhӢ����
x600024_g_IfMissionElite = 0

--���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������**********************
x600024_g_IsMissionOkFail = 0							-- Nhi�m v� ho�n th�nh���

--������ng��̬**************************************************************

--���������m�t λ�����洢��� �i�m��to� � �ű���

--�����ı�����
x600024_g_MissionName = "Nhi�m v� khu�ch tr߽ng"
x600024_g_MissionInfo = "    H�m nay ta mu�n c� %s, t�m l�i ��y gi�p ta!"			--��������
x600024_g_MissionTarget = "    Sau �� ��a tin cho %n. "							--M�c ti�u nhi�m v�
x600024_g_ContinueInfo = "    Nhi�m v� c�a c�c h� v�n ch�a ho�n th�nh �?"					--δHo�n t�t nhi�m v�to� � npc�Ի�
x600024_g_SubmitInfo = "    S� t�nh ti�n tri�n nh� th� n�o r�i?"							--���δ�ύʱto� � npc�Ի�
x600024_g_MissionComplete = "    ���c l�m ���c l�m, l�n n�y ti�ng t�m c�a b�n bang s� ���c lan truy�n trong giang h�. "		--Ho�n t�t nhi�m v�npc˵��to� � ��

x600024_g_StrForePart = 5
x600024_g_NPCOffset = 30												-- Suppose to 30, ����ڼ��� NPC to� � ƫ����
x600024_g_NPCOffsetEx	= 255 										--����ڼ��� NPC to� � ƫ�������� modi:lby20071126

x600024_g_MissionRound = 55

-- ͨ��Th�nh ph� ����ű�
x600024_g_CityMissionScript = 600001
x600024_g_ExpandScript = 600023

--������

--MisDescEnd

x600024_g_TargetNPC = x600024_g_StrForePart
x600024_g_MissionItem = 40004256

x600024_g_Pronoun = {}
x600024_g_Pronoun[0] = "mu�i �y "
x600024_g_Pronoun[1] = "huynh �y "

--**********************************
--������ں���
--**********************************
function x600024_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	if GetName( sceneId, targetId ) ~= x600024_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	--����ѽӴ�����
	if IsHaveMission( sceneId, selfId, x600024_g_MissionId ) > 0 then
		--������������to� � ��Ϣ
		local bDone = x600024_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600024_g_SubmitInfo
		else
			strText = x600024_g_ContinueInfo
		end

		--������������to� � ��Ϣ
		BeginEvent( sceneId )
			AddText( sceneId, x600024_g_MissionName )
			AddText( sceneId, strText )
		EndEvent( )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600024_g_ScriptId, x600024_g_MissionId, bDone )
	--Th�a m�n�����������
	elseif x600024_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600024_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600024_OnAccept( sceneId, selfId, targetId )
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x600024_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600024_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

   --����ѽӴ�����
	if IsHaveMission( sceneId, selfId, x600024_g_MissionId ) > 0 then
		AddNumText( sceneId, x600024_g_ScriptId, x600024_g_MissionName,3,-1 )
	end
end

--**********************************
--���Ti�p th�����
--**********************************
function x600024_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600024_g_ExpandScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--������ҵ�c�p �i�m����ӦMissionNPC_HashTable.txt��to� � ѡ����Ϣ
--**********************************
function x600024_GetMissionNPCKey( sceneId, selfId )
	local nPlayerLevel = GetLevel( sceneId, selfId )
	local nPos

	if nPlayerLevel < 55 then								-- 40 ~ 54
		nPos = 0
	elseif nPlayerLevel < 70 then							-- 55 ~ 69
		nPos = 1
	elseif nPlayerLevel < 85 then							-- 70 ~ 84
		nPos = 2
	--else													-- 85 ~ 100
	--	nPos = 3
	--end

	--return nPos + x600024_g_NPCOffset
	elseif	nPlayerLevel < 100 then					-- 85 ~ 99 Level
		nPos = 3
	elseif nPlayerLevel < 115 then					-- 100 ~ 119 Level	modi:lby20071126
		nPos = 0
	else 																		-- >=115 Level
		nPos = 1
		
	end
	
	if nPlayerLevel < 100 then
		return nPos + x600024_g_NPCOffset
	else
		return nPos + x600024_g_NPCOffsetEx
	end
end

--**********************************
--Ti�p th�
--**********************************
function x600024_OnAccept( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600024_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	if GetLevel( sceneId, selfId ) < 40 then
		CallScriptFunction( x600024_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Kh�ng �� ��ng c�p" )
		return
	end

	local pos = LuaFnTryRecieveItem( sceneId, selfId, x600024_g_MissionItem, QUALITY_MUST_BE_CHANGE )
	if pos == -1 then
		CallScriptFunction( x600024_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Ch� tr�ng trong t�i x�ch kh�ng ��" )
		return
	end

	--������������б�
	AddMission( sceneId, selfId, x600024_g_MissionId, x600024_g_ScriptId, 0, 0, 0 )	-- kill��area��item
	if IsHaveMission( sceneId, selfId, x600024_g_MissionId ) <= 0 then
		return
	end

	SetMissionEvent( sceneId, selfId, x600024_g_MissionId, 4 ) -- ע�� x600024_OnLockedTarget �¼�

	CallScriptFunction( x600024_g_ExpandScript, "OnAccept", sceneId, selfId, targetId, x600024_g_ScriptId )

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600024_g_MissionId )
	local nNpcId, strNpcName, strNpcScene, nScene, nPosX, nPosZ, _, nGender = GetOneMissionNpc( x600024_GetMissionNPCKey( sceneId, selfId ) )

	SetMissionByIndex( sceneId, selfId, misIndex, x600024_g_TargetNPC, nNpcId )

	strNpcScene = gsub( strNpcScene, "to� � ", "" )

	--��ʾ���ݸ�������Ѿ�Ti�p th�������
	BeginEvent( sceneId )
		local missionInfo
		local rand = random( 2 )

		if rand == 1 then
			missionInfo = format( "    L�m ng߶i m� kh�ng bi�t %s, k� c� c� l� anh h�ng c�ng b�ng kh�ng. C�c h� ��a %s �i, chuy�n b�c th� k�t giao n�y cho %s (%d, %d)",
				strNpcName, strNpcScene, strNpcName, nPosX, nPosZ )
		else
			missionInfo = format( "    %s (%d, %d) c� danh ti�ng tr�n giang h�, r�t c� l�i cho ch�ng ta, �i %s ��a th� k�t giao cho %s",
				strNpcName, nPosX, nPosZ, strNpcScene, x600024_g_Pronoun[nGender] )
		end

		AddText( sceneId, missionInfo )
		AddText( sceneId, "    C�c h� �� nh�n nhi�m v�: " .. x600024_g_MissionName )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--����
--**********************************
function x600024_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
	CallScriptFunction( x600024_g_ExpandScript, "OnAbandon", sceneId, selfId )
end

--**********************************
--����
--**********************************
function x600024_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600024_g_MissionName )
		AddText( sceneId, x600024_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600024_g_ScriptId, x600024_g_MissionId )
end

--**********************************
--�����ng������ύ
--**********************************
function x600024_CheckSubmit( sceneId, selfId )
	local ret = CallScriptFunction( x600024_g_ExpandScript, "CheckSubmit", sceneId, selfId )
	return ret
end

--**********************************
--�ύ
--**********************************
function x600024_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600024_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	if x600024_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600024_g_ExpandScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--ɱ����������
--**********************************
function x600024_OnKillObject( sceneId, selfId, objdataId, objId )	--������˼: �����š����objId�������λ�úš�����objId
end

--**********************************
--���������¼�
--**********************************
function x600024_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x600024_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--������m�t c�i����
--**********************************
function x600024_OnLockedTarget( sceneId, selfId, objId )
	if IsHaveMission( sceneId, selfId, x600024_g_MissionId ) < 1 then
		return		-- û�и�����
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600024_g_MissionId )		-- �i�m������T�i 20c�i������to� � ���к�
	if GetMissionParam( sceneId, selfId, misIndex, x600024_g_IsMissionOkFail ) > 0 then
		return		-- �����������
	end

	local nNpcId, strNpcName, PosX, PosZ

	nNpcId = GetMissionParam( sceneId, selfId, misIndex, x600024_g_TargetNPC )
	_, strNpcName, _, PosX, PosZ = GetNpcInfoByNpcId(sceneId, nNpcId )

	-- ��ʱ���Ƚ�λ��
	if GetName( sceneId, objId ) == strNpcName then
		if DelItem( sceneId, selfId, x600024_g_MissionItem, 1 ) == 1 then
			-- ���������Ѿ����
			SetMissionByIndex( sceneId, selfId, misIndex, x600024_g_IsMissionOkFail, 1 )
			-- ��������� x600024_OnLockedTarget �¼��б������,�������ٹ��Ĵ����¼�
			ResetMissionEvent( sceneId, selfId, x600024_g_MissionId, 4 )

			local rand = random( 2 )
			local strText

			if rand == 1 then
				strText = format( "    D� th�i, bang ch� c�a qu� bang ch� kh� ch�nh ngh�a cao h�n tr�i xanh, c� vi�c g� c�n ch�ng ta gi�p, d� c� ph�i nh�y v�o l�a c�ng kh�ng ch�i t�" )
			else
				strText = format( "    Kh�ch kh� qu�, ���c l�m vi�c cho qu� bang l� vinh h�nh c�a %s ta", strNpcName )
			end

			TAddText( sceneId, strText )
		end
	end
end
