--Script skill Trung Xung Kiªm
--Thiên Long
--Author: Sói

--***********************--
x808236_g_scriptId=808236
--***********************--

--***********************--

--************************************--
--*        On Impact Fade Out        *--
--************************************--
function x808236_OnImpactFadeOut(sceneId,selfId,impactId)
	--***********************--
	if GetHp(sceneId,selfId)==0 then
		return
	end
	--***********************--
	local targetId=LuaFnGetTargetObjID(sceneId,selfId)
	--***********************--
	if targetId == -1 then
		return
	end
	--***********************--
	local nSkill=random(4)
	if nSkill==1 then
		nSkill=5638
	elseif nSkill==2 then
		nSkill=5654
	elseif nSkill==3 then
		nSkill=5670
	else
		nSkill=5670
	end
	--***********************--
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,targetId,nSkill+x808236_XinFaAddition(sceneId,selfId)-1,0)
	--***********************--
	
end
--************************************--
--*          Xin Fa Addition         *--
--************************************--
function x808236_XinFaAddition(sceneId,selfId)

	--***********************--
	local nXinfaLevel=LuaFnGetXinFaLevel(sceneId,selfId,61)
	--***********************--
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
	--***********************--
	return nAdditon
	--***********************--
	
end