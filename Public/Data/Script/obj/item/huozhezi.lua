-- »ðÕÛ×Ó,C¥n Ê¹ÓÃtoÕ ðµ ÈÎÎñµÀ¾ß
-- Liêu Tây£­²®ÑÕ(165,197) Ðu±i theo H¡c Phong

--½Å±¾ºÅ
x300025_g_scriptId = 300025

x300025_g_MissionId = 552

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x300025_g_eventList={212107}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x300025_OnDefaultEvent( sceneId, selfId, BagIndex )
	BeginEvent(sceneId)
		AddText(sceneId, "Ðu±i theo H¡c Phong")
		-- ¼ì²âÍæ¼ÒÐúng²»Ðúng ði¬mµ½ÁËC¥n toÕ ðµ Á½cáiµÀ¾ß,
		if GetItemCount( sceneId, selfId, 40002070 ) >= 1   then
			if GetItemCount( sceneId, selfId, 40002069 ) >= 1   then
				AddText(sceneId, "Các hÕ ðã ðu±i h¡c phong thành công")
				local misIndex = GetMissionIndexByID(sceneId,selfId,x300025_g_MissionId)
				SetMissionByIndex(sceneId,selfId,misIndex,0,1)
				SetMissionByIndex(sceneId,selfId,misIndex,1,1)
				-- É¾³ýÈÎÎñµÀ¾ß
				DelItem( sceneId, selfId, 40002070, 1 )
				DelItem( sceneId, selfId, 40002069, 1 )
				
				-- ²¥·Åmµt cáiÐ§¹û
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 139, 0)
				
			else
				AddText(sceneId, "Các hÕ c¥n phân sói khô")
			end
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
end

--**********************************
--Ë¢ÐÂÊÂ¼þ
--**********************************
function x300025_OnEventRequest( sceneId, selfId, targetId, eventId )
	--PrintStr("x300025_OnEventRequest")
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x300025_OnMissionAccept( sceneId, selfId, targetId )

end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x300025_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	--for i, findId in x300025_g_eventList do
	--	if missionScriptId == findId then
	--		UpdateEventList( sceneId, selfId, targetId )
	--		return
	--	end
	--end
end

function x300025_IsSkillLikeScript( sceneId, selfId)
	return 0
end


