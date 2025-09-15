--ܽ��


--�ű���
x032005_g_scriptId = 032005

--��ӵ��to� � �¼�ID�б�
x032005_g_eventList={}

--**********************************
--�¼��б�
--**********************************
function x032005_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"Ch�o c�c h�, c�c h� l� kh�ch t� ph߽ng xa �n ch�c b�n c� cu�c d�o ch�i vui v� tr�n n�i V� Di.")
	for i, eventId in x032005_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x032005_OnDefaultEvent( sceneId, selfId,targetId )
	x032005_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x032005_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x032005_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x032005_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x032005_g_eventList do
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
function x032005_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	for i, findId in x032005_g_eventList do
		if missionScriptId == findId then
			x032005_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x032005_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x032005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ������to� � ����
--**********************************
function x032005_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x032005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x032005_OnDie( sceneId, selfId, killerId )
end

