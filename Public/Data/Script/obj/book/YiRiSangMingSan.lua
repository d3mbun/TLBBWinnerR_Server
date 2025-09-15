--Script skill Nh�t Nh�t T�ng M�nh T�n
--Tinh T�c
--Author: S�i

--***********************--
x808232_g_scriptId=808232
--***********************--

--************************************--
--*        On Impact Fade Out        *--
--************************************--
function x808232_OnImpactFadeOut(sceneId,selfId,impactId)

	--***********************--
	if GetHp(sceneId,selfId)<=0 then
		return
	end
	--***********************--
	if LuaFnIsObjValid(sceneId,selfId)~=1 or LuaFnIsCanDoScriptLogic(sceneId,selfId)~=1 or LuaFnIsCharacterLiving(sceneId,selfId)~=1 then
		return
	end
	--***********************--
	for	i=0,GetNearTeamCount(sceneId,selfId)-1 do
		local nPlayerId=GetNearTeamMember(sceneId,selfId,i)
		if nPlayerId~=selfId and LuaFnIsObjValid(sceneId,nPlayerId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nPlayerId)==1 and LuaFnIsCharacterLiving(sceneId,nPlayerId)==1 then
			if LuaFnGetSceneType(sceneId)~=1 then
				LuaFnSendSpecificImpactToUnit(sceneId,0,0,nPlayerId,5617,0)
			else
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,nPlayerId,5617,0)
			end
		end
	end	
	--***********************--
	SetMissionData(sceneId,selfId,MD_YIRISANGMINGSAN,0)
	--***********************--
	
end
--************************************--
--*        On Character Died         *--
--************************************--
function x808232_OnCharacterDied(sceneId,selfId,impactId)

	--***********************--
	if GetHp(sceneId,selfId)>0 then
		return
	end
	--***********************--
	if LuaFnIsObjValid(sceneId,selfId)~=1 or LuaFnIsCanDoScriptLogic(sceneId,selfId)~=1 or LuaFnIsCharacterLiving(sceneId,selfId)==1 then
		return
	end
	--***********************--
	for	i=0,GetNearTeamCount(sceneId,selfId)-1 do
		local nPlayerId=GetNearTeamMember(sceneId,selfId,i)
		if nPlayerId~=selfId and LuaFnIsObjValid(sceneId,nPlayerId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nPlayerId)==1 and LuaFnIsCharacterLiving(sceneId,nPlayerId)==1 then
			if LuaFnGetSceneType(sceneId)~=1 then
				LuaFnSendSpecificImpactToUnit(sceneId,0,0,nPlayerId,impactId,0)												--Send hi�u �ng g�y �c c�ng l�n t� �i xung quanh
				LuaFnSendSpecificImpactToUnit(sceneId,0,0,nPlayerId,5617,0)												--Send hi�u �ng m� l�n t� �i xung quanh
			else
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,nPlayerId,impactId,0)									--Send hi�u �ng g�y �c c�ng l�n t� �i xung quanh
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,nPlayerId,5617,0)										--Send hi�u �ng m� l�n t� �i xung quanh
			end
		end
	end	
	--***********************--
	
end