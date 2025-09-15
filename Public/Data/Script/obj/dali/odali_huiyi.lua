--»ÛÒ×

--½Å±¾ºÅ
x002038_g_scriptId = 002038


--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x002038_g_eventList={210209,210287}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x002038_UpdateEventList( sceneId, selfId,targetId )
	
	local  Menpai=LuaFnGetMenPai(sceneId,selfId)
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "Sß muµi"
	else
		PlayerSex = "Sß ð®"
	end
	
	BeginEvent(sceneId)	
	if Menpai == 9 then
		AddText(sceneId,"#{OBJ_dali_0017}")
	elseif Menpai == 0 then
		AddText(sceneId,"  "..PlayerSex..", võ công cüa ngß½i tiªn bµ th§tnhanh. #r#rTa cûng lâu l¡m không quay lÕi chùa, r¤t nh¾ các sß phø và sß huynh ð®")
	else
		AddText(sceneId,"  Lâu l¡m không g£p, v¾i thiên ch¤t ngß½i nhß v§y, ðáng tiªc không · Thiªu Lâm ta")
	end
	
	if	GetLevel( sceneId, selfId)<=10	then
		AddNumText(sceneId,x002038_g_scriptId,"Hãy t¾i Thiªu Lâm Tñ xem ði",9,0)
	end
	for i, eventId in x002038_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002038_OnDefaultEvent( sceneId, selfId,targetId )
	x002038_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002038_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if IsHaveMission(sceneId,selfId,4021) > 0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ngß½i có nhi®m vø ch· hàng b¢ng ðß¶ng thuÖ, d¸ch trÕm chúng ta không th¬ cung c¤p d¸ch vø cho ngß½i");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else	
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 9,95,146)
		end
		
	elseif   GetNumText()==10	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_shaolin_1}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif   GetNumText()==11	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_shaolin_2}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif   GetNumText()==12	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_shaolin_3}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif   GetNumText()==13	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_shaolin_4}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	else
		for i, findId in x002038_g_eventList do
			if eventId == findId then
				CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
				return
			end
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x002038_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002038_g_eventList do
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
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x002038_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x002038_g_eventList do
		if missionScriptId == findId then
			x002038_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x002038_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002038_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x002038_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002038_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x002038_OnDie( sceneId, selfId, killerId )
end
