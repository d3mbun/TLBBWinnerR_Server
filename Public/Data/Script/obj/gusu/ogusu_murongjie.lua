--¹í¹ÈNPC   --Ð«×Ó20160724ÐÞ¸´  QQ-718805400
--Ä½ÈÝ½Ü
--ÆÕÍ¨

x009038_g_scriptId =009038
x009038_g_eventList={808004}
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x009038_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{GUSU_MENPAI_32}")
		local mp = GetMenPai(sceneId, selfId)
		if mp == 9 then 
			AddNumText(sceneId, x009038_g_scriptId, "Gia nh§p môn phái",6,0)
		end
		AddNumText(sceneId, x009038_g_scriptId, "Gi¾i thi®u môn phái",8,1)
		AddNumText(sceneId, x009038_g_scriptId, "H÷c KÛ nång cüa môn phái?",8,6)		--Ö¸Â·µ½¼¼ÄÜÑ§Ï°ÈË
		for i, eventId in x009038_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end


--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x009038_OnEventRequest( sceneId, selfId, targetId, eventId )

	for i, findId in x009038_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, MP_GUSU )
			return
		end
	end

	if GetNumText()==0	then

		x009038_g_MenPai = GetMenPai(sceneId, selfId)
		if x009038_g_MenPai == 10 then
			BeginEvent(sceneId)
				AddText(sceneId, "Ngß½i lÕi t¾i qu¤y r¥y sß phø, ngß½i ðã là ð® tØ phái Mµ Dung, còn bái sß gì næa")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		if x009038_g_MenPai ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ngß½i ðã là cao ð° cüa môn phái khác, chúng ta không thu nh§n ngß½i")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		BeginEvent(sceneId)
			AddText(sceneId, "#{GUSU_MENPAI_25}")
			AddNumText(sceneId, x009038_g_scriptId, "Ta mu¯n gia nh§p phái Mµ Dung",6,3)
			AddNumText(sceneId, x009038_g_scriptId, "TÕi hÕ chßa mu¯n bái sß",8,4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		 
		return
	end
	
	if GetNumText()==4	then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return
	end
	
	if GetNumText()==3	then
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 2 then
			BeginEvent(sceneId)
				AddText(sceneId,"Hãy s¡p xªp lÕi tay näi, c¥n 2 v¸ trí tr¯ng, ta s¨ thß·ng cho ngß½i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		elseif GetLevel( sceneId, selfId ) < 10 then
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ hãy ðþi t¾i sau c¤p 10 lÕi t¾i bái sß h÷c ngh®!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			x009038_g_MenPai = GetMenPai(sceneId, selfId)
			if x009038_g_MenPai == 10 then
				BeginEvent(sceneId)
					AddText(sceneId, "Ngß½i lÕi t¾i qu¤y r¥y sß phø, ngß½i ðã là ð® tØ phái Mµ Dung, còn bái sß gì næa")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			--·µ»ØÖµÎª9±íÊ¾ÎÞÃÅÅÉ
			elseif x009038_g_MenPai==9	then
				LuaFnJoinMenpai(sceneId, selfId, targetId, 10)

				-- ÉèÖÃ³õÊ¼µÄNpc¹ØÏµÖµ
				CallScriptFunction( 200099, "InitRelation", sceneId, selfId )

				-- °ÑÏà¹ØµÄÐÄ·¨ÉèÖÃÎª10¼¶±ð  64,67,68
				LuaFnSetXinFaLevel(sceneId,selfId,64,10)
				LuaFnSetXinFaLevel(sceneId,selfId,67,10)
				LuaFnSetXinFaLevel(sceneId,selfId,68,10)

				BeginEvent(sceneId)
					AddText(sceneId,"Các hÕ ðã gia nh§p phái Mµ Dung!");
	  			EndEvent(sceneId)
	  			DispatchMissionTips(sceneId,selfId)
					--¸øÍæ¼Ò·¢ÐÅ,¸æËßËûµ½ÄÄÀï´ò¹Ö,ÔõÑù×¬Ç®
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_10}" )
				--LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{OBJ_mingjiao_0001}" )
				
				--ÃÅÅÉ½±ÀøÕÙ¼¯Áî
				for i=1, 20 do
					TryRecieveItem( sceneId, selfId, 30501001, 1 )
				end
				x009038_MsgBox( sceneId, selfId, "Nh§n ðßþc 20 cái Môn Phái Tri®u T§p L®nh!" )


				if TryRecieveItem( sceneId, selfId, 10124198, 1 ) >= 0 then
					str		= "Các hÕ ðã nh§n ðßþc "..GetItemName( sceneId, 10124198 ).."."
					x009038_MsgBox( sceneId, selfId, str )
				end

				if	LuaFnGetSex( sceneId, selfId)==0	then
					LuaFnMsg2Player( sceneId, selfId,"Các hÕ ðã gia nh§p phái Mµ Dung!",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 163, 0)
					CallScriptFunction( 228905, "OnDefaultEvent",sceneId, selfId, targetId )
				else
					LuaFnMsg2Player( sceneId, selfId,"Các hÕ ðã gia nh§p phái Mµ Dung!",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 163, 0)
					CallScriptFunction( 228905, "OnDefaultEvent",sceneId, selfId, targetId )
				end
			else
				BeginEvent(sceneId)
					AddText(sceneId,"Ngß½i ðã là cao ð° cüa môn phái khác, chúng ta không thu nh§n ngß½i.")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		end
	elseif	GetNumText()==1	then
		BeginEvent(sceneId)
			AddText(sceneId, "#{OBJ_gusu_0001}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--Ö¸Â·
	if GetNumText()==6 then
		BeginEvent(sceneId)
			AddText(sceneId, "Mµ Dung Th¡ng [68,125] có th¬ dÕy ngß½i kÛ nång chiªn ð¤u cüa phái ta, cô ta · ngay bên cÕnh.")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, 98, 51, "Mµ Dung Th¡ng" )
		return
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x009038_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x009038_g_eventList do
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
function x009038_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x009038_g_eventList do
		if missionScriptId == findId then
			x009038_OnDefaultEvent( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x009038_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x009038_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x009038_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x009038_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x009038_OnDie( sceneId, selfId, killerId )
end

--**********************************
--ÏûÏ¢ÌáÊ¾
--**********************************
function x009038_MsgBox( sceneId, selfId, str )
	Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

