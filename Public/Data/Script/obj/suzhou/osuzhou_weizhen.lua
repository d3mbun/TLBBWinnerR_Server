--Tô ChâuNPC
--ÎºÕæ
--mµt °ã

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	  local  PlayerName=GetName(sceneId,selfId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = " cô nß½ng"
		else
			PlayerSex = " các hÕ"
		end
		AddText(sceneId,"    "..PlayerName..PlayerSex..", ð÷ tài · Mai Hoa Trang m¾i th¤y ðßþc bän lînh th§t")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
