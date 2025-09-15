--Nam H�iNPC
--ʯ�ҵ�
--��ͨ

--�ű���
x034005_g_scriptId = 34005

--��ӵ��to� � �¼�ID�б�
x034005_g_eventList={212114}

--**********************************
--�¼��б�
--**********************************
function x034005_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"  <M�t ng߶i �� kh�ng l�, ��ng c� �c b�n c�u>")
	for i, eventId in x034005_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x034005_OnDefaultEvent( sceneId, selfId,targetId )
	x034005_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x034005_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x034005_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x034005_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x034005_g_eventList do
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
function x034005_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	for i, findId in x034005_g_eventList do
		if missionScriptId == findId then
			x034005_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x034005_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x034005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ������to� � ����
--**********************************
function x034005_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x034005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x034005_OnDie( sceneId, selfId, killerId )
end
