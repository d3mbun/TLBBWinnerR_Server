--´óÀíÆòØ¤

--ÈÎÎñºÅ
x002070_g_MissionId_1 = 706
x002070_g_MissionId_2 = 707
x002070_g_MissionId_3 = 708

x002070_g_scriptId=002070

x002070_g_SignPost = {x = 215, z = 284, tip = "Ðoàn Diên Khánh"}

function x002070_OnDefaultEvent( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	misIndex_1 = GetMissionIndexByID(sceneId,selfId,x002070_g_MissionId_1)
	misIndex_2 = GetMissionIndexByID(sceneId,selfId,x002070_g_MissionId_2)
	misIndex_3 = GetMissionIndexByID(sceneId,selfId,x002070_g_MissionId_3)
	BeginEvent(sceneId)
		AddText(sceneId,"  Hu hu hu... Ta nh¾ cha m© quá, tr§n lû løt · Vô Lßþng S½n nåm ðó ðã hÕi ta phäi lang bÕt kÏ h°, nhà tan cØa nát! Ðành phäi · thành ÐÕi Lý xin ån qua ngày")
		if	IsHaveMission(sceneId,selfId,x002070_g_MissionId_1) > 0	 then
			if	GetMissionParam( sceneId, selfId, misIndex_1,0) < 1  then
				AddNumText(sceneId,x002070_g_scriptId,"Cho h¡n mµt cái bánh bao",2,0)
			end
		elseif	IsHaveMission(sceneId,selfId,x002070_g_MissionId_2) > 0	 then
			if	GetMissionParam( sceneId, selfId, misIndex_2,0) < 1  then
				AddNumText(sceneId,x002070_g_scriptId,"Cho h¡n mµt chiªc b¯ y",2,1)
			end
		elseif	IsHaveMission(sceneId,selfId,x002070_g_MissionId_3) > 0	 then
			if	GetMissionParam( sceneId, selfId, misIndex_3,0) < 1  then
				AddNumText(sceneId,x002070_g_scriptId,"Cho h¡n mµt chiªc cu¯c khai khoáng",2,2)
			end
		end
	EndEvent( )
	DispatchEventList(sceneId,selfId,targetId)
end

function x002070_OnEventRequest( sceneId, selfId, targetId, eventId )
	misIndex_1 = GetMissionIndexByID(sceneId,selfId,x002070_g_MissionId_1)
	misIndex_2 = GetMissionIndexByID(sceneId,selfId,x002070_g_MissionId_2)
	misIndex_3 = GetMissionIndexByID(sceneId,selfId,x002070_g_MissionId_3)
	if	GetNumText()==0	then
		if	HaveItemInBag (  sceneId, selfId, 30101001)	 > 0  then
			DelItem (  sceneId, selfId, 30101001, 1)	
			SetMissionByIndex( sceneId, selfId, misIndex_1, 0, 1)
			SetMissionByIndex( sceneId, selfId, misIndex_1, 1, 1)
			BeginEvent(sceneId)
				AddText(sceneId,"  Th§t cäm ½n các hÕ quá!r  <Tên ti¬u kh¤t cái chï hai ba miªng là ån hªt cái bánh bao>")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
			BeginEvent(sceneId)
				AddText(sceneId,"Hoàn t¤t nhi®m vø!")
			EndEvent( )
			DispatchMissionTips(sceneId,selfId)
			CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId,sceneId, x002070_g_SignPost.x, x002070_g_SignPost.z, x002070_g_SignPost.tip )
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Bánh bao? Bánh bao · ðâu?")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif	GetNumText()==1	then
		if	HaveItemInBag (  sceneId, selfId, 10113001)	 > 0  then
			DelItem (  sceneId, selfId, 10113001, 1)	
			SetMissionByIndex( sceneId, selfId, misIndex_2, 0, 1)
			SetMissionByIndex( sceneId, selfId, misIndex_2, 1, 1)
			BeginEvent(sceneId)
				AddText(sceneId,"  Th§t cäm ½n các hÕ quá!#r  <Tên ti¬u kh¤t cái qu¤n chiªc b¯ y lên ngß¶i>")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
			BeginEvent(sceneId)
				AddText(sceneId,"Hoàn t¤t nhi®m vø!")
			EndEvent( )
			DispatchMissionTips(sceneId,selfId)
			CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId,sceneId, x002070_g_SignPost.x, x002070_g_SignPost.z, x002070_g_SignPost.tip )
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Áo? Áo · ðâu hä?")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif	GetNumText()==2	then
		if	HaveItemInBag (  sceneId, selfId, 10102012)	 > 0  then
			DelItem (  sceneId, selfId, 10102012, 1)	
			SetMissionByIndex( sceneId, selfId, misIndex_3, 0, 1)
			SetMissionByIndex( sceneId, selfId, misIndex_3, 1, 1)
			BeginEvent(sceneId)
				AddText(sceneId,"  ´... TÕi sao các hÕ lÕi cho ta cái cu¯c?#r  Thôi ðßþc r°i, ta nh§n cho ngß½i vui, nhßng ta vçn không thích làm vi®c, ngày ngày xin ån thª này cûng t¯t ðó thôi!")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
			BeginEvent(sceneId)
				AddText(sceneId,"Hoàn t¤t nhi®m vø!")
			EndEvent( )
			DispatchMissionTips(sceneId,selfId)
			CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId,sceneId, x002070_g_SignPost.x, x002070_g_SignPost.z, x002070_g_SignPost.tip )
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Cu¯c? Không có thì thôi, v¯n ta cûng không mu¯n l¤y")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
		end
	end
end
