--LÕc Dß½ngNPC
--ÀîÂèÂè
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000044_OnDefaultEvent( sceneId, selfId,targetId )
local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " cô nß½ng "
	else
		PlayerSex = " các hÕ"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  Hà hà, ðó không phäi là "..PlayerName..PlayerSex.."#{OBJ_luoyang_0015}")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
