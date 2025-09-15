-- Script ID
x808235_g_scriptId = 808235
x808235_g_Buff1 = 5518
x808235_g_Buff2 = 5519 -- giäm sát thß½ng
x808235_g_Buff3 = 5520
x808235_g_Buff4 = 5521
x808235_g_Buff5 = 5536 -- ðµc công
x808235_g_Buff6 = 5523
x808235_g_Buff7 = 5526
x808235_g_Buff8 = 5527
x808235_g_Buff9 = 5528
x808235_g_Buff10 = 5529


function x808235_OnImpactFadeOut( sceneId, selfId, impactId )
	LuaFnAddGlobalCountNews(sceneId,"Test Impact")
	--***********************--
	if GetHp(sceneId,selfId)<=0 then
		return
	end
	--***********************--
	if LuaFnIsObjValid(sceneId,selfId) ~= 1 or LuaFnIsCanDoScriptLogic(sceneId,selfId) ~= 1 or LuaFnIsCharacterLiving(sceneId,selfId) ~= 1 then
		return
	end
	--***********************--
	local nAdditon = x808235_XinFaAddition( sceneId, selfId )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808235_g_Buff1 , 0 )
	--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808235_g_Buff2 , 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808235_g_Buff3 , 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808235_g_Buff4 , 0 )
	--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808235_g_Buff5+nAdditon, 0 )
	-- LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808235_g_Buff7 , 0 )
	-- LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808235_g_Buff8 , 0 )
	-- LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808235_g_Buff9 , 0 )
	-- LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808235_g_Buff10 , 0 )

	
end

--**********************************
-- Tam phap
--**********************************
function x808235_XinFaAddition( sceneId, selfId )
	local nXinfaLevel = LuaFnGetXinFaLevel(sceneId, selfId, 57)
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
		nAdditon = 4
	elseif nXinfaLevel>=20 and nXinfaLevel<30 then
		nAdditon = 3
	elseif nXinfaLevel>=10 and nXinfaLevel<20 then
		nAdditon = 2
	elseif nXinfaLevel<10 then
		nAdditon = 1
	end
	return nAdditon
end