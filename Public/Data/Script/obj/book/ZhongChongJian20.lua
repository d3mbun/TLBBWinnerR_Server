--Script skill Nh�t Nh�t T�ng M�nh T�n - Set MD
--Tinh T�c
--Author: S�i

--***********************--
x808237_g_scriptId=808237
--***********************--

--************************************--
--*        On Impact Fade Out        *--
--************************************--
function x808237_OnImpactFadeOut(sceneId,selfId,impactId)
	--***********************--
	if GetHp(sceneId,selfId)<=0 then
		return
	end
	--***********************--
	if LuaFnIsObjValid(sceneId,selfId)~=1 or LuaFnIsCanDoScriptLogic(sceneId,selfId)~=1 or LuaFnIsCharacterLiving(sceneId,selfId)~=1 then
		return
	end
	--***********************--
	for i=5618,5633 do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,i)>0 then
			SetMissionData(sceneId,selfId,MD_YIRISANGMINGSAN,5585+i-5618)
		end
	end
	--***********************--
	
end