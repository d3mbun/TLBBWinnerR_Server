
x808239_g_scriptId = 808239


function x808239_OnImpactFadeOut( sceneId, selfId, impactId )

	if GetHp( sceneId, selfId ) == 0 then
		return
	end
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if impactId == 21453 then
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 21538) == 1 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, targetId, 21544, 0 )
			elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 21539) == 1 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, targetId, 21545, 0 )
			elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 21540) == 1 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, targetId, 21546, 0 )
			elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 21541) == 1 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, targetId, 21547, 0 )
			elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 21542) == 1 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, targetId, 21548, 0 )
			elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 21543) == 1 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, targetId, 21549, 0 )
			end

	end
	if impactId == 21455 then
		local nXinfa = x808239_XinFaAddition( sceneId, selfId )
			nImpact = 21415 + nXinfa;
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 21454) == 1 then		
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, targetId, nImpact, 0 )
				return
			end
	end
	if impactId == 21537 then
	local i=random(1,6)
	local ImpactSK = {21538,21539,21540,21541,21542,21543}
		for j =21538, 21543 do
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, j) == 1 then
			return
			else
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, ImpactSK[i], 0 )
			end
			return
		end
	end
end
function x808239_XinFaAddition( sceneId, selfId )
	local nXinfaLevel = LuaFnGetXinFaLevel(sceneId, selfId, 68)
	local nAdditon = 0
	if nXinfaLevel>=150 then
		nAdditon = 15
	elseif nXinfaLevel>=140 and nXinfaLevel<150 then
		nAdditon = 14
	elseif nXinfaLevel>=130 and nXinfaLevel<140 then
		nAdditon = 13
	elseif nXinfaLevel>=120 and nXinfaLevel<130 then
		nAdditon = 12
	elseif nXinfaLevel>=110 and nXinfaLevel<120 then
		nAdditon = 11
	elseif nXinfaLevel>=100 and nXinfaLevel<110 then
		nAdditon = 10
	elseif nXinfaLevel>=90 and nXinfaLevel<100 then
		nAdditon = 9
	elseif nXinfaLevel>=80 and nXinfaLevel<90 then
		nAdditon = 8
	elseif nXinfaLevel>=70 and nXinfaLevel<80 then
		nAdditon = 7
	elseif nXinfaLevel>=60 and nXinfaLevel<70 then
		nAdditon = 6
	elseif nXinfaLevel>=50 and nXinfaLevel<60 then
		nAdditon = 5
	elseif nXinfaLevel>=40 and nXinfaLevel<50 then
		nAdditon = 4
	elseif nXinfaLevel>=30 and nXinfaLevel<40 then
		nAdditon = 3
	elseif nXinfaLevel>=20 and nXinfaLevel<30 then
		nAdditon = 2
	elseif nXinfaLevel>=10 and nXinfaLevel<20 then
		nAdditon = 1
	elseif nXinfaLevel<10 then
		nAdditon = 0
	end
	return nAdditon
end
--**********************************
--
--**********************************
function x808239_Tips( sceneId, selfId, str )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
