x009040_g_ScriptId = 009040

--**********************************
--ÊÂ¼þÁÐ±í#G´ò¿×Ç°£¬±ØÐë±£Ö¤ÉíÉÏÓÐÒ»¸ö8¼¶¾«Ìú»ò8¼¶ÃÞ²¼»ò8¼¶ÃØÒø¡£
--**********************************
function x009040_OnDefaultEvent( sceneId, selfId,targetId )
    BeginEvent(sceneId)
	local mp = GetMenPai(sceneId, selfId)
	if mp == 10  then
		AddText(sceneId,"TÕi hÕ là Mµ Dung Thanh S½n, ngß¶i truy«n thø võ h÷c Mµ Dung Gia cho các ð® tØ bän môn.")
		AddNumText(sceneId, x009040_g_ScriptId, "KÛ nång h÷c t§p",12,0)
		AddNumText(sceneId,x009040_g_ScriptId, "Gi¾i thi®u tâm pháp",8,2)
	else
		AddText(sceneId,"TÕi hÕ là Mµ Dung Thanh S½n")
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
		

end

function x009040_OnEventRequest( sceneId, selfId, targetId, eventId)
	if	GetNumText()==2	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{function_xinfajieshao_001}")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	DispatchXinfaLevelInfo( sceneId, selfId, targetId, 10 );
	
end

function x009040_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x009040_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

function x009040_MsgBox( sceneId, selfId, str )
	Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end