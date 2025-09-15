--ÇÇÖÂ¹ã

--½Å±¾ºÅ
x000126_g_scriptId 				= 000126
x000126_g_shoptableindex 	= 34

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x000126_g_eventList={}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000126_OnDefaultEvent( sceneId, selfId,targetId )
	
	BeginEvent(sceneId)
		AddText( sceneId, "#{QZG_80919_1}" )
		AddNumText( sceneId, x000126_g_scriptId, "Gi¾i thi®u thß½ng nhân", 11, 1 )
		AddNumText( sceneId, x000126_g_scriptId, "M· cØa hàng", 7, 2 )

		for i, eventId in x000126_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end		
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x000126_OnEventRequest( sceneId, selfId, targetId, eventId )
	--ÌØ²úÉÌµê
	if GetNumText() == 1 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{SHANGREN_JIESHAO_02}" )		
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 2 then
		if(LuaFnGetAvailableItemCount(sceneId, selfId, 40002000) == 1 ) then
			DispatchShopItem( sceneId, selfId,targetId, x000126_g_shoptableindex )
		else
			BeginEvent(sceneId)
				AddText( sceneId, "Các hÕ không có ngân phiªu cüa thß½ng nhân, giao d¸ch giæa ta và các hÕ làm sao có th¬ thñc hi®n ðßþc?" )		
			EndEvent(sceneId)
			DispatchEventList( sceneId, selfId, targetId )
		end
	end
	
	for i, findId in x000126_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
	
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x000126_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000126_g_eventList do
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
function x000126_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x000126_g_eventList do
		if missionScriptId == findId then
			x000126_OnDefaultEvent( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x000126_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000126_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x000126_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000126_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000126_OnDie( sceneId, selfId, killerId )
end
