--Th�ch L�m  S� th�t ��ng s�

--�ű���

x300018_g_scriptId = 300018

--��ӵ��to� � �¼�ID�б�
x300018_g_eventList={212104}

--**********************************
--�¼��������
--**********************************
function x300018_OnDefaultEvent( sceneId, selfId, BagIndex )
	BeginEvent(sceneId)
		AddText(sceneId, "S� th�t ��ng s�")
		for i, eventId in x300018_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, -1 )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
end

--**********************************
--ˢ���¼�
--**********************************
function x300018_OnEventRequest( sceneId, selfId, targetId, eventId )
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x300018_OnMissionAccept( sceneId, selfId, targetId )
end

--**********************************
--�ܾ���NPCto� � ����
--**********************************
function x300018_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	for i, findId in x300018_g_eventList do
		if missionScriptId == findId then
			x300018_OnDefaultEvent( sceneId, selfId, targetId )
			return
		end
	end
end

function x300018_IsSkillLikeScript( sceneId, selfId)
	return 0;
end

