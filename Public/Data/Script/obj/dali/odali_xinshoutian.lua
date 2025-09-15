--ÕÔÌìÊ¦

--½Å±¾ºÅ
x002030_g_scriptId = 002030


--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x002030_g_eventList={210200,210204,210205,210208,210210,210212,210213,210214,210216,210217,210220,210223, 210224, 210225, 210229, 210230, 210232, 210238, 210239, 210237, 210240, 200080, 200083, 200086, 200091, 200094,200095,210241,050022}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x002030_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)

	local  PlayerName=GetName(sceneId,selfId)
	local  PlayerSex=GetSex(sceneId,selfId)
	local  nLevel=GetLevel(sceneId,selfId)
	
	if PlayerSex == 0 then
		PlayerSex = " muµi muµi"
	else
		PlayerSex = "huynh ð®"
	end
	local IsNew = GetMissionFlag( sceneId, selfId, MF_Dialog_01 )
	if IsNew == 0 then
		AddText(sceneId,"  "..PlayerName..PlayerSex.."#{OBJ_dali_0011}") --#r  ÔÚÄãµÈ¼¶µÍµÄÊ±ºò£¬ÄãÒ²¿ÉÒÔÀ´ÎÒÕâÀï°ïÎÒ×öÐ©ÊÂÇé£¬ÎÒ»á¸øÄã¾­ÑéÒÔ¼°½ðÇ®µÈ²»Í¬µÄ½±Àø£¬°ïÖúÄã³ÉÎªÒ»¸öÕæÕýµÄ´óÏÀ¡£
		SetMissionFlag( sceneId, selfId, MF_Dialog_01, 1 )
	elseif IsNew == 1 then
		if GetLevel( sceneId, selfId ) >= 10 and GetMenPai( sceneId, selfId ) == MP_WUMENPAI then
			AddText( sceneId, "  "..PlayerName..PlayerSex.."#{OBJ_dali_0054}" )
		else
			AddText( sceneId, "  "..PlayerName..PlayerSex.."#{OBJ_dali_0012}" )
		end
	end

	if nLevel >= 20 then
		AddNumText( sceneId, x002030_g_scriptId, "Nhi®m vø k¸ch tình", 11, 10 )
	end

	if nLevel >= 50 then
		AddNumText( sceneId, x002030_g_scriptId, "Thiên Thß cØ liên danh", 6, 199 )
		AddNumText( sceneId, x002030_g_scriptId, "Thiên Thß cØ liên danh gi¾i thi®u", 11, 200 )
	end

	for i, eventId in x002030_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	
	
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002030_OnDefaultEvent( sceneId, selfId,targetId )
	x002030_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002030_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 10 then
			BeginEvent(sceneId)	
					
				AddText( sceneId, "#{function_help_073}" )
				AddNumText( sceneId, x002030_g_scriptId, "Hi®n gi¶ ta ðã tiªn hành ðªn ðâu r°i?", 11, 11 )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end
	
	if GetNumText() == 11 then
		CallScriptFunction( 200098, "DispatchJuqintInfo",sceneId, selfId, targetId )
		return
	end

	--ÌìÏÂÎäÑ§¹¦ÄÜ
	if GetNumText() == 198 then
		--¼ì²éÉÆ¶ñÖµ
		local gbvalue = LuaFnGetHumanGoodBadValue( sceneId, selfId )
		if gbvalue < 100 then
			BeginEvent( sceneId )
				AddText( sceneId, "Ngß½i không ðü giá tr¸ thi®n ác, ta không th¬ ðßa thß tiªn cØ cho ngß½i." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end

		--¼ì²éÈÎÎñÀ¸¿Õ¼ä
		LuaFnBeginAddItem( sceneId )
			LuaFnAddItem( sceneId, 40002108, 1)
		local retc = LuaFnEndAddItem( sceneId, selfId )
		if 1 ~= retc then
			BeginEvent( sceneId )
				AddText( sceneId, "Ô ðÕo cø không ðü ch±." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		
		--¼ÓÍÆ¼öÐÅ
		BeginAddItem(sceneId)
			AddItem( sceneId,40002108,1)
		local ret = EndAddItem(sceneId,selfId)
		if 1 == ret then
			AddItemListToHuman(sceneId,selfId)
			--¿ÛÉÆ¶ñÖµ
			gbvalue = gbvalue - 100
			LuaFnSetHumanGoodBadValue( sceneId, selfId, gbvalue )
			
			--ÆÁÄ»ÖÐ¼äÌáÊ¾ÐÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,"Ngß½i nh§n ðßþc 1 lá thß tiªn cØ.")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			--·¢ËÍÌØÐ§
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,1000)
		end
		return
	end	
	
	--ÌìÏÂÎäÑ§
	if GetNumText() == 199 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{function_help_100}" )
			AddNumText( sceneId, x002030_g_scriptId, "Giá tr¸ thi®n ác là 100 ta cho ngß½i 1 lá thß tiªn cØ", 7, 198)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	--ÌìÏÂÎäÑ§½éÉÜ
	if GetNumText() == 200 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{function_help_100}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	for i, findId in x002030_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x002030_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002030_g_eventList do
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
function x002030_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x002030_g_eventList do
		if missionScriptId == findId then
			x002030_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x002030_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002030_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x002030_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002030_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x002030_OnDie( sceneId, selfId, killerId )
end

--**********************************
--Ê±ÖÓÊÂ¼þ
--**********************************
function x002030_OnCharacterTimer( sceneId, selfId, dataId, nowtime )
--³¡¾°ºÅ£¬ObjID£¬¹ÖÎï±íºÅ£¬Ê±¼äÖµ(ºÁÃë)

end