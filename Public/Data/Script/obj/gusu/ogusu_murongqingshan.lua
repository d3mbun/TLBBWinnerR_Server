x009040_g_ScriptId = 009040

--**********************************
--�¼��б�#G���ǰ�����뱣֤������һ��8��������8���޲���8��������
--**********************************
function x009040_OnDefaultEvent( sceneId, selfId,targetId )
    BeginEvent(sceneId)
	local mp = GetMenPai(sceneId, selfId)
	if mp == 10  then
		AddText(sceneId,"T�i h� l� M� Dung Thanh S�n, ng߶i truy�n th� v� h�c M� Dung Gia cho c�c � t� b�n m�n.")
		AddNumText(sceneId, x009040_g_ScriptId, "K� n�ng h�c t�p",12,0)
		AddNumText(sceneId,x009040_g_ScriptId, "Gi�i thi�u t�m ph�p",8,2)
	else
		AddText(sceneId,"T�i h� l� M� Dung Thanh S�n")
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
-- ��Ļ�м���Ϣ��ʾ
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