--Â·ÈýÄï

--½Å±¾ºÅ
x002042_g_scriptId = 002042


--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x002042_g_eventList={210209,210287}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x002042_UpdateEventList( sceneId, selfId,targetId )
	local  Menpai=LuaFnGetMenPai(sceneId,selfId)
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "Sß muµi"
	else
		PlayerSex = "Sß ð®"
	end
	
	BeginEvent(sceneId)	
	if Menpai == 9 then
		AddText(sceneId,"#{OBJ_dali_0021}")
	elseif Menpai == 4 then
		AddText(sceneId,"  "..PlayerSex..", ð¬ Tam Nß½ng xem ði. Ha ha, võ công cüa ngß½i tiªn bµ r¤t nhanh, ngß½i cûng ð©p ra nhi«u, xem ra thuÖ th± Nga My S½n r¤t hþp ngß½i")
	else
		AddText(sceneId,"  Lâu l¡m không g£p ngß½i, v¾i thiên ch¤t nhß v§y cüa ngß½i, th§t ðáng tiªc lÕi không · Linh ThÑu Cung Thiên S½n ta")
	end
	
	if	GetLevel( sceneId, selfId)<=10	then
		AddNumText(sceneId,x002042_g_scriptId,"Ði lên núi Nga My xem xem",9,0)
	end
	misIndex = GetMissionIndexByID(sceneId,selfId,1060)			--µÃµ½ÈÎÎñµÄÐòÁÐºÅ
	if	IsHaveMission(sceneId,selfId,1060) > 0	 then
		if	GetMissionParam( sceneId, selfId, misIndex,0) < 1  and	 GetMissionParam( sceneId, selfId, misIndex,2) == 2   then
			AddNumText(sceneId,x002042_g_scriptId,"Ðây là thß sß huynh ta gØi cho huynh",4,1)
		end
	end
	for i, eventId in x002042_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002042_OnDefaultEvent( sceneId, selfId,targetId )
	x002042_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002042_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if IsHaveMission(sceneId,selfId,4021) > 0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ngß½i có nhi®m vø ch· hàng b¢ng ðß¶ng thuÖ, d¸ch trÕm chúng ta không th¬ cung c¤p d¸ch vø cho ngß½i");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else	
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 15,89,144)
		end
	elseif	GetNumText()==1	then
		misIndex = GetMissionIndexByID(sceneId,selfId,1060)			--µÃµ½ÈÎÎñµÄÐòÁÐºÅ
		DelItem (  sceneId, selfId, 40002115, 1)	
		SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
		BeginEvent(sceneId)
			AddText(sceneId,"Quay v« bäo v¾i Hu® Phß½ng sß huynh r¢ng, thß cüa huynh ¤y ta ðã nh§n ðßþc, cäm ½n ngß½i")
		EndEvent( )
		DispatchEventList(sceneId,selfId,targetId)
		BeginEvent(sceneId)
			AddText(sceneId,"ÈÎ„ÕÍê³É£¡")
		EndEvent( )
		DispatchMissionTips(sceneId,selfId)

	elseif   GetNumText()==10	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_emei_1}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif   GetNumText()==11	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_emei_2}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif   GetNumText()==12	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_emei_3}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif   GetNumText()==13	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_emei_4}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	else
		for i, findId in x002042_g_eventList do
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
function x002042_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002042_g_eventList do
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
function x002042_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x002042_g_eventList do
		if missionScriptId == findId then
			x002042_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x002042_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002042_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x002042_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002042_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x002042_OnDie( sceneId, selfId, killerId )
end
