-- ��ɽ��ˮ

--MisDescBegin

-- �ű���
x228904_g_ScriptId = 228904

-- Ŀ�� NPC
x228904_g_Position_X = 217
x228904_g_Position_Z = 255
x228904_g_SceneID = 2
x228904_g_AccomplishNPC_Name = "V߽ng Thi�u"

-- �����
x228904_g_MissionId = 949

-- ǰ������
x228904_g_PreMissionId = 948

-- Ti�p th����� NPC ����
x228904_g_Name = "V߽ng Thi�u" --"Ch�ng Th� Ho�nh"

--�������
x228904_g_MissionKind = 28

--��ng c�p nhi�m v� 
x228904_g_MissionLevel = 30

--��ng����ngTinhӢ����
x228904_g_IfMissionElite = 0

--������
x228904_g_MissionName = "Du s�n ngo�n th�y"
x228904_g_MissionInfo = "#{TIANSHAN_SKILL_06}"
x228904_g_MissionTarget = "    Mang 5 v�ng �n Tu V�n ��i � th�nh ��i L�#W giao cho #RV߽ng Thi�u #W#{_INFOAIM217,255,2, V߽ng Thi�u}."
x228904_g_MissionContinue = "#{TIANSHAN_SKILL_07}"
x228904_g_MissionComplete = "#{TIANSHAN_SKILL_08}"

x228904_g_MoneyCost = 50000

x228904_g_MoneyBonus = 1000
x228904_g_exp = 2000

x228904_g_IsMissionOkFail = 0					-- ��ng��Ho�n t�t nhi�m v�to� � ���λ
x228904_g_IsFindTarget = 1						-- ��ng���ҵ����ر��λ

--MisDescEnd

--**********************************
--������ں���
--**********************************
function x228904_OnDefaultEvent( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x228904_g_Name then
		return 0
	end

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone( sceneId, selfId, x228904_g_MissionId ) > 0 then
		return
	elseif IsHaveMission( sceneId, selfId, x228904_g_MissionId ) > 0 then
		if GetName( sceneId, targetId ) == x228904_g_AccomplishNPC_Name then
			local misIndex = GetMissionIndexByID( sceneId, selfId, x228904_g_MissionId )
			SetMissionByIndex( sceneId, selfId, misIndex, x228904_g_IsMissionOkFail, 1 )
			SetMissionByIndex( sceneId, selfId, misIndex, x228904_g_IsFindTarget, 1 )
			x228904_OnContinue( sceneId, selfId, targetId )
		end
	--Th�a m�n�����������
	elseif x228904_CheckAccept( sceneId, selfId ) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent( sceneId )
			AddText( sceneId, x228904_g_MissionName )
			AddText( sceneId, x228904_g_MissionInfo )
			AddText( sceneId, "#{M_MUBIAO}#r" )
			AddText( sceneId, x228904_g_MissionTarget )
			AddText( sceneId, "#{M_SHOUHUO}#r" )
			AddMoneyBonus( sceneId, x228904_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo( sceneId, selfId, targetId, x228904_g_ScriptId, x228904_g_MissionId )
	end
end

--**********************************
--�о��¼�
--**********************************
function x228904_OnEnumerate( sceneId, selfId, targetId )
	if IsMissionHaveDone( sceneId, selfId, x228904_g_PreMissionId ) <= 0 then
		return
	end

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone( sceneId, selfId, x228904_g_MissionId ) > 0 then
		return
	--����ѽӴ�����
	elseif IsHaveMission( sceneId, selfId, x228904_g_MissionId ) > 0 then
		if GetName( sceneId, targetId ) == x228904_g_AccomplishNPC_Name then
			AddNumText( sceneId, x228904_g_ScriptId, x228904_g_MissionName, 2, -1 )
		end
	--Th�a m�n�����������
	elseif GetName( sceneId, targetId ) == x228904_g_Name and GetLevel( sceneId, selfId ) >= x228904_g_MissionLevel then
		AddNumText( sceneId, x228904_g_ScriptId, x228904_g_MissionName, 1, -1 )
	end
end

--**********************************
--���Ti�p th�����
--**********************************
function x228904_CheckAccept( sceneId, selfId )
	if IsMissionHaveDone( sceneId, selfId, x228904_g_PreMissionId ) <= 0 then
		return 0
	end

	-- 1,��������ng����ng�Ѿ�����
	if IsMissionHaveDone( sceneId, selfId, x228904_g_MissionId ) > 0 then
		return 0
	end

	-- ��c�p���
	if GetLevel( sceneId, selfId ) < x228904_g_MissionLevel then
		return 0
	end

	if IsHaveMission( sceneId, selfId, x228904_g_MissionId ) > 0 then
		return 0
	end

	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x228904_OnAccept( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x228904_g_Name then
		return 0
	end

	if x228904_CheckAccept( sceneId, selfId ) < 1 then
		return
	end

	--������������б�
	local ret = AddMission( sceneId, selfId, x228904_g_MissionId, x228904_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		x228904_NotifyFailBox( sceneId, selfId, targetId, "    #YNh�t k� nhi�m v� c�a c�c h� �� �y" )
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x228904_g_MissionId )
	SetMissionByIndex( sceneId, selfId, misIndex, x228904_g_IsMissionOkFail, 0 )	-- ��ʼ��������ɱ��
	SetMissionByIndex( sceneId, selfId, misIndex, x228904_g_IsFindTarget, 0 )		-- ��ʼ�����

	--��ʾ���ݸ�������Ѿ�Ti�p th�������
	x228904_NotifyFailTips( sceneId, selfId, "C�c h� �� nh�n nhi�m v�: " .. x228904_g_MissionName )
	Msg2Player( sceneId, selfId, "#YTi�p nh�n" .. x228904_g_MissionName, MSG2PLAYER_PARA )
end

--**********************************
--����
--**********************************
function x228904_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
	DelMission( sceneId, selfId, x228904_g_MissionId )
end

--**********************************
--����
--**********************************
function x228904_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent( sceneId )
		AddText( sceneId, x228904_g_MissionName )
		AddText( sceneId, x228904_g_MissionContinue )
		AddMoneyBonus( sceneId, x228904_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo( sceneId, selfId, targetId, x228904_g_ScriptId, x228904_g_MissionId )
end

--**********************************
--�����ng������ύ
--**********************************
function x228904_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x228904_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x228904_g_MissionId )				--  �i�m������to� � ���к�
	bRet = GetMissionParam( sceneId, selfId, misIndex, x228904_g_IsMissionOkFail )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x228904_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x228904_g_AccomplishNPC_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	if x228904_CheckSubmit( sceneId, selfId ) ~= 1 then
		return
	end

	if GetMoney( sceneId, selfId ) < x228904_g_MoneyCost then
		x228904_NotifyFailBox( sceneId, selfId, targetId, "    S� ti�n c�c h� mang theo kh�ng ��, kh�ng th� ho�n th�nh nhi�m v�." )
		return
	end

	--��Ǯ
	CostMoney( sceneId, selfId, x228904_g_MoneyCost )

	--���������
	AddMoney( sceneId, selfId, x228904_g_MoneyBonus )
	LuaFnAddExp( sceneId, selfId, x228904_g_exp )

	DelMission( sceneId, selfId, x228904_g_MissionId )
	--���������Ѿ�����ɹ�
	MissionCom( sceneId, selfId, x228904_g_MissionId )

	-- ��������ng����ngThi�n S�n��to� � ����
	if GetMenPai( sceneId, selfId ) == MP_TIANSHAN then
		-- ���������514�ż���
		AddSkill( sceneId, selfId, 514 )
		x228904_NotifyFailTips( sceneId, selfId, "C�c h� �� h�c ���c k� n�ng \"Li�u �m Hoa Minh\"." )
	end

	x228904_NotifyFailBox( sceneId, selfId, targetId, x228904_g_MissionComplete )
	Msg2Player( sceneId, selfId, "#YHo�n th�nh nhi�m v�: " .. x228904_g_MissionName, MSG2PLAYER_PARA )
end

--**********************************
--ɱ����������
--**********************************
function x228904_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x228904_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x228904_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x228904_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

function x228904_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
