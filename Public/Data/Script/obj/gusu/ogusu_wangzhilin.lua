--Ľ��NPC  
--��֥��
--��ͨ

--�ű���
x009047_g_ScriptId = 009047

--��ӵ�е��¼�
estudy_bugua = 713539
elevelup_bugua = 713597
edialog_bugua = 713611
--��ӵ�е��¼�ID�б�
x009047_g_eventList={estudy_bugua,elevelup_bugua}	
--MessageNum = 1		--MessageNum�ǶԻ���ţ����ڵ��ò�ͬ�Ի�
--**********************************
--�¼��б�
--**********************************
function x009047_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"#{GUSU_MENPAI_40}")
	for i, eventId in x009047_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	AddNumText( sceneId, x009047_g_ScriptId, "Gi�i thi�u B�i to�n", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x009047_OnDefaultEvent( sceneId, selfId,targetId )
	x009047_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x009047_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{GUSU_MENPAI_41}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	for i, findId in x009047_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x009047_g_ScriptId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x009047_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x009047_g_eventList do
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
--�ܾ���NPC������
--**********************************
function x009047_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x009047_g_eventList do
		if missionScriptId == findId then
			x009047_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x009047_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x009047_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x009047_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x009047_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x009047_OnDie( sceneId, selfId, killerId )
end
