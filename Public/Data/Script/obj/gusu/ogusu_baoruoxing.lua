
x009045_g_ScriptId	= 009045

--*****************************--
--*     On Default Event      *--
--*****************************--
function x009045_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"#{GUSU_MENPAI_2}")
		AddNumText(sceneId,x009045_g_ScriptId,"#{GUSU_MENPAI_3}",8,1)
		AddNumText(sceneId,x009045_g_ScriptId,"#{GUSU_MENPAI_4}",8,2)
		AddNumText(sceneId,x009045_g_ScriptId,"#{GUSU_MENPAI_5}",8,3)
		AddNumText(sceneId,x009045_g_ScriptId,"#{GUSU_MENPAI_6}",8,4)
		AddNumText(sceneId,x009045_g_ScriptId,"#{GUSU_MENPAI_7}",8,5)
		AddNumText(sceneId,x009045_g_ScriptId,"#{GUSU_MENPAI_9}",8,6)
		AddNumText(sceneId,x009045_g_ScriptId,"#{GUSU_MENPAI_10}",8,7)
		AddNumText(sceneId,x009045_g_ScriptId,"#{GUSU_MENPAI_11}",8,8)
		AddNumText(sceneId,x009045_g_ScriptId,"#{GUSU_MENPAI_12}",8,9)
		AddNumText(sceneId,x009045_g_ScriptId,"#{GUSU_MENPAI_13}",8,10)
		
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x009045_OnEventRequest(sceneId,selfId,targetId,eventId)
local key = GetNumText()

	if key >= 1 and key < 11 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{GUSU_MENPAI_"..(key+13).."}")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	end

end