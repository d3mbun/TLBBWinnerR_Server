--Tô ChâuNPC		·ìÈÒnpc		1Ñ§Ï°·ìÈÒ¼¼ÄÜ		2·ìÈÒ¼¼ÄÜË ði¬m÷
--Óà»¯Áú
--Éú»î¼¼ÄÜnpc

--½Å±¾ºÅ
x001042_g_ScriptId = 001042

--ÉÌµê±àºÅ
x001042_g_shoptableindex=68

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIdÁÐ±í
--estudy_fengren = 713506
--elevelup_fengren = 713565
--edialog_fengren = 713605
--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x001042_g_eventList={713506,713565,713605}
--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x001042_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"#{OBJ_suzhou_0015}")
	for i, eventId in x001042_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	--ÉÌµêÑ¡Ïî
	AddNumText(sceneId,x001042_g_ScriptId,"Mua hình mçu",7,ABILITY_TEACHER_SHOP)
	AddNumText(sceneId,x001042_g_ScriptId,"#{INTERFACE_XML_1195}",7,12)	 
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001042_OnDefaultEvent( sceneId, selfId,targetId )
	x001042_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x001042_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==ABILITY_TEACHER_SHOP	then
		DispatchShopItem( sceneId, selfId,targetId, x001042_g_shoptableindex )
	elseif GetNumText()== 12 then
	  DispatchShopItem( sceneId, selfId,targetId, 200 ) 
	end
	for i, findId in x001042_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x001042_g_ScriptId )
		return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x001042_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001042_g_eventList do
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
function x001042_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x001042_g_eventList do
		if missionScriptId == findId then
			x001042_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x001042_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001042_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x001042_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001042_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x001042_OnDie( sceneId, selfId, killerId )
end
