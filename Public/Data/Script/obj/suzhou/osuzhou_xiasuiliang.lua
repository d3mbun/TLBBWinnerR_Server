-- 001071
-- ÏÄËìÁ¼ 

--½Å±¾ºÅ
x001071_g_scriptId = 001071

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x001071_g_eventList={125020}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x001071_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  #G$N#W Anh hùng! Ðªn Tung S½n phong thi«n ðài cÕnh kÛ trß¶ng bi¬u hi®n thñc lñc cüa các hÕ ði! #GCác hÕ trß¾c khi bß¾c vào phong thi«n ðài nh¤t thiªt phäi l§p 1 t± ðµi, t¤t cä ngß¶i trong t± ðµi lúc vào phong thi«n ðài s¨ thuµc tr§n hình");
		for i, eventId in x001071_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001071_OnDefaultEvent( sceneId, selfId,targetId )
	x001071_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x001071_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x001071_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x001071_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001071_g_eventList do
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
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x001071_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x001071_g_eventList do
		if missionScriptId == findId then
			x001071_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x001071_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001071_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x001071_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001071_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x001071_OnDie( sceneId, selfId, killerId )
	
end
