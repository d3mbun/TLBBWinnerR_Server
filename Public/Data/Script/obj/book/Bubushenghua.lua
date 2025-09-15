--Script skill Bµ Bµ Sinh Hoa
--Tiêu Dao
--Author: Sói

--***********************--
x808230_g_scriptId=808230
--***********************--
x808230_Trap_Obj=139
x808230_Trap_Ranger=2
--***********************--

--************************************--
--*        On Impact Fade Out        *--
--************************************--
function x808230_OnImpactFadeOut(sceneId,selfId,impactId)
	
	--***********************--
	if GetHp(sceneId,selfId)==0 then
		return
	end	
	--***********************--
	-- ds tráp = 0-2k = 266
	-- ds tráp = 2-4k = 282
	-- ds tráp = 4-6k = 666
	-- ds tráp = 6-8k = 682
	-- ds tráp = 8-xxk = 139
	local x,y=GetWorldPos(sceneId,selfId)
	local cold = GetHumanAttr(sceneId, selfId, 3)
	local fire = GetHumanAttr(sceneId, selfId, 4)
	local light = GetHumanAttr(sceneId, selfId, 5)
	local poison = GetHumanAttr(sceneId, selfId, 6)
	local AllAttrAttack = cold+fire+light+poison
	if AllAttrAttack <= 1999 then
		x808230_Trap_Obj = 266
	elseif AllAttrAttack <= 3999 then
		x808230_Trap_Obj = 282
	elseif AllAttrAttack <= 4999 then
		x808230_Trap_Obj = 666
	elseif AllAttrAttack <= 7999 then
		x808230_Trap_Obj = 682
	else
		x808230_Trap_Obj = 139
	end
	--***********************--
	local nTrap=random(1000)
	if nTrap<=500 then
		nTrap=1
	elseif nTrap<=700 then
		nTrap=1
	elseif nTrap<=900 then
		nTrap=1
	elseif nTrap<=985 then
		nTrap=1
	elseif nTrap<=990 then
		nTrap=2
	elseif nTrap<=992 then
		nTrap=2
	elseif nTrap<=994 then
		nTrap=2
	elseif nTrap<=996 then
		nTrap=2
	elseif nTrap<=998 then
		nTrap=2
	elseif nTrap<=1000 then
		nTrap=3
	end
	--***********************--
	for i=1,nTrap do
		local X_Trap=x+random(x808230_Trap_Ranger)-random(x808230_Trap_Ranger)
		local Y_Trap=y+random(x808230_Trap_Ranger)-random(x808230_Trap_Ranger)
		CreateSpecialObjByDataIndex(sceneId,selfId,x808230_Trap_Obj+x808230_XinFaAddition(sceneId,selfId),X_Trap,Y_Trap,0)
	end
	--***********************--
	
end
--************************************--
--*          Xin Fa Addition         *--
--************************************--
function x808230_XinFaAddition(sceneId,selfId)

	--***********************--
	local nXinfaLevel=LuaFnGetXinFaLevel(sceneId,selfId,63)
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