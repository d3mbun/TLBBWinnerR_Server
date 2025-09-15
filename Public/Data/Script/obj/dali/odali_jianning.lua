--¼òÄþ

--½Å±¾ºÅ
x002039_g_scriptId = 002039


--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x002039_g_eventList={210209,210287}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x002039_UpdateEventList( sceneId, selfId,targetId )
	
	local  Menpai=LuaFnGetMenPai(sceneId,selfId)
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "Con nha ð¥u ðó"
	else
		PlayerSex = " huynh ð®"
	end
	
	BeginEvent(sceneId)	
	if Menpai == 9 then
		AddText(sceneId,"#{OBJ_dali_0018}")
	elseif Menpai == 2 then
		AddText(sceneId,"  "..PlayerSex..", võ công cüa ngß½i tiªn bµ th§t nhanh. #r#rCái Bang ta ðúng là sóng Trß¶ng H°ng l¾p sau xô l¾p trß¾c, nhân tài xu¤t thª. #r#rHa ha, xem ra ta th§t sñ già r°i")
	else
		AddText(sceneId,"  Lâu l¡m không g£p, v¾i thiên ch¤t ngß½i nhß v§y, ðáng tiªc không · tr· thành huynh ð® Cái Bang")
	end
	
	if	GetLevel( sceneId, selfId)<=10	then
		AddNumText(sceneId,x002039_g_scriptId,"Hãy t¾i Cái Bang xem ði",9,0)
	end
	for i, eventId in x002039_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002039_OnDefaultEvent( sceneId, selfId,targetId )
	x002039_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002039_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if IsHaveMission(sceneId,selfId,4021) > 0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ngß½i có nhi®m vø ch· hàng b¢ng ðß¶ng thuÖ, d¸ch trÕm chúng ta không th¬ cung c¤p d¸ch vø cho ngß½i");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else	
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 10,92,153)
		end

	elseif   GetNumText()==10	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_gaibang_1}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif   GetNumText()==11	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_gaibang_2}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif   GetNumText()==12	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_gaibang_3}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif   GetNumText()==13	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_gaibang_4}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	else
		for i, findId in x002039_g_eventList do
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
function x002039_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002039_g_eventList do
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
function x002039_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x002039_g_eventList do
		if missionScriptId == findId then
			x002039_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x002039_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002039_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x002039_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002039_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x002039_OnDie( sceneId, selfId, killerId )
end
