-- LÕc Dß½ngNPC
-- ÄôÕþ
-- ÆÕÍ¨

--½Å±¾ºÅ
x000111_g_ScriptId = 000111

--Ä¿±êNPC
x000111_g_name = "ÄôÕþ"

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í {ÊÕÍ½,³öÊ¦,Öð³öÊ¦ÃÅ,ÅÑÊ¦,Éýc¤pÊ¦µÂµÈc¤p,Ê¦Í½ÇéÉî½±Àø}
--x000111_g_RelationEventList = { 806008, 806007, 806009, 806006, 806015 }
--È¥µô³öÊ¦toÕ ðµ Éè¶¨
x000111_g_RelationEventList = { 806019, 806008, 806009, 806006, 806015, 806018 }

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000111_OnDefaultEvent( sceneId, selfId, targetId )
	x000111_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000111_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local i, eventId
		--zchw
		--AddNumText( sceneId, x000111_g_ScriptId, "Ê¦Í½ÐÄÁ¬ÐÄ", 6, 123)
		AddText( sceneId, "#{OBJ_luoyang_0030}" )
--		AddNumText( sceneId, x000111_g_ScriptId, "ÎÒÏëÁË½âmµt ÏÂÔõÑù°ÝÊ¦", 11, 1 )
		
		for i, eventId in x000111_g_RelationEventList do
			CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
		end

		
		
--	AddNumText( sceneId, x000111_g_ScriptId, "²é¿´Ê¦µÂ ði¬mÊý", 6, 2 )
		AddNumText( sceneId, x000111_g_ScriptId, "Ta mu¯n dùng ði¬m Thi®n ác nh§n lînh kinh nghi®m", 6, 3 )
		AddNumText( sceneId, x000111_g_ScriptId, "Xu¤t sß", 6, 10 )
		AddNumText( sceneId, x000111_g_ScriptId, "Gi¾i thi®u sß ð°", 11, 4 )
		--AddNumText( sceneId, x000111_g_ScriptId, "¹ØÓÚÊ¦Í½ÐÄÁ¬ÐÄ", 11, 321)
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x000111_OnEventRequest( sceneId, selfId, targetId, eventId )
	local strText
	local	nMlevel	= LuaFnGetmasterLevel( sceneId, selfId )

	if eventId == x000111_g_ScriptId then

		if GetNumText() == 1 then							-- ÁË½âÔõÃ´°ÝÊ¦
			BeginEvent( sceneId )
			AddText( sceneId, "#{OBJ_luoyang_0032}" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		
		elseif GetNumText() == 4 then					-- Ê¦Í½½éÉÜ
			BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_050}" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )

		elseif GetNumText() == 2 then					-- ²é¿´Ê¦µÂ ði¬mÊý
			BeginEvent( sceneId )
			strText = format( "  S¯ ði¬m sß ðÑc hi®n có: %d", LuaFnGetMasterMoralPoint( sceneId, selfId ) )
			AddText( sceneId, strText )
			strText = format( "  Tích lûy s¯ ði¬m sß ðÑc: %d", LuaFnGetMasterMoralPoint( sceneId, selfId ) )
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )

		elseif GetNumText() == 10 then
			local HumanLevel = LuaFnGetLevel( sceneId, selfId )
			
			if HumanLevel < 45 then--Ð¡ÓÚ45c¤p
				x000111_MyMsgBox( sceneId, selfId, targetId, "#{STGZ_20080520_5}" )
				return
			end
			
			
			
			if LuaFnHaveMaster( sceneId, selfId ) == 0 then--Ã»ÓÐÊ¦¸µ
				x000111_MyMsgBox( sceneId, selfId, targetId, "#{STGZ_20080520_6}" )
				return
			end
			
			--¼ì²éÐúng·ñÒÑ¾­³ö¹ýÊ¦
			if GetMissionFlag(sceneId, selfId, MF_ShiTu_ChuShi_Flag) == 1 then --±íÊ¾ÒÑ¾­³öÊ¦
				x000111_MyMsgBox( sceneId, selfId, targetId, "#{STGZ_20080520_6}" )
				return
			end
				
			--³öÊ¦ÉèÖÃ³öÊ¦±êÖ¾
			SetMissionFlag(sceneId, selfId, MF_ShiTu_ChuShi_Flag, 1)
			
			--·¢ËÍ¿ÉÖ´ÐÐÓÊ¼þ
			LuaFnChuShiMail(sceneId, selfId)
						
			x000111_MyMsgBox( sceneId, selfId, targetId, "#{STGZ_20080520_1}" )
			
			return
		
		elseif GetNumText() == 3 then					-- ÉÆ¶ñÖµ»»Kinh nghi®m
			if nMlevel < 1 or nMlevel > 4 then
				x000111_MyMsgBox( sceneId, selfId, targetId, "  ÐÆng c¤p sß ðÑc không ðü" )
				return
			end
			if LuaGetPrenticeSupplyExp( sceneId, selfId ) == 0 then
				x000111_MyMsgBox( sceneId, selfId, targetId, "  Không có kinh nghi®m có th¬ lînh" )
				return
			end
			--´ò¿ª¿Í»§¶ËÉÆ¶ñÖµ¶mµt »Kinh nghi®m´°¿Ú
			LuaFnExpAssign( sceneId, selfId, 1 )
			--¹Ø±Õ´°¿Ú
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 1000 )
		-- add by zchw
		elseif GetNumText() == 123 then
			--¼ì²éµÈc¤p
			local HumanLevel = LuaFnGetLevel( sceneId, selfId )
			
			if HumanLevel < 30 then--Ð¡ÓÚ45c¤p
				x000111_MyMsgBox( sceneId, selfId, targetId, "30c¤pÒÔÉÏ²Å¿ÉÁìÈ.¡" );
				return
			end
			--¼ì²âÍæ¼Ò²Î¼Ó»î¶¯toÕ ðµ Ê±¼ä
			local	nDayTime = GetMissionData( sceneId, selfId, MD_SHITU_XINLIANXIN );
			local nDay = LuaFnGetDayOfThisMonth()
			if nDayTime == nDay then
				x000111_MyMsgBox(sceneId, selfId, targetId, "¶Ô²»Æð,Äã½ñÌìÒÑ¾­²Î¼Ó¹ý´Ë»î¶¯ÁË,ÇëÃ÷ÌìÔÙÀ´!");
				return
			end

			-- 1,¼ì²âÍæ¼ÒÉíÉÏÐúng²»ÐúngÓÐÎ»ÖÃÄÜ¹»·ÅÏÂÎïÆ·
			BeginAddItem(sceneId)
				AddItem( sceneId, 30008045, 1 ); --´óÀñ°ü			
			if EndAddItem(sceneId,selfId)	< 1 then
				return
			end
			-- ¸øÀñ°ü
			AddItemListToHuman(sceneId,selfId);
			-- ÌáÊ¾ÐÅÏ¢
			x000111_MyMsgBox(sceneId, selfId, targetId, "ÎÒÕâÀïÓÐmµt cáiÊ¦Í½´óÀñ°ü ðßa cho Äã,ºÃºÃÀûÓÃ°É!");
			BeginEvent(sceneId)
				strText = "ÄãÊÕµ½mµt cáiÊ¦Í½´óÀñ°ü!";
				AddText(sceneId, strText)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId, selfId)
			-- ¼ÇÂ¼Lînh Ê±¼ä
			SetMissionData( sceneId, selfId, MD_SHITU_XINLIANXIN, nDay );
			-- ¼ÇÂ¼²ÎÓëÈÕÖ¾
			AuditJoinJiaoShiJie(sceneId, selfId);
		elseif GetNumText() == 321 then --Ê¦Í½ÐÄÁ¬ÐÄ½éÉÜ
				x000111_MyMsgBox(sceneId, selfId, targetId, "mµt Äêmµt ¶ÈtoÕ ðµ ½ÌÊ¦½Ú¼´½«À´ÁÙÀ²£¡ËùÓÐ30c¤pÒÔÉÏtoÕ ðµ Ó¢ÐÛ¶¼¿ÉÒÔÈ¥ÄôÕþÐÕi Lý(170,123)´¦Lînh Ê¦Í½´óÀñ°ü.Ê¹ÓÃ´óÀñ°ü»¹»áÓÐÒâÍâÊÕ»ñÅ¶!");
				return			
		-- end of zchw
		end
				
		
		return
	end

	local i, findId
	for i, findId in x000111_g_RelationEventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
--		x000111_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x000111_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	local i, findId
	for i, findId in x000111_g_RelationEventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x000111_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	local i, findId
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x000111_g_RelationEventList do
		if missionScriptId == findId then
			x000111_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¶Ô»°¿òÌáÊ¾
--**********************************
function x000111_MyMsgBox( sceneId, selfId, targetId, str )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
