--Tinh T�cNPC
--����
--��ͨ

--Ng� Th�n еng��������npc

--�ű���
x016002_g_scriptId = 016002


--��ӵ��to� � �¼�ID�б�
x016002_g_eventList={227901}

--**********************************
--�¼��б�
--**********************************
function x016002_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		AddText(sceneId,"  "..PlayerName.." , trong Ng� Th�n еng c� r�t nhi�u qu�i v�t �y, ch� c� Th� Trung ca ca khi �i c�ng v�i ta th� ta m�i d�m v�o trong ��. Ng߽i c�ng mu�n v�o trong Ng� th�n �ng khi�u chi�n hay sao?")
		for i, findId in x016002_g_eventList do
			CallScriptFunction( x016002_g_eventList[i], "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x016002_OnDefaultEvent( sceneId, selfId,targetId )
	x016002_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x016002_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x016002_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x016002_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x016002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId , targetId)
			return
		end
	end
end

--**********************************
--�ܾ���NPCto� � ����
--**********************************
function x016002_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	for i, findId in x016002_g_eventList do
		if missionScriptId == findId then
			x016002_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x016002_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x016002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ������to� � ����
--**********************************
function x016002_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x016002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x016002_OnDie( sceneId, selfId, killerId )
end

