--Tiêu DaoNPC
--ÎâÁì¾ü
--ÆÕÍ¨

 x014004_g_ScriptId=014004
--447	ÆïÊõ: »¢
--448	ÆïÊõ: »ÆæôÂí
--449	ÆïÊõ: ÂæÍÕ
--450	ÆïÊõ: º×
--451	ÆïÊõ: Çà·ï
--452	ÆïÊõ: êóÅ£
--453	ÆïÊõ: Â¹
--454	ÆïÊõ: µñ
--455	ÆïÊõ: »ÒÀÇ
--456	ÆïÊõ: °×»¢
--457	ÆïÊõ: Çà°×æõÂí
--458	ÆïÊõ: °×ÂæÍÕ
--459	ÆïÊõ: ½ğÒíº×
--460	ÆïÊõ: ºì°×·ï
--461	ÆïÊõ: °×êóÅ£
--462	ÆïÊõ: °×Â¹
--463	ÆïÊõ: °×µñ
--464	ÆïÊõ: °×ÀÇ
--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function  x014004_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta có th¬ truy«n dÕy cho ğ® tØ Tiêu Dao khä nång ği«u khi¬n Th¥n Lµc.")
		if	GetMenPai( sceneId, selfId) == 8 then
			if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 453))	then
				AddNumText(sceneId, x014004_g_ScriptId,"H÷c kÜ thu§t: Lµc",12,40)
			end
			if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 462))	then
				AddNumText(sceneId, x014004_g_ScriptId,"H÷c kÜ thu§t: BÕch Lµc",12,60)
			end
			if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 1091))	then
				AddNumText(sceneId, x014004_g_ScriptId,"H÷c kÜ thu§t: Th¤t Thái Lµc",12,80)
			end
		end
		AddNumText( sceneId, x014004_g_ScriptId, "Gi¾i thi®u kÜ thu§t", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞmµt Ïî
--**********************************
function  x014004_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_016}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
  
  if GetNumText() == 40 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{XXQS_09}" )
			AddNumText(sceneId, x014004_g_ScriptId,"H÷c",-1,0)
		AddNumText(sceneId, x014004_g_ScriptId,"Không",-1,999)			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	if GetNumText() == 60 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{XXQS_10}" )
			AddNumText(sceneId, x014004_g_ScriptId,"H÷c",-1,1)
		AddNumText(sceneId, x014004_g_ScriptId,"Không",-1,999)			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	if GetNumText() == 80 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{MPZQ_xml_XX(02)}#{MPZQ_xml_XX(12)}" )
			AddText( sceneId, "#{MPZQ_xml_XX(03)}" )
			AddNumText(sceneId, x014004_g_ScriptId,"H÷c",-1,2)
		AddNumText(sceneId, x014004_g_ScriptId,"Không",-1,999)			
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
	if skill == 0 or skill == 1 or skill == 2 then
	  CallScriptFunction((210299), "OnDefaultEvent",sceneId, selfId,targetId, level, skill)
	end
end
