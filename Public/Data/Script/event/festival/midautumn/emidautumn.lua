-- ��������

--************************************************************************
--MisDescBegin

-- �ű���
x050009_g_ScriptId = 050009

-- �����
x050009_g_MissionId = 395					-- 395 - 399

--��m�t c�i����to� � ID
x050009_g_MissionIdNext = 396

-- M�c ti�u nhi�m v�npc
x050009_g_Name = "Nh�c Th߶ng Vi�n"

--�������
x050009_g_MissionKind = 3

--��ng c�p nhi�m v� 
x050009_g_MissionLevel = 10000

-- �����ı�����
x050009_g_MissionName = "Nhi�m v� trung thu"
x050009_g_MissionInfo = "    Nghe giang h� �n r�ng, g�n ��y c� m�t s� cao th� nh�t ph�m �߶ng s� t�i d� l� trung thu" ..
				"T�n c�ng ��i T�ng ta, l�c �� �� b� t߾ng qu�n D߽ng V�n Qu�ng phong t�a t�i" ..
				"��n Ho�ng, c�c h� ch�p nh�n v� n߾c quy�t �u?"								-- ��������

x050009_g_MissionTarget = "    B�y gi� mau �n ��n Ho�ng (252, 144) T߾ng qu�n D߽ng V�n Qu�ng n�i �� vi�n tr� h�n ch�ng �� s� ti�n c�ng c�a Nh�t Ph�m �߶ng cao th�. "	-- M�c ti�u nhi�m v�

x050009_g_ContinueInfo = "    "				-- δHo�n t�t nhi�m v�to� � npc�Ի�
x050009_g_MissionComplete = ""				-- Ho�n t�t nhi�m v�npc˵to� � ��

-- ������

--MisDescEnd
--************************************************************************

x050009_g_NumText_Mission = 1				-- ��������
x050009_g_NumText_Intro = 2					-- �������
x050009_g_NumText_ViewMoon = 3				-- ȥ��T�y H�����

--**********************************
--�ж���ng������ʱ��
--**********************************
function x050009_IsMidAutumnPeriod( sceneId, selfId )
	--begin modified by zhangguoxin 090207
	--local CurTime = GetHourTime()						--��ǰʱ��
	--CurTime = CurTime-36500 --C�i n�y ����ÿ�궼Ҫά��
	local CurTime = GetQuarterTime();
	
	--local today = floor( CurTime/100 )						--��ǰʱ��(��)
	local today = mod(floor( CurTime/100 ), 1000)		--��ǰʱ��(��)
	local CurQuarterTime = mod( CurTime, 100 )			--��ǰʱ��(��)
	--end modified by zhangguoxin 090207

	local firstDay = 257								-- 2008��9 �� 14 ��,��������
	local lastDay = 283									-- 2008��10 �� 9 ��,��������

	if today == firstDay and CurQuarterTime < 48 then
		return 0
	end

	if today == lastDay and CurQuarterTime > 47 then
		return 0
	end

	if today < firstDay or today > lastDay then
		return 0
	end

	return 1
end

--**********************************
--�ж�������Ʒ��ng����Ч
--**********************************
function x050009_IsItemValid( sceneId, itemSN )--����Ʒto� � �ű��������±����������±�����ɳ���±��ȵȵ��õ�����,�Ѿ�û��ʹ��
	local today = GetDayTime()							--��ǰʱ��(��)
	local lastDay = 6303								-- 10 �� 31 ��

	-- 10 �� 31 ���Ժ�ʧЧ
	if today > lastDay then
		return 0
	end

	return 1
end

--**********************************
--�о��¼�
--**********************************
function x050009_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x050009_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	if x050009_IsMidAutumnPeriod( sceneId, selfId ) == 0 then
		return
	end

	if IsHaveMission( sceneId, selfId, x050009_g_MissionId ) <= 0 then
		AddNumText( sceneId, x050009_g_ScriptId, "Nhi�m v� trung thu", -1, x050009_g_NumText_Mission )
	else
		AddNumText( sceneId, x050009_g_ScriptId, "T�i T�y H� th߷ng nguy�t", -1, x050009_g_NumText_ViewMoon )
	end

	AddNumText( sceneId, x050009_g_ScriptId, "Nhi�m v� gi�i thi�u", -1, x050009_g_NumText_Intro )
end

--**********************************
--������ں���
--**********************************
function x050009_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	if GetNumText() == x050009_g_NumText_Mission then
		x050009_AssignMission( sceneId, selfId, targetId )
	elseif GetNumText() == x050009_g_NumText_Intro then
		x050009_MissionIntro( sceneId, selfId, targetId )
	elseif GetNumText() == x050009_g_NumText_ViewMoon then
		x050009_ViewMoon( sceneId, selfId, targetId )
	else
		return
	end
end

--**********************************
--��������
--**********************************
function x050009_AssignMission( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x050009_g_MissionName )
		AddText( sceneId, x050009_g_MissionInfo )
	EndEvent( )
	DispatchMissionInfo( sceneId, selfId, targetId, x050009_g_ScriptId, x050009_g_MissionId )
end

--**********************************
--�������
--**********************************
function x050009_MissionIntro( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "    T�i T� Ch�u (193, 148) h�y k�ch ho�t nhi�m v� Nh�c Th߶ng Vi�n - �� t�m th�y" ..
						"��n Ho�ng (252, 144) t߾ng qu�n D߽ng V�n Qu�ng �i v�o tr�n chi�n ph� b�n - ti�u di�t" ..
						"BOSS �o�t ���c �i�m t�ch l�y trung thu (nh�: l�nh b�i nh�t ph�m �߶ng, c� th� giao cho D߽ng" ..
						"V�n Qu�ng �o�t ���c m�y m�n qu� qu�) - h�y �i t�i ba t�u l�u � ba th�nh th� l�n" ..
						"�ng ch� � ��y d�ng �i�m t�ch l�y �i l�y nguy�n li�u th�c ph�m (b�t m� tinh, h߽ng li�u lo�i �u, �߶ng th��ng h�ng)," )
		AddText( sceneId, "Ъn Ng߶i c�ng b� nhi�m v� c� th� chuy�n t�i T�y H� th߷ng nguy�t, h�y t�m �n T� c�a D� T�y H� (280" ..
						", 184) d�ng 3 c�i v�t li�u Th�c �n �i l�y m�t b�nh trung thu (ng�u nhi�n kh�c nhau" ..
						"Kh�u v�: B�nh trung thu nh�n M�t T�o, B�nh trung thu nh�n B�c H�, b�nh trung thu nh�n Чu, Nh�n" ..
						"Nh�n b�nh trung thu...b�nh trung thu, huy�t kh� �ng th�i ���c n�p �y, �ng th�i c�ng t�ng th�m c�c lo�i h� tr� kh�c nhau" ..
						"Th�i h�n b�o h�nh � t߽i ngon c�a b�nh Trung thu t�i 31 th�ng 10. аng th�i m�i l�n thay m�t h�i trung thu" )
		AddText( sceneId, "L�y ���c t�ng th߷ng kinh nghi�m t߽ng �ng. C� th� t�i D� T�y H� mua qu� trung thu" ..
						"Hoa, th�i gian hoa trong l� trung thu c� hi�u l�c t�i ng�y 31 th�ng 10" )
	EndEvent( )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ȥ��T�y H�����
--**********************************
function x050009_ViewMoon( sceneId, selfId, targetId )
	local scene, x, z = 121, 272, 181
	NewWorld( sceneId, selfId, scene, x, z )
end

--**********************************
--���Ti�p th�����
--**********************************
function x050009_CheckAccept( sceneId, selfId )
	if x050009_IsMidAutumnPeriod( sceneId, selfId ) > 0 then
		return 1
	end

	return 0
end

--**********************************
--Ti�p th�
--**********************************
function x050009_OnAccept( sceneId, selfId, targetId )
	--�����ng�������Ѿ��ﵽ20c�i,�������,���ܽ�
	if GetMissionCount( sceneId, selfId ) == 20 then
		x050009_NotifyFailTips( sceneId, selfId, "Kh�ng th� ti�p nh�n nhi�u nhi�m v�" )
		return
	end

	if IsHaveMission( sceneId, selfId, x050009_g_MissionId ) <= 0 then
		AddMission( sceneId, selfId, x050009_g_MissionId, x050009_g_ScriptId, 0, 0, 0 )		-- kill��area��item
		if IsHaveMission( sceneId, selfId, x050009_g_MissionId ) <= 0 then
			return
		end
	end

	x050009_NotifyFailBox( sceneId, selfId, targetId, x050009_g_MissionTarget )
end

--**********************************
--��������
--**********************************
function x050009_OnAbandon( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050009_g_MissionId ) == 0 then
		return
	end

	if IsHaveMission( sceneId, selfId, x050009_g_MissionIdNext ) > 0 then
		x050009_NotifyFailTips( sceneId, selfId, "Xin v�t b� nhi�m v� nh�t ph�m �߶ng tr߾c!" )
		return
	end

	DelMission( sceneId, selfId, x050009_g_MissionId )
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x050009_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--��Ŀ��Ϣ��ʾ
--**********************************
function x050009_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
