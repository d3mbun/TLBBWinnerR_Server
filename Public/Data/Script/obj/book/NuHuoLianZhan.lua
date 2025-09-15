x808233_g_ScriptId = 808233

function x808233_OnImpactFadeOut( sceneId, selfId, impactId )
	if GetHp( sceneId, selfId ) == 0 then		
		return		
	end		
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32415) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32416, 0 )
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32416) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32417, 0 )
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32417) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32418, 0 )
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32418) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32419, 0 )
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32419) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32420, 0 )
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32420) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32421, 0 )
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32421) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32422, 0 )
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32422) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32423, 0 )
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32423) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32424, 0 )
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32424) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32425, 0 )
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32425) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32426, 0 )
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32426) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32427, 0 )
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32427) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32428, 0 )
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32428) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32429, 0 )
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32429) == 1 then
			LuaFnCancelSpecificImpact(sceneId,selfId,32429)
		else
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32415, 0 )
		end	
		
end