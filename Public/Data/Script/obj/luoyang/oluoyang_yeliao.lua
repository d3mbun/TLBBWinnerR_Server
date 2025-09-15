--LÕc Dß½ngNPC
--ÒµÁË
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000096_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " cô nß½ng"
	else
		PlayerSex = " các hÕ"
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,"  "..PlayerName..PlayerSex..", NhÕn Môn Quan ðang ðánh nhau phäi không? Sao mà nhi«u dân chÕy nÕn thª?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
