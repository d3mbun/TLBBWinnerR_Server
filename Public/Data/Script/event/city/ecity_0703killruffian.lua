--��������
--ɱ�����蹤��Ѱ��ͷ��

--************************************************************************
--MisDescBegin

--�ű���
x600039_g_ScriptId = 600039

--�����
x600039_g_MissionId = 1111

--Ŀ��NPC
x600039_g_Name = "Tr�nh V� Danh"

--��ng c�p nhi�m v� 
x600039_g_MissionLevel = 10000

--�������
x600039_g_MissionKind = 50

--��ng����ngTinhӢ����
x600039_g_IfMissionElite = 0

--********���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������******
--��ɫMission����� �i�m�

x600039_g_IsMissionOkFail			=0	--0 Nhi�m v� ho�n th�nh���
x600039_g_MissionParam_SubId		=1	--1 ������ű��Ŵ��λ��
x600039_g_Param_sceneid				=2	--2 ��ǰ��������to� � ������
x600039_g_MissionParam_BossIndex	=3	--3 ĳ Boss to� � T�n����
x600039_g_Param_Killed				=4	--4 ��ɱ��to� � ����
x600039_g_Param_Needed				=5	--5 ��ɱ��to� � ����

--ѭ������to� � ��������,�����������to� � ����
x600039_g_MissionRound = 59
--**********************************������ng��̬****************************

--�����ı�����
x600039_g_MissionName = "X�y d�ng nhi�m v�"
x600039_g_MissionInfo = ""													--��������
x600039_g_MissionTarget = "    T�m ���c %s m� giang h� x�ng l� th� l�nh v� l� t�n c�m �u c�a b�n g�y s� �ng th�i gi�t ch�t h�n."				--M�c ti�u nhi�m v�
x600039_g_ContinueInfo = "    Nhi�m v� c�a c�c h� v�n ch�a ho�n th�nh �?"						--δHo�n t�t nhi�m v�to� � npc�Ի�
x600039_g_SubmitInfo = "    S� t�nh ti�n tri�n nh� th� n�o r�i?"								--���δ�ύʱto� � npc�Ի�
x600039_g_MissionComplete = "    R�t t�t r�t t�t, ti�n � x�y d�ng l�i t�ng nhanh r�i. "			--Ho�n t�t nhi�m v�npc˵��to� � ��

x600039_g_Parameter_Kill_CountRandom = { { id = 300471, numNeeded = 5, numKilled = 4 } }

x600039_g_StrForePart = 3

x600039_g_StrList = {
	[0 ] = "",
	[1 ] = "Ti�u Th�i Tu�",
	[2 ] = "H�n Th�i Tu�",
	[3 ] = "Ho�t Th�i Tu�",
	[4 ] = "B�nh Th�i Tu�",
	[5 ] = "�ang Tr�c Th�i tu�",
	[6 ] = "Thanh Di�n Th�i Tu�",
	[7 ] = "Huy�t Th� Th�i Tu�",
	[8 ] = "B�t Di�n Th�i Tu�",
	[9 ] = "�c Th� Di�m La",
	[10] = "Ti�u Di�m La",
	[11] = "H�n Di�m La",
	[12] = "Ho�t Di�m La",
	[13] = "B�nh Di�m La",
	[14] = "C�u Хu Di�m La",
	[15] = "Kim Nh�n Di�m La",
	[16] = "Kim ch߷ng Di�m La",
	[17] = "Thi�t Quy�n B� V߽ng",
	[18] = "B�t B� V߽ng",
	[19] = "B�nh B� V߽ng",
	[20] = "Ti�u B� V߽ng",
	[21] = "Tr�i B� V߽ng",
	[22] = "Ho�t B� V߽ng",
}

-- ͨ��Th�nh ph� ����ű�
x600039_g_CityMissionScript = 600001
x600039_g_ConstructionScript = 600035

--������

--MisDescEnd
--************************************************************************

--��������
x600039_g_CopySceneName = "C�ng �a"

x600039_g_CopySceneType = FUBEN_GONGDI	--��������,����T�i ScriptGlobal.lua����

x600039_g_CopySceneMap = "gongdi.nav"
x600039_g_Exit = "gongdi_area.ini"

x600039_g_MonsterCount = 10				--��������

x600039_g_TickTime = 5					--�ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x600039_g_CloseTick = 3					--�����ر�ǰ����ʱ(��λ: ����)
x600039_g_NoUserTime = 120				--������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)

x600039_g_BossGroupId = 51				--boss��
x600039_g_Fuben_X = 32					--���븱��to� � λ��X
x600039_g_Fuben_Z = 50					--���븱��to� � λ��Z
x600039_g_Back_X = 100					--Դ����λ��X
x600039_g_Back_Z = 57					--Դ����λ��Z

--**********************************
--������ں���
--**********************************
function x600039_OnDefaultEvent( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600039_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	--����ѽӴ�����
	if IsHaveMission( sceneId, selfId, x600039_g_MissionId ) > 0 then
		local bDone = x600039_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600039_g_SubmitInfo
		else
			strText = x600039_g_ContinueInfo
		end

		local misIndex = GetMissionIndexByID( sceneId, selfId, x600039_g_MissionId )

		if bDone == 0 then				--����δ���
			if GetNumText() == 1 then	-- ������ng �i�m�����븱��
				x600039_AcceptEnterCopyScene( sceneId, selfId )
				return
			end

			BeginEvent( sceneId )		-- ��ʾ�����ȡ����
				AddText( sceneId, x600039_g_MissionName )
				x600039_AskEnterCopyScene( sceneId, selfId )
			EndEvent( )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end

		BeginEvent( sceneId )
			AddText( sceneId, x600039_g_MissionName )
			AddText( sceneId, strText )
		EndEvent( )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600039_g_ScriptId, x600039_g_MissionId, bDone )

	--Th�a m�n�����������
	elseif x600039_CheckAccept( sceneId, selfId ) > 0 then
		x600039_OnAccept( sceneId, selfId, targetId )
	end
end

--**********************************
--�о��¼�
--**********************************
function x600039_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600039_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

   --����ѽӴ�����
	if IsHaveMission( sceneId, selfId, x600039_g_MissionId ) > 0 then
		AddNumText( sceneId, x600039_g_ScriptId, x600039_g_MissionName,3,-1 )
	end
end

--**********************************
--���Ti�p th�����
--**********************************
function x600039_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600039_g_ConstructionScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--ѯ�������ng��Ҫ���븱��
--**********************************
function x600039_AskEnterCopyScene( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600039_g_MissionId ) <= 0 then	-- û������
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600039_g_MissionId )
	local BossIndex = GetMissionParam( sceneId, selfId, misIndex, x600039_g_MissionParam_BossIndex )
	local missionInfo = format( "    C�c h� �n ��ng l�c qu�, th�i gian g�n ��y hi�n tr߶ng x�y d�ng th߶ng xuy�n c� m�t ��m ng߶i t�m c� g�y chuy�n, k� c�m �u ��m giang h� x�ng l� %s, nhi�m v� c�a c�c h� l� ph�i gi�i quy�t k� c�m �u %s, c�c h� ph�i c� l�n.",
		x600039_g_StrList[BossIndex], GetName( sceneId, selfId ) )

	AddText( sceneId, missionInfo )

	AddNumText( sceneId, x600039_g_ScriptId, "V�o c�ng tr߶ng", 10, 1 )
end

--**********************************
--Ti�p th�
--**********************************
function x600039_OnAccept( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x600039_g_MissionId ) == 0 then					--û������ſ���������
		if GetLevel( sceneId, selfId ) < 10 then
			CallScriptFunction( x600039_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Kh�ng �� ��ng c�p" )
			return
		end

		--������������б�
		AddMission( sceneId, selfId, x600039_g_MissionId, x600039_g_ScriptId, 1, 0, 0 )	-- kill��area��item
		if IsHaveMission( sceneId, selfId, x600039_g_MissionId ) <= 0 then
			return
		end

		CallScriptFunction( x600039_g_ConstructionScript, "OnAccept", sceneId, selfId, targetId, x600039_g_ScriptId )
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600039_g_MissionId )

		--PrintStr( "The count of x600039_g_StrList should be 22, the actual value is " .. getn(x600039_g_StrList) )
		-- ���m�t c�i����
		local BossIndex = random( getn(x600039_g_StrList) )

		SetMissionByIndex( sceneId, selfId, misIndex, x600039_g_MissionParam_BossIndex, BossIndex )
		SetMissionByIndex( sceneId, selfId, misIndex, x600039_g_Param_Needed, x600039_g_MonsterCount )		-- �����ͻ���ʹ��

		--��ʾ���ݸ�������Ѿ�Ti�p th�������
		BeginEvent( sceneId )
			AddText( sceneId, x600039_g_MissionName )
			x600039_AskEnterCopyScene( sceneId, selfId )
			AddText( sceneId, "#rC�c h� �� nh�n " .. x600039_g_MissionName )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
--���ͬ����븱��
--**********************************
function x600039_AcceptEnterCopyScene( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600039_g_MissionId ) > 0 then					--������ſ���������
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600039_g_MissionId )
		--local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x600039_g_Param_sceneid )

		--if copysceneid >= 0 and GetMissionParam( sceneId, selfId, misIndex, x600039_g_IsMissionOkFail ) == 0 then												--��������
		--	--���Լ����͵���������
		--	if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
		--		NewWorld( sceneId, selfId, copysceneid, x600039_g_Fuben_X, x600039_g_Fuben_Z )
		--		return
		--	end
		--end

		SetMissionByIndex( sceneId, selfId, misIndex, x600039_g_IsMissionOkFail, 0 )	--������to� � ��0����������Ϊ0,��ʾδ���to� � ����
		SetMissionByIndex( sceneId, selfId, misIndex, x600039_g_Param_sceneid, -1 )		--������to� � ��2����������Ϊ-1, ���ڱ��渱��to� � ������
		x600039_MakeCopyScene( sceneId, selfId )
	end
end

--**********************************
--��������
--**********************************
function x600039_MakeCopyScene( sceneId, selfId )
	local mylevel = GetLevel( sceneId, selfId )

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	LuaFnSetSceneLoad_Map( sceneId, x600039_g_CopySceneMap )						--��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x600039_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x600039_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, x600039_g_CopySceneType )				--���ø�������,���ｫ0������to� � ��������Ϊ999,���ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param( sceneId, 1, x600039_g_ScriptId )					--��1����������Ϊ���������¼��ű���
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							--���ö�ʱ�����ô���
	LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							--���ø�����ڳ�����, ��ʼ��
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							--���ø����رձ�־, 0����,1�ر�
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							--�����뿪����ʱ����
	LuaFnSetCopySceneData_Param( sceneId, 6, 0 )							--��ng���� gi�t ch�t ��boss
	LuaFnSetCopySceneData_Param( sceneId, 7, x600039_g_MonsterCount )				--ʣ�����to� � ����

 local PlayerMaxLevel = GetHumanMaxLevelLimit() --modi:lby20071127
 
	local iniLevel
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end

	LuaFnSetSceneLoad_Area( sceneId, x600039_g_Exit )
	LuaFnSetSceneLoad_Monster( sceneId, "gongdi_monster_" .. iniLevel .. ".ini" )

	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --c�p���,CopyScene_LevelGap T�i  scene.lua �и�ֵ

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--��ʼ����ɺ���ô�����������
	if bRetSceneID > 0 then
		x600039_NotifyFailTips( sceneId, selfId, "D�ch chuy�n th�nh c�ng!" )
	else
		x600039_NotifyFailTips( sceneId, selfId, "S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!" )
	end

end

--**********************************
--�����¼�
--**********************************
function x600039_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )					--���ø�����ڳ�����
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- �����޷�ִ���߼�to� � ״̬
		return
	end

	if IsHaveMission( sceneId, leaderObjId, x600039_g_MissionId ) > 0 then			--������ſ���������
		local misIndex = GetMissionIndexByID( sceneId, leaderObjId, x600039_g_MissionId )

		--������to� � ��2����������Ϊ����to� � ������
		SetMissionByIndex( sceneId, leaderObjId, misIndex, x600039_g_Param_sceneid, destsceneId )
		NewWorld( sceneId, leaderObjId, destsceneId, x600039_g_Fuben_X, x600039_g_Fuben_Z )
	end
end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x600039_OnPlayerEnter( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600039_g_MissionId ) == 0 then				--������븱��ǰɾ������,��ֱ�Ӵ��ͻ�
		x600039_NotifyFailTips( sceneId, selfId, "C�c h� �� kh�ng nh�n nhi�m v� n�y t� tr߾c" )
		x600039_BackToCity( sceneId, selfId )
		return
	end

	local monstercount = GetMonsterCount( sceneId )
	local monsterId, i
	for i = 0, monstercount - 1 do
		-- �ҵ� Boss = monsterId
		monsterId = GetMonsterObjID( sceneId, i )
		local GroupID = GetMonsterGroupID( sceneId, monsterId )
		if GroupID == x600039_g_BossGroupId then
			local misIndex = GetMissionIndexByID( sceneId, selfId, x600039_g_MissionId )
			local BossIndex = GetMissionParam( sceneId, selfId, misIndex, x600039_g_MissionParam_BossIndex )
			SetCharacterName( sceneId, monsterId, x600039_g_StrList[BossIndex] )
			break
		end
	end
	
	-- hongyu
	-- T�i ��ҽ��볡��to� � ʱ��,�����to� � �������ɱ��������Ϊ 1
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600039_g_MissionId )
	SetMissionByIndex( sceneId, selfId, misIndex, x600039_g_Param_Killed, 0 )	--������������
	-- end
end

--**********************************
--�����T�i �����������¼�
--**********************************
function x600039_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--����
--**********************************
function x600039_OnAbandon( sceneId, selfId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600039_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x600039_g_Param_sceneid )

	--ɾ����������б��ж�Ӧto� � ����
	CallScriptFunction( x600039_g_ConstructionScript, "OnAbandon", sceneId, selfId )

	if sceneId == copyscene then											--���T�i ������ɾ������,��ֱ�Ӵ��ͻ�
		x600039_NotifyFailTips( sceneId, selfId, "Nhi�m v� th�t b�i!" )
		x600039_BackToCity( sceneId, selfId )
	end
end

--**********************************
-- �س�,ֻ��Th�nh ph� ���񸱱����Ե��ô˽ӿ�
--**********************************
function x600039_BackToCity( sceneId, selfId )
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )					--ȡ �i�m������ڳ�����
	NewWorld( sceneId, selfId, oldsceneId, x600039_g_Back_X, x600039_g_Back_Z )
end

--**********************************
--����
--**********************************
function x600039_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600039_g_MissionName )
		AddText( sceneId, x600039_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600039_g_ScriptId, x600039_g_MissionId )
end

--**********************************
--�����ng������ύ
--**********************************
function x600039_CheckSubmit( sceneId, selfId, selectRadioId )
	--�ж�������ng���Ѿ����
	local ret = CallScriptFunction( x600039_g_ConstructionScript, "CheckSubmit", sceneId, selfId )
	return ret
end

--**********************************
--�ύ
--**********************************
function x600039_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600039_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	if x600039_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600039_g_ConstructionScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--ɱ����������
--**********************************
function x600039_OnKillObject( sceneId, selfId, objdataId, objId )
	if IsHaveMission( sceneId, selfId, x600039_g_MissionId ) == 0 then
		return
	end

	--��ng����ng����
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600039_g_MissionId )

	--��ng����ng��C�n to� � ����
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x600039_g_CopySceneType then
		return
	end

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														--��������Ѿ����óɹر�״̬,��ɱ����Ч
		return
	end

	local monstercount = GetMissionParam( sceneId, selfId, misIndex, x600039_g_Param_Killed )
	monstercount = monstercount + 1
	SetMissionByIndex( sceneId, selfId, misIndex, x600039_g_Param_Killed, monstercount )	--������������

	local strText = format( "�� gi�t ch�t t�n g�y s�: %d/%d", monstercount, x600039_g_MonsterCount )
	x600039_NotifyFailTips( sceneId, selfId, strText )

	if monstercount >= x600039_g_MonsterCount then
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )

		strText = format( "Ho�n t�t nhi�m v�, trong v�ng %d gi�y n�a s� ��a �n ch� ra v�o", x600039_g_CloseTick * x600039_g_TickTime )

		--������to� � ��1����������Ϊ1,��ʾ���to� � ����
		SetMissionByIndex( sceneId, selfId, misIndex, x600039_g_IsMissionOkFail, 1 )	--������������

		x600039_NotifyFailTips( sceneId, selfId, strText )
	end
end

--**********************************
--���������¼�
--**********************************
function x600039_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x600039_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--����������ʱ���¼�
--**********************************
function x600039_OnCopySceneTimer( sceneId, nowTime )

	--����ʱ�Ӷ�ȡ������
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						--ȡ �i�m�Ѿ�ִ��to� � ��ʱ����
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							--������to� � ��ʱ�����ô���

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	for i=0, membercount-1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	if leaveFlag == 1 then															--C�n �뿪
		--�뿪����ʱ��to� � ��ȡ������
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount >= x600039_g_CloseTick then										--����ʱ�䵽,��Ҷ���ȥ��
			--����ǰ����������to� � �����˴��ͻ�ԭ������ʱ��to� � ����
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x600039_BackToCity( sceneId, mems[i] )
				end
			end
		else
			--֪ͨ��ǰ����������to� � ������,�����رյ���ʱ��
			local strText = format( "C�c h� s� r�i kh�i n�i n�y trong v�ng %d gi�y n�a", ( x600039_g_CloseTick - leaveTickCount ) * x600039_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x600039_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	end
end

function x600039_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
