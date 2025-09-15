--NPC
--
--½Å±¾ºÅ
x000148_g_scriptId = 000148

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x000148_g_eventList={500621, 500600, 500606, 500601, 500602, 500603, 500604, 500605, 500607, 500608, 500612, 500613, 500614, 500615, 500616}

--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000148_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

--**********************************
--NPC¶Ô»°
--**********************************
		AddText(sceneId,"  Giang s½n b¯i hæ nhân tài xu¤t, các lãnh phong tao s± bách niên. Bí Nhân và Tri®u Thiên Sß cüa ÐÕi Lý là huynh ð® ð°ng môn. Nay trên giang h° xu¤t hi®n nhân tài, ta vui m×ng khôn xiªt. Con ðß¶ng võ h÷c thì không hªt b¢ng phÆng. Các hÕ có ch² nào không")
		for i, eventId in x000148_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x000148_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x000148_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x000148_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000148_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId, targetId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId, missionScriptId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x000148_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x000148_g_eventList do
		if missionScriptId == findId then
			x000148_OnDefaultEvent( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x000148_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000148_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x000148_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000148_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000148_OnDie( sceneId, selfId, killerId )
end
