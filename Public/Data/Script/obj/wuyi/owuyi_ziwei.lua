--³ƽ


--�ű���
x032002_g_scriptId = 032004

--��ӵ��to� � �¼�ID�б�
x032002_g_eventList={}

--**********************************
--�¼��б�
--**********************************
function x032002_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"  Ch�o m�ng c�c h� �n doanh tr�i tu�n tra c�a ng߶i S�n Vi�t. C�c h� c� th� �i l�i kh�p n�i � ��y, nh�ng nh�t ��ng l�m h�i c�y c� hoa l� � ��y, ch�ng l� b�n t�t c�a ng߶i S�n Vi�t. #r#rPh�a b�n kia l� Th�y Ti�n t� t�, t� �y l� ng߶i th�ng minh nh�t trong doanh tr�i c�a ch�ng ta �y.")
	for i, eventId in x032002_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x032002_OnDefaultEvent( sceneId, selfId,targetId )
	x032002_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x032002_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x032002_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x032002_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x032002_g_eventList do
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
function x032002_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	for i, findId in x032002_g_eventList do
		if missionScriptId == findId then
			x032002_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x032002_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x032002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ������to� � ����
--**********************************
function x032002_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x032002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x032002_OnDie( sceneId, selfId, killerId )
end

