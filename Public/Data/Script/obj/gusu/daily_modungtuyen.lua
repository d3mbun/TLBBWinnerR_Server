--NPC ��i L�
x009052_g_ScriptId	= 009052

x009052_g_eventList={210209,210287}

--*****************************--
--*     On Default Event      *--
--*****************************--
function x009052_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		local MP = GetMenPai(sceneId,selfId)
		if MP == 9  then
			AddText(sceneId,"#{GUSU_MENPAI_55}")
		elseif MP == 10 then
			AddText(sceneId,"#{GUSU_MENPAI_56}")
		else
			AddText(sceneId,"#{GUSU_MENPAI_57}")
		end
	if	GetLevel( sceneId, selfId)<=10	then
		AddNumText(sceneId,x009052_g_ScriptId,"M�n Ph�i - M� Dung",9,0)
	end
	for i, eventId in x009052_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x009052_OnEventRequest(sceneId,selfId,targetId,eventId)

	if GetNumText() == 0 then
		if IsHaveMission(sceneId,selfId,4021)>0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Tr�n ng߶i c�c h� c� ng�n phi�u, kh�ng th� truy�n t�ng ���c!");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900),"TransferFunc",sceneId,selfId,195,29,137)
		end
	elseif GetNumText() == 10 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{GUSU_MENPAI_46}")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 11 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{GUSU_MENPAI_47}")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 12 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{GUSU_MENPAI_48}")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 13 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{GUSU_MENPAI_49}")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		for i, findId in x009052_g_eventList do
			if eventId == findId then
				CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
				return
			end
		end
	end
end

function x009052_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x009052_g_eventList do
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
function x009052_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x009052_g_eventList do
		if missionScriptId == findId then
			x009052_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x009052_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x009052_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x009052_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x009052_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x009052_OnDie( sceneId, selfId, killerId )
end
