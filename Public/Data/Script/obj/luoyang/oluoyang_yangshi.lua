--LÕc Dß½ngNPC
--ÑîÊ±
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000040_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " cô nß½ng"
	else
		PlayerSex = " các hÕ"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  "..PlayerName..PlayerSex..", các hÕ cûng ðªn bái kiªn sß phø à? Ta và sß huynh ðªn ðây thåm sß phø, không g£p ðßþc sß phø b÷n ta s¨ không ði ðâu cä")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
