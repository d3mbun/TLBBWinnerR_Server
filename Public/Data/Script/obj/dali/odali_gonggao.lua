--´óÀí¹«¸æÅÆ

--ÈÎÎñºÅ
x714014_g_MissionId = 704

x714014_g_SignPost = {x = 160, z = 156, tip = "Tri®u Thiên Sß"}

function x714014_OnDefaultEvent( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	local PosX, PosZ = GetWorldPos(sceneId,targetId)
	PosX = floor(PosX)
	PosZ = floor(PosZ)
	
	if PosX == 155 and PosZ == 174 then
		BeginEvent(sceneId)
			AddText(sceneId,"#YVi®t Thiên Long")
		EndEvent( )
		DispatchEventList(sceneId,selfId,targetId)
	else
		if IsHaveMission(sceneId,selfId,x714014_g_MissionId)>0	 then
			misIndex = GetMissionIndexByID(sceneId,selfId,x714014_g_MissionId)
			SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
			SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
			BeginEvent(sceneId)
				AddText(sceneId,"#{BGDH_81009_01}")
			EndEvent( )
			DispatchMissionTips(sceneId,selfId)
			BeginEvent(sceneId)
				AddText(sceneId,"  Cß dân cüa ÐÕi Lý chú ý! T¯i nay trong thành xu¤t hi®n mµt kë bí m§t s¨ gây hÕi cho trë con và næ nhi ðµc thân, vô tµi. Xin m÷i ngß¶i chú ý an toàn")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
			CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId,sceneId, x714014_g_SignPost.x, x714014_g_SignPost.z, x714014_g_SignPost.tip )
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Cách khai mÕc ÐÕi hµi Võ Lâm chï còn 7 ngày")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
		end
	end
end
