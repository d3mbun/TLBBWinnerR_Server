--¼¼ÄÜ

x808237_g_scriptId = 808237


function x808237_OnImpactFadeOut( sceneId, selfId, impactId )

	local SelfHp = GetHp( sceneId, selfId)
	if SelfHp == 0 then
	return
	end
	local Id = LuaFnGetTargetObjID(sceneId, selfId)
 	local MenPai=GetMenPai(sceneId, Id)
	Target =0
	 local Skill = {841,842,843,844,845,846,847,848,849}
	 local i=random(1,9)
	if MenPai >=0 and MenPai <9 then
		Target=Skill[MenPai+1]
	elseif MenPai ==-1 or MenPai >=9 then
		Target=Skill[i]
	end
	 BeginUICommand(sceneId)
	  UICommand_AddInt(sceneId,Target)
	  EndUICommand(sceneId)
	  DispatchUICommand(sceneId,selfId,2014092002)
end

--**********************************
--
--**********************************
function x808237_Tips( sceneId, selfId, str )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
