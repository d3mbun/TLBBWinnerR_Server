--ˮ������
--����

--MisDescBegin
--�ű���
x232001_g_ScriptId	= 232001

--Ti�p th�����NPC����
x232001_g_Position_X=66.5252
x232001_g_Position_Z=76.7254
x232001_g_SceneID=4
x232001_g_AccomplishNPC_Name="H� Di�n Kh�nh"

--�����
x232001_g_MissionId	= 1212
--M�c ti�u nhi�m v�npc
x232001_g_Name			= "H� Di�n B�o"
--�������
x232001_g_MissionKind			= 1
--��ng c�p nhi�m v� 
x232001_g_MissionLevel		= 10000
--��ng����ngTinhӢ����
x232001_g_IfMissionElite	= 0
--������ng���Ѿ����
x232001_g_IsMissionOkFail	= 0		--����to� � ��0λ
--�����ı�����
x232001_g_MissionName			= "B�nh �nh Thu� lao ph�n lo�n"
--��������
x232001_g_MissionInfo			= "#{event_xunhuan_0005}"
--M�c ti�u nhi�m v�
x232001_g_MissionTarget		= "  �i v�o Th�i H� th�y tr�i t�m H� Di�n Kh�nh#{_INFOAIM67,77,4,H� Di�n Kh�nh}."
--δHo�n t�t nhi�m v�to� � npc�Ի�
x232001_g_ContinueInfo		= "  Thi�u hi�p �� ho�n t�t nhi�m v� Thu� lao ch�a?"
--Ho�n t�t nhi�m v�npc˵��to� � ��
x232001_g_MissionComplete	= "  R�t c�m t� s� gi�p �� c�a c�c h�, b�o �ng c�a ph�m nh�n trong Thu� lao �� l�ng"
--���ƽű�
x232001_g_ControlScript		= 232000
--MisDescEnd


--**********************************
--������ں���
--**********************************
function x232001_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�

	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x232001_g_Name then
		return
	end

	--����ѽӴ�����
	if IsHaveMission( sceneId, selfId, x232001_g_MissionId ) > 0 then

		--������������to� � ��Ϣ
		BeginEvent( sceneId )
			AddText( sceneId, x232001_g_MissionName )
			AddText( sceneId, x232001_g_ContinueInfo )
		EndEvent( )
		local	bDone	= x232001_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x232001_g_ScriptId, x232001_g_MissionId, bDone )

	--δ��,��Th�a m�n�����������
	elseif x232001_CheckAccept( sceneId, selfId ) > 0 then

		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent( sceneId )
			AddText( sceneId, x232001_g_MissionName )
			AddText( sceneId, x232001_g_MissionInfo )
			AddText( sceneId, "#{M_MUBIAO}" )
			AddText( sceneId, x232001_g_MissionTarget )
		EndEvent( )
		DispatchMissionInfo( sceneId, selfId, targetId, x232001_g_ScriptId, x232001_g_MissionId )

	end

end

--**********************************
--�о��¼�
--**********************************
function x232001_OnEnumerate( sceneId, selfId, targetId )
	LuaFnAddGlobalCountNews(sceneId,"H� Di�n Kh�nh")
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
 	if LuaFnGetName( sceneId, targetId ) ~= x232001_g_Name then
		return
	end

   --����ѽӴ�����
	if IsHaveMission( sceneId, selfId, x232001_g_MissionId ) > 0 or x232001_CheckAccept( sceneId, selfId ) > 0 then
		AddNumText( sceneId, x232001_g_ScriptId, x232001_g_MissionName,3,-1 )
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x232001_CheckAccept( sceneId, selfId )

	if CallScriptFunction( x232001_g_ControlScript, "CheckAccept", sceneId, selfId ) == 1 then
		--��������ng�����Ti�p th�����to� � ����
		return 1
	else
		return 0
	end

end

--**********************************
--Ti�p th�
--**********************************
function x232001_OnAccept( sceneId, selfId, targetId )

	--�жϸ�npc��ng����ng��Ӧ����to� � npc
 	if LuaFnGetName( sceneId, targetId ) ~= x232001_g_Name then
		return
	end

	--������������б�
	CallScriptFunction( x232001_g_ControlScript, "OnAccept", sceneId, selfId, targetId, x232001_g_ScriptId )

	if IsHaveMission( sceneId, selfId, x232001_g_MissionId ) <= 0 then
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x232001_g_MissionId )
	--�������кŰ��������to� � ��6λ��1 (����������)
	SetMissionByIndex( sceneId, selfId, misIndex, 6, 1 )

	--��ʾ���ݸ�������Ѿ�Ti�p th�������
	BeginEvent( sceneId )
		AddText( sceneId, x232001_g_MissionInfo )
		AddText( sceneId, "#rNg߽i nh�n nhi�m v�: #r  "..x232001_g_MissionName )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--����
--**********************************
function x232001_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
	CallScriptFunction( x232001_g_ControlScript, "OnAbandon", sceneId, selfId )
end

--**********************************
--����
--**********************************
function x232001_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
	BeginEvent( sceneId )
	AddText( sceneId, x232001_g_MissionName )
	AddText( sceneId, x232001_g_MissionComplete )
	EndEvent()
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x232001_g_ScriptId, x232001_g_MissionId )
end

--**********************************
--�����ng������ύ
--**********************************
function x232001_CheckSubmit( sceneId, selfId )
	return CallScriptFunction( x232001_g_ControlScript, "CheckSubmit", sceneId, selfId )
end

--**********************************
--�ύ
--**********************************
function x232001_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	--�жϸ�npc��ng����ng��Ӧ����to� � npc
 	if LuaFnGetName( sceneId, targetId ) ~= x232001_g_Name then
		return
	end
	CallScriptFunction( x232001_g_ControlScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )

end

--**********************************
--ɱ����������
--**********************************
--������˼: �����š����objId�������λ�úš�����objId
function x232001_OnKillObject( sceneId, selfId, objdataId , objId )
end

--**********************************
--���������¼�
--**********************************
function x232001_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x232001_OnItemChanged( sceneId, selfId, itemdataId )
end
