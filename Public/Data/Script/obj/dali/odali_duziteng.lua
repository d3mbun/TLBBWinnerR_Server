--¶Å×ÓÌÚ

--½Å±¾ºÅ
x002028_g_scriptId = 002028

x002028_g_shoptableindex=5

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x002028_g_eventList = { 210201, 210202, 210203 }

x002028_g_ControlScript = 050009
x002028_g_ExchangeList = { id = 40004305, name = "Mua thßþng ph¦m", cost = 55 }

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x002028_UpdateEventList( sceneId, selfId, targetId )
    local PlayerName = GetName( sceneId, selfId )
	local PlayerSex = GetSex( sceneId, selfId )

	if PlayerSex == 0 then
		PlayerSex = " cô nß½ng "
	else
		PlayerSex = " các hÕ "
	end

	BeginEvent( sceneId )
		AddText( sceneId, "  " .. PlayerName .. PlayerSex .. ", có mu¯n nªm thØ món ði¬m tâm n±i tiªng cüa ÐÕi Lý không? Bäo ðäm ngß½i ån hªt 8 bát lÕi mu¯n ån tiªp 8 bát næa, chÆng mu¯n bö ði")
		AddNumText( sceneId, x002028_g_scriptId, "Mua thñc ph¦m", 7, 0 )

		for i, eventId in x002028_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end

		if CallScriptFunction( x002028_g_ControlScript, "IsMidAutumnPeriod", sceneId, selfId ) > 0 then
			--AddNumText( sceneId, x002028_g_scriptId, "»»È¡Ê³²Ä", 6, 1 )
			--AddNumText( sceneId, x002028_g_scriptId, "Ê³²ÄÓÐÊ²Ã´ÓÃ", 11, 2 )
		end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002028_OnDefaultEvent( sceneId, selfId, targetId )
	x002028_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002028_OnEventRequest( sceneId, selfId, targetId, eventId )
	local i, findId

	for i, findId in x002028_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end

	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x002028_g_shoptableindex )
	end

	if CallScriptFunction( x002028_g_ControlScript, "IsMidAutumnPeriod", sceneId, selfId ) > 0 then
		if GetNumText() == 1 then
			local score = GetMissionData( sceneId, selfId, MD_MIDAUTUMN_SCORE )
			if score < x002028_g_ExchangeList.cost then
				x002028_NotifyFailBox( sceneId, selfId, targetId, "    C¥n phäi ð±i 1 ph¥n" .. x002028_g_ExchangeList.name ..
				", c¥n tích ði¬m" .. x002028_g_ExchangeList.cost .. "Ði¬m, hi®n gi¶ ngß½i chï có" .. score .. "Ði¬m, hình nhß không ðü" )
				return
			end

			BeginEvent( sceneId )
				AddText( sceneId, "  Ði¬m tích lûy trung thu cüa ngß½i hi®n" .. score .. "Ði¬m, ð±i l¤y mµt ph¥n" ..
					x002028_g_ExchangeList.name .. ", c¥n tích ði¬m" .. x002028_g_ExchangeList.cost .. "Ði¬m, ngß½i xác ð¸nh ð±i không?" )

				AddNumText( sceneId, x002028_g_scriptId, "Xác ð¸nh mu¯n ð±i", -1, 3 )
				AddNumText( sceneId, x002028_g_scriptId, "Ta chï ði qua", -1, 4 )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		elseif GetNumText() == 2 then
			x002028_NotifyFailBox( sceneId, selfId, targetId, "    Khß½ng Lý · LÕc Dß½ng [127, " ..
				"154], Bao Thª Vinh · Tô Châu [190,168], Ð² TØ Ð¢ng · ÐÕi Lý [109,170] ð¬ ð±i" ..
				"Sau khi ðã có 3 loÕi nguyên li®u ð° ån khác nhau, hãy tìm NhÕc Thß¶ng Viên · Tô Châu [193,148] ðßa t¾i Tây H° ð±i l¤y Bánh Trung thu" ..
				"V§t ph¦m ð£c bi®t" )
			return
		elseif GetNumText() == 3 then
			local score = GetMissionData( sceneId, selfId, MD_MIDAUTUMN_SCORE )
			if score < x002028_g_ExchangeList.cost then
				return
			end

			if LuaFnTryRecieveItem( sceneId, selfId, x002028_g_ExchangeList.id, QUALITY_MUST_BE_CHANGE ) < 0 then
				x002028_NotifyFailBox( sceneId, selfId, targetId, "    Không gian trong tay näi ðã ð¥y" )
			end

			score = score - x002028_g_ExchangeList.cost
			SetMissionData( sceneId, selfId, MD_MIDAUTUMN_SCORE, score )
			x002028_NotifyFailBox( sceneId, selfId, targetId, "    Ði¬m tích lûy dß th×a: " .. score .. "." )
			return
		elseif GetNumText() == 4 then
			BeginUICommand( sceneId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 1000 )
		end
		return
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x002028_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	local i, findId
	for i, findId in x002028_g_eventList do
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
function x002028_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	local i, findId
	for i, findId in x002028_g_eventList do
		if missionScriptId == findId then
			x002028_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x002028_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	local i, findId
	for i, findId in x002028_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x002028_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	local i, findId
	for i, findId in x002028_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x002028_OnDie( sceneId, selfId, killerId )
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x002028_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
