--Tô ChâuNPC
--ÅË¿£
--mµt °ã

x001040_g_scriptId = 001040

--ËùÓµÓĞtoÕ ğµ ÊÂ¼şIDÁĞ±í
x001040_g_eventList={800115}

--**********************************
--ÊÂ¼şÁĞ±í
--**********************************
function x001040_UpdateEventList( sceneId, selfId,targetId )
	
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	--AddText(sceneId,"  ÒÔ³ğºŞ½â¾ö³ğºŞ,Ö»»á´øÀ´¸ü¶àtoÕ ğµ ³ğºŞ,ÄãÈ·ÈÏÒªM· ra ³ğÉ±Ã´,ÄÇÃ´ÄãÒ²½«ÊÜµ½ÑÏÀ÷toÕ ğµ ³Í·£.")	
	for i, eventId in x001040_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	
	AddNumText( sceneId, x001040_g_scriptId, "Gi¾i thi®u quyªt ğ¤u", 11, 10 )
	
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x001040_OnDefaultEvent( sceneId, selfId,targetId )
	x001040_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞmµt Ïî
--**********************************
function x001040_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 10 then
			BeginEvent(sceneId)	
					
				AddText( sceneId, "#{function_help_068}" )
								
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end

	for i, findId in x001040_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end
