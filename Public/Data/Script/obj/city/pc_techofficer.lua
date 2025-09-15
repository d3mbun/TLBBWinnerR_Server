--³ÇÊĞNPC
--¿Æ¼¼¹ÙÔ±

x805015_g_scriptId = 805015
x805015_g_BuildingID9 = 13

--ËùÓµÓĞµÄÊÂ¼şIDÁĞ±í
x805015_g_eventList = { 600012 }

-- ÈÎÎñ¼¯ÊÂ¼ş ID ÁĞ±í£¬ÕâÀàÊÂ¼ş°üº¬×ÓÊÂ¼ş
x805015_g_eventSetList = { 600012 }

--ÁìÈ¡ÌÌ½ğÃûÌûĞèÒªµÄ°ï¹±µãÊı	--add by xindefeng
x805015_g_MingTieNeedBangGong = 50
--ÌÌ½ğÃûÌûID	--add by xindefeng
x805015_g_TangJinMingTieID = 30505205
--Ã¿´Î¿ÉÒÔÁìÈ¡ÌÌ½ğÃûÌûÊıÁ¿
x805015_g_TangJinMingTieCount = 1

--**********************************
--ÊÂ¼şÁĞ±í
--**********************************
function x805015_UpdateEventList( sceneId, selfId, targetId )
	local i = 1
	local eventId = 0
	
	local Humanguildid 	= GetHumanGuildID(sceneId,selfId)
	local cityguildid 	= GetCityGuildID(sceneId, selfId, sceneId)

	BeginEvent( sceneId )
		if Humanguildid == cityguildid then
			AddText( sceneId, "    HÑng thú cüa Mãn Thành, ğ«u t§p trung vào kÛ ngh® uyên thâm, chúng ta là huynh ğ® cùng bang, có gì c¥n ta giúp, mau nói ği." )
			for i, eventId in x805015_g_eventList do
				CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
			end
			
			if IsHaveMission( sceneId, selfId, 1107 ) == 1 then 
				AddNumText( sceneId, x805015_g_scriptId, "#GHoàn T¤t Nhi®m Vø KÛ Thu§t", 4, 1001 )
			end
			
			AddNumText( sceneId, x805015_g_scriptId, "Gi¾i thi®u nhi®m vø khoa h÷c kÛ thu§t", 11, 1 )
			--AddNumText( sceneId, x805015_g_scriptId, "SØa chæa danh xßng bang hµi", 6, 3 )	--Íõmµt ´¨ÒªÇó¸Éµô--del by xindefeng
			AddNumText( sceneId, x805015_g_scriptId, "Nghiên cÑu thß½ng ph¦m m¾i", 6, 4 )
			AddNumText( sceneId, x805015_g_scriptId, "Ğúc tßşng thành th¸", 6, 5 )
			AddNumText( sceneId, x805015_g_scriptId, "Sáng chª bang huy cho bang hµi", 6, 6 )
			AddNumText( sceneId, x805015_g_scriptId, "Gi¾i thi®u thß phòng", 11, 2 )
			AddNumText( sceneId, x805015_g_scriptId, "Lînh Nång Kim danh thiªp", 6, 20 )	--add by xindefeng
			AddNumText( sceneId, x805015_g_scriptId, "V« lînh bang hµi tñ ğính danh hi®u", 11, 22 )	--add by xindefeng
		
			--life Ìí¼ÓÕâ¸ö½¨ÖşÎïµÄÏàÓ¦Éú»î¼¼ÄÜÑ¡Ïî
			CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "AddCityLifeAbilityOpt",sceneId, selfId, x805015_g_scriptId,x805015_g_BuildingID9,888)
		else
			local PlayerGender = GetSex( sceneId, selfId )
			local rank

			if PlayerGender == 0 then
				rank = "Cô nß½ng "
			elseif PlayerGender == 1 then
				rank = "Tiên sinh"
			else
				rank = "Xin höi"
			end

			AddText( sceneId, "    A! " .. rank .. " Không gi¯ng nhß ngß¶i trong b±n bang, ti¬u sinh không ti®n nói nhi«u cái ğó." )
		end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x805015_OnDefaultEvent( sceneId, selfId, targetId )
	x805015_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
-- ÅĞ¶ÏÄ³¸öÊÂ¼şÊÇ·ñ¿ÉÒÔÍ¨¹ı´Ë NPC Ö´ĞĞ
--**********************************
function x805015_IsValidEvent( sceneId, selfId, eventId )
	local i = 1
	local findId = 0
	local bValid = 0

	for i, findId in x805015_g_eventList do
		if eventId == findId then
			bValid = 1
			break
		end
	end

	if bValid == 0 then
		for i, findId in x805015_g_eventSetList do
			if CallScriptFunction( findId, "IsInEventList", sceneId, selfId, eventId ) == 1 then
				bValid = 1
				break
			end
		end
	end

	return bValid
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x805015_OnEventRequest( sceneId, selfId, targetId, eventId )
	if x805015_IsValidEvent( sceneId, selfId, eventId ) == 1 then
		CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
		return
	--life ´¦ÀíÕâ¸ö½¨ÖşÎïµÄÏàÓ¦Éú»î¼¼ÄÜÑ¡Ïî
	elseif eventId ~= x805015_g_scriptId then
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnDefaultEvent",sceneId, selfId, targetId, eventId, x805015_g_scriptId, x805015_g_BuildingID9 )
		return
	end
	if GetNumText() == 1 then
		BeginEvent(sceneId)
		AddText( sceneId, "#{City_Tec_Mission_Help}" )		
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2 then
		BeginEvent(sceneId)
		AddText( sceneId, "#{City_Intro_ShuFang}" )		
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )

	--elseif GetNumText() == 3 then--ÍõÒ»´¨ÒªÇó¸Éµô--del by xindefeng
	--	BeginEvent(sceneId)
	--	AddText( sceneId, "Õâ¸ö¹¦ÄÜ¼´½«¿ª·Å" )		
	--	EndEvent(sceneId)
	--	DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 4 then
		BeginEvent(sceneId)
		AddText( sceneId, "ChÑc nång này s¡p ğßşc thñc hi®n" )		
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 5 then
		BeginEvent(sceneId)
		AddText( sceneId, "ChÑc nång này s¡p ğßşc thñc hi®n" )		
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 6 then
		BeginEvent(sceneId)
		AddText( sceneId, "ChÑc nång này s¡p ğßşc thñc hi®n" )		
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 20 then																--ÁìÈ¡ÌÌ½ğÃûÌû	--add by xindefeng
		-- ¼ÓÈëÈ·ÈÏÒ³Ãæ			add by WTT
		BeginEvent(sceneId)
			-- ÁìÈ¡ÌÌ½ğÃûÌûĞèÒªÏûºÄ50µã°ï»á¹±Ï×¶È¡£ÄãÈ·¶¨ÒªÁìÈ¡Âğ£¿
			AddText( sceneId, "#{TJMT_090213_01}" )
			--È·¶¨¶Ò»»°´Å¥
			AddNumText(sceneId, x805015_g_scriptId, "Ğúng, ta xác nh§n", 6, 201)				
			--Tr· v«ÉÏmµt Ò³°´Å¥
			AddNumText(sceneId, x805015_g_scriptId, "Không, t× bö", 6, 202)		
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 201 then																-- È·ÈÏÁìÈ¡ÌÌ½ğÃûÌû		add by WTT
		x805015_GetTangJinMinTie(sceneId, selfId, targetId)

	elseif GetNumText() == 202 then																-- ·ÅÆúÁìÈ¡ÌÌ½ğÃûÌû		add by WTT
		BeginEvent( sceneId )
			x805015_OnDefaultEvent( sceneId, selfId, targetId )				-- ·µ»ØÉÏÒ»Ò³
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif GetNumText() == 22 then	--¹ØÓÚÁìÈ¡°ï»á×Ô¶¨Òå³ÆºÅ	--add by xindefeng
		BeginEvent(sceneId)
			AddText( sceneId, "#{TangJinMingTie_Help}")
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 888 then
		BeginEvent(sceneId)
		--life Ìí¼ÓÕâ¸ö½¨ÖşÎïµÄÏàÓ¦Éú»î¼¼ÄÜÑ¡Ïî
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnEnumerate",sceneId, selfId, targetId, x805015_g_BuildingID9 )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	end
	
	if GetNumText() == 1001 then
		if IsHaveMission( sceneId, selfId, 1107 ) <= 0 then --Chua Nhan Nhiem Vu
			BeginEvent( sceneId )
				AddText( sceneId, "Các hÕ vçn chßa nh§n Nhi®m vø KÛ Thu§t nào cä?" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			local misIndex = GetMissionIndexByID(sceneId, selfId, 1107)
			local misIndexComplete = GetMissionParam(sceneId, selfId, misIndex, 0)
			if misIndexComplete >= 1 then
				BeginEvent( sceneId )
					AddText( sceneId, "ChÆng phäi ngß½i ğã hoàn t¤t nhi®m vø r°i sao?" )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
			else
				local Guild_LV = GetGuildLevel(sceneId, selfId)
				BeginEvent( sceneId )
					AddText( sceneId, "Ngß½i mu¯n dùng #GNgân Lßşng #Whay ği¬m #GC¯ng Hiªn #Wğ¬ hoàn t¤t nhi®m vø?" )
					AddText( sceneId, "Chi phí Ngân Lßşng: "..Guild_LV.." #-02" )
					AddText( sceneId, "Ği¬m phí C¯ng Hiªn: "..(Guild_LV*2).."#G CH" )
					--AddText( sceneId, "#{_MONEY10000}" )
					AddNumText( sceneId, x805015_g_scriptId, "Ta dùng #GNgân Lßşng", 6, 10011 )
					AddNumText( sceneId, x805015_g_scriptId, "Ta dùng #GC¯ng Hiªn", 6, 10012 )
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
				AddText( sceneId, "Ngß½i không có ğü #{_MONEY"..NeedMoney.."} ğ¬ hoàn t¤t nhi®m vø KÛ Thu§t!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			local misIndex = GetMissionIndexByID(sceneId, selfId, 1107)
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
			
			CallScriptFunction( 600012, "OnSubmit", sceneId, selfId, targetId, 99999 )
			
			BeginEvent( sceneId )
				AddText( sceneId, "Các hÕ ğã hoàn t¤t nhi®m vø KÛ Thu§t!" )
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
				AddText( sceneId, "Ngß½i không có ğü #G"..NeedCH.."#W ği¬m #GC¯ng Hiªn #Wğ¬ hoàn t¤t nhi®m vø KÛ Thu§t!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, -NeedCH )
			local misIndex = GetMissionIndexByID(sceneId, selfId, 1107)
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
			
			CallScriptFunction( 600012, "OnSubmit", sceneId, selfId, targetId, 99999 )

			BeginEvent( sceneId )
				AddText( sceneId, "Các hÕ ğã hoàn t¤t nhi®m vø KÛ Thu§t!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		end
	end
	
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x805015_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	if x805015_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		local ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
		if ret > 0 then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
		elseif ret == -1 then
			x805015_NotifyFailTips( sceneId, selfId, "Ngß½i hi®n không th¬ nh§n nhi®m vø này" )
		elseif ret == -2 then
			x805015_NotifyFailTips( sceneId, selfId, "Không th¬ tiªp nh§n nhi«u nhi®m vø" )
		end

		return
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x805015_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	if x805015_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		x805015_UpdateEventList( sceneId, selfId, targetId )
		return
	end
end

--**********************************
--¼ÌĞø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x805015_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	if x805015_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
		return
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x805015_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	if x805015_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
		return
	end
end

--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x805015_OnDie( sceneId, selfId, killerId )
end

function x805015_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--ÁìÈ¡ÌÌ½ğÃûÌû	--add by xindefeng
--**********************************
function x805015_GetTangJinMinTie(sceneId, selfId, targetId)
	--¼ì²â°ï¹±
	local szMsg = nil
	local nBangGongPoint = CityGetAttr(sceneId, selfId, GUILD_CONTRIB_POINT)	--»ñÈ¡°ï¹±ÊıÁ¿
  if nBangGongPoint < x805015_g_MingTieNeedBangGong then
  	szMsg = format("    Ği¬m c¯ng hiªn không ğü #G%d#W. Không th¬ ğ±i ğßşc danh hi®u này.", x805015_g_MingTieNeedBangGong)
  	x805015_NotifyFailTips( sceneId, selfId, szMsg)
  	return
  end
  	
  --¼ì²â±³°üÊÇ·ñÓĞµØ·½
	if (LuaFnGetPropertyBagSpace( sceneId, selfId ) < x805015_g_TangJinMingTieCount) then
		--ĞÑÄ¿ÌáÊ¾"¿Õ¼ä²»×ã"
		x805015_NotifyFailTips(sceneId, selfId, "#{YRJ_BagFullTip}")
		return
	end	
	
	--Ìõ¼şÍ¨¹ı
	
	--É¾³ı°ï¹±
  local ret = CityChangeAttr(sceneId, selfId, 6, -x805015_g_MingTieNeedBangGong)
	if not ret or ret ~= 1 then		
		x805015_NotifyFailTips(sceneId, selfId, "    Không th¬ kh¤u tr× Bang c¯ng!")	--ĞÑÄ¿ÌáÊ¾"ÎŞ·¨É¾³ı°ï¹±"
		return
	end
	
	--·¢·ÅÒ»¸ö"ÌÌ½ğÃûÌû"
	BeginAddItem(sceneId)
		AddItem(sceneId, x805015_g_TangJinMingTieID, x805015_g_TangJinMingTieCount)
	EndAddItem(sceneId, selfId)
	AddItemListToHuman(sceneId, selfId)--¼ÓÎïÆ·¸øÍæ¼Ò
	
	--ÍêÊÂÁË,ĞÂ½çÃæ:ÄúÊÕºÃ:)
	BeginEvent( sceneId )
		AddText( sceneId, "    Ğây là #GThi®p vàng#W, c¥m l¤y và sØ døng t¯t!" )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
