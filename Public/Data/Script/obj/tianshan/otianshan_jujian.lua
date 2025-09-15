--Thi�n S�nNPC
--�ս�
--��ͨ

--��÷�帱������npc

--�ű���
x017004_g_scriptId = 017001


--��ӵ��to� � �¼�ID�б�
x017004_g_eventList={228901}

--**********************************
--�¼��б�
--**********************************
function x017004_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		AddText(sceneId,"#{OBJ_tianshan_0002}")
		for i, findId in x017004_g_eventList do
			CallScriptFunction( x017004_g_eventList[i], "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x017004_OnDefaultEvent( sceneId, selfId,targetId )
	x017004_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x017004_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x017004_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x017004_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x017004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ܾ���NPCto� � ����
--**********************************
function x017004_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	for i, findId in x017004_g_eventList do
		if missionScriptId == findId then
			x017004_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x017004_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x017004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ������to� � ����
--**********************************
function x017004_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x017004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x017004_OnDie( sceneId, selfId, killerId )
end

