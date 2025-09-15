--Ä½ÈÝÉ½×¯NPC
--·ïÏô
--ÆÕÍ¨

 x009041_g_ScriptId=009041
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function  x009041_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{GUSU_MENPAI_34}")
		if	GetMenPai( sceneId, selfId) == 10 then
			if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 451))	then
				AddNumText(sceneId, x009041_g_ScriptId,"H÷c kÜ thu§t: Linh Dß½ng",12,40)
			end
			if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 460))	then
				AddNumText(sceneId, x009041_g_ScriptId,"H÷c kÜ thu§t: Tuyªt Linh Dß½ng",12,60)
			end
		end
		AddNumText( sceneId, x009041_g_ScriptId, "Gi¾i thi®u kÜ thu§t", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function  x009041_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{GUSU_MENPAI_35}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	if GetNumText() == 40 then
		BeginEvent( sceneId )
			AddText(sceneId,"H÷c #Y[KÜ Thu§t: Linh Dß½ng]#Wc¥n tiêu phí 35#-14, Các hÕ xác nh§n c¥n h÷c ?")
			AddNumText(sceneId, x009041_g_ScriptId,"H÷c",-1,0)
      AddNumText(sceneId, x009041_g_ScriptId,"Không",-1,999)			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	if GetNumText() == 60 then
		BeginEvent( sceneId )
			AddText(sceneId,"H÷c #Y[KÜ Thu§t: Tuyªt Linh Dß½ng]#Wc¥n tiêu phí 290#-14, Các hÕ xác nh§n c¥n h÷c ?")
			AddNumText(sceneId, x009041_g_ScriptId,"H÷c",-1,1)
      AddNumText(sceneId, x009041_g_ScriptId,"Không",-1,999)			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	if GetNumText() == 999 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
	
	local level = GetLevel( sceneId, selfId)
	local skill = GetNumText()
	if skill == 0 or skill == 1 then
	  CallScriptFunction((210299), "OnDefaultEvent",sceneId, selfId,targetId, level, skill)
	end
end

