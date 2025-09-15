--Thúc Hà C± Tr¤nNPC....
--ÖÆÒ©´óÊ¦....

--½Å±¾ºÅ
x001190_g_ScriptId = 001190

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIdÁÐ±í
--estudy_zhiyao = 713503
--elevelup_zhiyao = 713562
--edialog_zhiyao = 713602
--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x001190_g_eventList={713503,713562,713602}

x001190_g_MsgInfo = { "#{SHGZ_0612_12}",
											"#{SHGZ_0620_34}",
											"#{SHGZ_0620_35}",
											"#{SHGZ_0620_36}",
										}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x001190_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local msgidx = random(getn(x001190_g_MsgInfo))
		AddText(sceneId, x001190_g_MsgInfo[msgidx])
	for i, eventId in x001190_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001190_OnDefaultEvent( sceneId, selfId,targetId )
	x001190_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x001190_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x001190_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x001190_g_ScriptId )
			return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x001190_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001190_g_eventList do
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
function x001190_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x001190_g_eventList do
		if missionScriptId == findId then
			x001190_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x001190_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001190_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x001190_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001190_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end
