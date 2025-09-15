--Thi�n LongNPC
--����
--��ͨ

--�ű���
x013002_g_ScriptId = 013002

--��ӵ��to� � �¼�
estudy_jingmaibaijue = 713533
elevelup_jingmaibaijue = 713592
edialog_jingmaibaijue = 713611
--��ӵ��to� � �¼�ID�б�
x013002_g_eventList={estudy_jingmaibaijue,elevelup_jingmaibaijue}	
--MessageNum = 1		--MessageNum��ng�Ի����,���ڵ��ò�ͬ�Ի�
--**********************************
--�¼��б�
--**********************************
function x013002_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"K� n�ng c�a ta ch� d�y � t� b�n ph�i.")
	for i, eventId in x013002_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	AddNumText( sceneId, x013002_g_ScriptId, "Gi�i thi�u kinh m�ch b�ch quy�t", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x013002_OnDefaultEvent( sceneId, selfId,targetId )
	x013002_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x013002_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_030}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	for i, findId in x013002_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x013002_g_ScriptId )
			return
		end
	end
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x013002_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x013002_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--�ܾ���NPCto� � ����
--**********************************
function x013002_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	for i, findId in x013002_g_eventList do
		if missionScriptId == findId then
			x013002_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x013002_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x013002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ������to� � ����
--**********************************
function x013002_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x013002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x013002_OnDie( sceneId, selfId, killerId )
end
