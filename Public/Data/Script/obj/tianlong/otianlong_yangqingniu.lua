--Thiên LongNPC
--ÑîÇàÅ£
--ÆÕÍ¨

x013014_g_ScriptId=013014
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
function x013014_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta có th¬ truy«n dÕy cho ğ® tØ Thiên Long tñ khä nång ği«u khi¬n Li®t mã.")
		if	GetMenPai( sceneId, selfId) == 6 then
			if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 448))	then
				AddNumText(sceneId,x013014_g_ScriptId,"H÷c kÜ thu§t: Hoàng Phiêu Mã",12,40)
			end
			if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 457))	then
				AddNumText(sceneId,x013014_g_ScriptId,"H÷c kÜ thu§t: Thanh BÕc Tông Mã",12,60)
			end
			
			if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 1088))	then
				AddNumText(sceneId,x013014_g_ScriptId,"H÷c kÜ thu§t: Long Huyªt Mã",12,80)
			end
		end
		AddNumText( sceneId, x013014_g_ScriptId, "Gi¾i thi®u kÜ thu§t", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞmµt Ïî
--**********************************
function x013014_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_015}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	if GetNumText() == 40 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{XXQS_11}" )
			AddNumText(sceneId, x013014_g_ScriptId,"Ğúng",-1,0)
		AddNumText(sceneId, x013014_g_ScriptId,"Sai",-1,999)			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	if GetNumText() == 60 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{XXQS_12}" )
			AddNumText(sceneId, x013014_g_ScriptId,"Ğúng",-1,1)
		AddNumText(sceneId, x013014_g_ScriptId,"Sai",-1,999)			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	if GetNumText() == 80 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{MPZQ_xml_XX(02)}#{MPZQ_xml_XX(10)}" )
			AddText( sceneId, "#{MPZQ_xml_XX(03)}" )
			AddNumText(sceneId, x013014_g_ScriptId,"Ğúng",-1,2)
		AddNumText(sceneId, x013014_g_ScriptId,"Sai",-1,999)			
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

