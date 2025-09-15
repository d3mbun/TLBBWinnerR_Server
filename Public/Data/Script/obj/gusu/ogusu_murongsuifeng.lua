--Ä½ÈÝNPC
--Ä½ÈÝËæ·ç
--ÆÕÍ¨

x009046_g_ScriptId = 009046

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x009046_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{GUSU_MENPAI_30}")
		AddNumText(sceneId, x009046_g_ScriptId, "H÷c khinh công Mµ Dung",12,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x009046_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText()==0	then
		
		if GetMenPai(sceneId, selfId) == 10 then
			if	HaveSkill( sceneId, selfId, 788)<0	then
				-- ¿ÛÇ®
				if GetMoney(sceneId, selfId)+GetMoneyJZ(sceneId, selfId) < STUDY_MENPAI_QINGGONG_SPEND  then
					BeginEvent(sceneId)
						AddText(sceneId,"  Ngân lßþng trên ngß¶i các hÕ không ðü 1#-15, vì v§y không th¬ h÷c khinh công b±n môn")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					return
				end
				-- ¿ÛÇ®
				LuaFnCostMoneyWithPriority(sceneId,selfId,STUDY_MENPAI_QINGGONG_SPEND)
				
				AddSkill( sceneId, selfId, 788 )
				DelSkill( sceneId, selfId, 34 )
				BeginEvent(sceneId)
					AddText(sceneId,"Chúc m×ng ngß½i ðã h÷c ðßþc khinh công cüa b±n môn, hy v÷ng ngß½i tiªp tøc n² lñc ð¬ phát huy danh tiªng b±n môn")
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
				AddText(sceneId,"H÷c khinh công Mµ Dung trß¾c tiên c¥n gia nh§p phái Mµ Dung!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Ngß½i không phäi là ð® tØ cüa b±n bang, ta không th¬ dÕy ngß½i khinh công cüa Mµ Dung")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	end	
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x009046_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x009046_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x009046_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x009046_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x009046_OnDie( sceneId, selfId, killerId )
end
