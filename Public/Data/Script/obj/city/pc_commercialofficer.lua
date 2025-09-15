--³ÇÊÐNPC
--ÉÌÒµ¹ÙÔ±

x805017_g_scriptId = 805017
x805017_g_BuildingID12 = 9

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x805017_g_eventList = { 600017 }

-- ÈÎÎñ¼¯ÊÂ¼þ ID ÁÐ±í£¬ÕâÀàÊÂ¼þ°üº¬×ÓÊÂ¼þ
x805017_g_eventSetList = { 600017 }

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x805017_UpdateEventList( sceneId, selfId, targetId )
	local i = 1
	local eventId = 0
	local PlayerName = GetName( sceneId, selfId )

	local Humanguildid 	= GetHumanGuildID(sceneId,selfId)
	local cityguildid 	= GetCityGuildID(sceneId, selfId, sceneId)

	BeginEvent( sceneId )
		if Humanguildid == cityguildid then
			AddText( sceneId, "    Ta t× trß¾c t¾i nay coi Ðào Chu Công là tôn sß, con ðß¶ng buôn bán, hai huynh ð® ta có th¬ cùng nhau nghiên cÑu" )
			for i, eventId in x805017_g_eventList do
				CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
			end
			if IsHaveMission( sceneId, selfId, 1108 ) == 1 then
				AddNumText( sceneId, x805017_g_scriptId, "#GHoàn T¤t Nhi®m Vø Thß½ng Nghi®p", 4, 1001 )
			end
			AddNumText( sceneId, x805017_g_scriptId, "Gi¾i thi®u nhi®m vø th¸ t§p", 11, 1 )
			AddNumText( sceneId, x805017_g_scriptId, "Quän lý vòng thß½ng nghi®p", 6, 3 )
			AddNumText( sceneId, x805017_g_scriptId, "Gi¾i thi®u th¸ phß¶ng", 11, 2 )
			--life Ìí¼ÓÕâ¸ö½¨ÖþÎïµÄÏàÓ¦Éú»î¼¼ÄÜÑ¡Ïî
			CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "AddCityLifeAbilityOpt",sceneId, selfId, x805017_g_scriptId,x805017_g_BuildingID12,888)
		else
			AddText( sceneId, "    Không phäi là ngß¶i cüa bang ta, suy nghî cüa h÷ ch¡c ch¡n phäi ð£c bi®t, thß½ng trß¶ng nhß chiªn trß¶ng, ta t¯t nh¤t không nên nhi«u l¶i vçn là h½n" )
		end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x805017_OnDefaultEvent( sceneId, selfId, targetId )
	x805017_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
-- ÅÐ¶ÏÄ³¸öÊÂ¼þÊÇ·ñ¿ÉÒÔÍ¨¹ý´Ë NPC Ö´ÐÐ
--**********************************
function x805017_IsValidEvent( sceneId, selfId, eventId )
	local i = 1
	local findId = 0
	local bValid = 0

	for i, findId in x805017_g_eventList do
		if eventId == findId then
			bValid = 1
			break
		end
	end

	if bValid == 0 then
		for i, findId in x805017_g_eventSetList do
			if CallScriptFunction( findId, "IsInEventList", sceneId, selfId, eventId ) == 1 then
				bValid = 1
				break
			end
		end
	end

	return bValid
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x805017_OnEventRequest( sceneId, selfId, targetId, eventId )
	if x805017_IsValidEvent( sceneId, selfId, eventId ) == 1 then
		CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
		return
	--life ´¦ÀíÕâ¸ö½¨ÖþÎïµÄÏàÓ¦Éú»î¼¼ÄÜÑ¡Ïî
	elseif eventId ~= x805017_g_scriptId then
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnDefaultEvent",sceneId, selfId, targetId, eventId, x805017_g_scriptId, x805017_g_BuildingID12 )
		return
	end
	if GetNumText() == 1 then
		BeginEvent(sceneId)
		AddText( sceneId, "#{City_Market_Mission_Help}" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 2 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{City_Intro_JiFang}" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 3 then
		BeginEvent(sceneId)
			AddText( sceneId, "ChÑc nång này s¡p ðßþc thñc hi®n" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 888 then
		BeginEvent(sceneId)
		--life Ìí¼ÓÕâ¸ö½¨ÖþÎïµÄÏàÓ¦Éú»î¼¼ÄÜÑ¡Ïî
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnEnumerate",sceneId, selfId, targetId, x805017_g_BuildingID12 )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	end
	
	if GetNumText() == 1001 then
		if IsHaveMission( sceneId, selfId, 1108 ) <= 0 then --Chua Nhan Nhiem Vu
			BeginEvent( sceneId )
				AddText( sceneId, "Các hÕ vçn chßa nh§n Nhi®m vø Thß½ng Nghi®p nào cä?" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			local misIndex = GetMissionIndexByID(sceneId, selfId, 1108)
			local misIndexComplete = GetMissionParam(sceneId, selfId, misIndex, 0)
			if misIndexComplete >= 1 then
				BeginEvent( sceneId )
					AddText( sceneId, "ChÆng phäi ngß½i ðã hoàn t¤t nhi®m vø r°i sao?" )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
			else
				local Guild_LV = GetGuildLevel(sceneId, selfId)
				BeginEvent( sceneId )
					AddText( sceneId, "Ngß½i mu¯n dùng #GNgân Lßþng #Whay ði¬m #GC¯ng Hiªn #Wð¬ hoàn t¤t nhi®m vø?" )
					AddText( sceneId, "Chi phí Ngân Lßþng: "..Guild_LV.." #-02" )
					AddText( sceneId, "Ði¬m phí C¯ng Hiªn: "..(Guild_LV*2).."#G CH" )
					--AddText( sceneId, "#{_MONEY10000}" )
					AddNumText( sceneId, x805017_g_scriptId, "Ta dùng #GNgân Lßþng", 6, 10011 )
					AddNumText( sceneId, x805017_g_scriptId, "Ta dùng #GC¯ng Hiªn", 6, 10012 )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
			end
		end
	end
	
	if GetNumText() == 10011 then
		local Guild_LV = GetGuildLevel(sceneId, selfId)
		local NeedMoney = Guild_LV*10000;
		
		if CostMoney(sceneId,selfId,NeedMoney) == -1 then
			BeginEvent( sceneId )
				AddText( sceneId, "Ngß½i không có ðü #{_MONEY"..NeedMoney.."} ð¬ hoàn t¤t nhi®m vø Thß½ng Nghi®p!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			local misIndex = GetMissionIndexByID(sceneId, selfId, 1108)
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
			
			CallScriptFunction( 600017, "OnSubmit", sceneId, selfId, targetId, 99999 )
			
			BeginEvent( sceneId )
				AddText( sceneId, "Các hÕ ðã hoàn t¤t nhi®m vø Thß½ng Nghi®p!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		end
	end
	
	if GetNumText() == 10012 then
		local Guild_LV = GetGuildLevel(sceneId, selfId)
		local NeedCH = Guild_LV*2;
		local CurrCH = CityGetAttr(sceneId, selfId, GUILD_CONTRIB_POINT)
		
		if NeedCH > CurrCH then
			BeginEvent( sceneId )
				AddText( sceneId, "Ngß½i không có ðü #G"..NeedCH.."#W ði¬m #GC¯ng Hiªn #Wð¬ hoàn t¤t nhi®m vø Thß½ng Nghi®p!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, -NeedCH )
			local misIndex = GetMissionIndexByID(sceneId, selfId, 1108)
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
			
			CallScriptFunction( 600017, "OnSubmit", sceneId, selfId, targetId, 99999 )

			BeginEvent( sceneId )
				AddText( sceneId, "Các hÕ ðã hoàn t¤t nhi®m vø Thß½ng Nghi®p!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		end
	end
	
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x805017_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	if x805017_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		local ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
		if ret > 0 then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
		elseif ret == -1 then
			x805017_NotifyFailTips( sceneId, selfId, "Ngß½i hi®n không th¬ nh§n nhi®m vø này" )
		elseif ret == -2 then
			x805017_NotifyFailTips( sceneId, selfId, "Không th¬ tiªp nh§n nhi«u nhi®m vø" )
		end

		return
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x805017_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	if x805017_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		x805017_UpdateEventList( sceneId, selfId, targetId )
		return
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x805017_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	if x805017_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
		return
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x805017_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	if x805017_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
		return
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x805017_OnDie( sceneId, selfId, killerId )
end

function x805017_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
