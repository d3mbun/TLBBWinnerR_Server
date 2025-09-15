--Minh GiáoNPC
--·½°Ù»¨
--ÆÕÍ¨

--½Å±¾ºÅ
x011002_g_ScriptId = 011002

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x011002_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ta có th¬ truy«n thø cho khinh công ð£c bi®t cüa b±n phái, có ði«u c¥n t¯n 50 #-03")
		AddNumText(sceneId, x011002_g_ScriptId, "Ñ§Ï°Minh GiáoÇá¹¦",12,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x011002_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText()==0	then
		
		if GetMenPai(sceneId, selfId) == 1 then
			if	HaveSkill( sceneId, selfId, 24)<0	then
				-- ¼ì²éÇ®
				if GetMoney(sceneId, selfId)+GetMoneyJZ(sceneId, selfId) < STUDY_MENPAI_QINGGONG_SPEND  then
					BeginEvent(sceneId)
						AddText(sceneId,"  Ngân lßþng trên ngß¶i các hÕ không ðü 50 #-03, vì v§y không th¬ h÷c khinh công b±n môn")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					return
				end
				-- ¿ÛÇ®
				LuaFnCostMoneyWithPriority(sceneId,selfId,STUDY_MENPAI_QINGGONG_SPEND)

				AddSkill( sceneId, selfId, 24 )
				DelSkill( sceneId, selfId, 34 )
				BeginEvent(sceneId)
					AddText(sceneId,"  Chúc m×ng ngß½i ðã h÷c ðßþc khinh công cüa b±n môn, hy v÷ng ngß½i tiªp tøc n² lñc ð¬ phát huy danh tiªng b±n môn.")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			else
				BeginEvent(sceneId)
					AddText(sceneId,"ChÆng phäi ngß½i ðã h÷c r°i sao?")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		elseif GetMenPai(sceneId, selfId) == 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ñ§Ï°Minh GiáoÇá¹¦C¥n ÏÈ¼ÓÈëMinh Giáo!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Äã²»Ðúng±¾ÃÅÅÉtoÕ ðµ µÜ×Ó,ÎÒÐúng²»ÄÜ½ÌÄãMinh GiáotoÕ ðµ Çá¹¦toÕ ðµ ")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	end	
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x011002_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x011002_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x011002_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x011002_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x011002_OnDie( sceneId, selfId, killerId )
end
