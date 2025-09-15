--Võ ÐangNPC
--ÆÕÍ¨µÜ×Ó
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x012030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Viên chuy¬n nhß ý, thanh t¸nh vô vi, ðây chính là núi Võ Ðang. Nªu bÕn c¥n sñ giúp ðÞ, m¶i ðªn tìm Tri khách ðÕo nhân · g¥n ðây ð¬ nh¶ giúp ðÞ.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
