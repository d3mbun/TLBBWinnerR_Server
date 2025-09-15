--Th� c��i

--*********************--
x335100_g_scriptId=335100
--*********************--
 				
--*********************--
x335100_g_Rider={}																		--Impact c�a th� c��i (StandardImpact.txt)
--*********************--
--*****Th� c��i b�nh th߶ng*****--
x335101_g_Rider[10141800] = {Impact =9992, RecipeId =1248}
x335101_g_Rider[10141801] = {Impact =9993, RecipeId =1248}
x335101_g_Rider[10141802] = {Impact =9994, RecipeId =1248}

--*********************--
x335100_g_Mount_Pos=108																	--V� tr� � th� c��i tr�n ng߶i nh�n v�t
--*********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function  x335100_OnDefaultEvent(sceneId,selfId,bagIndex)

end
--**********************************--
--*      Is Skill Like Script      *--
--**********************************--
function  x335100_IsSkillLikeScript(sceneId,selfId)
	
	--*********************--
	return 1
	--*********************--
	
end
--**********************************--
--*         Cancel Impacts         *--
--**********************************--
function  x335100_CancelImpacts(sceneId,selfId)
	
	--*********************--
	local nIndex=LuaFnGetItemTableIndexByIndex(sceneId,selfId,x335100_g_Mount_Pos)		--Index th� c��i �ang trang b� tr�n ng߶i
	--*********************--
	if not x335100_g_Rider[nIndex] then
		return 0
	end
	--*********************--
	if LuaFnCancelSpecificImpact(sceneId,selfId,x335100_g_Rider[nIndex].Impact)>0 then			--H�y b� tr�ng th�i c��i hi�n t�i
		return 1
	else
		return 0
	end
	--*********************--
	
end
--**********************************--
--*       On Condition Check       *--
--**********************************--
function  x335100_OnConditionCheck(sceneId,selfId)

	--*********************--
	local nIndex=LuaFnGetItemTableIndexByIndex(sceneId,selfId,x335100_g_Mount_Pos)		--Index th� c��i �ang trang b� tr�n ng߶i
	--*********************--
	if LuaFnIsPrescrLearned(sceneId,selfId,x335100_g_Rider[nIndex].RecipeId)<1 then		--Ch�a c� k� thu�t
		x335100_ShowTips(sceneId,selfId,"C�c h� ch�a h�c k� n�ng �i�u khi�n th� c��i n�y!")	--Th�ng b�o ch�a trang b� th� c��i
		return 0
	end
	--*********************--
	if LuaFnGetItemTableIndexByIndex(sceneId,selfId,x335100_g_Mount_Pos)~=0 then		--C� trang b� th� c��i
		return 1
	end
	--*********************--
	x335100_ShowTips(sceneId,selfId,"C�c h� c�n trang b� th� c��i!")					--Th�ng b�o ch�a trang b� th� c��i
	--*********************--
	return 0
	--*********************--
	
end
--**********************************--
--*           On Deplete           *--
--**********************************--
function  x335100_OnDeplete(sceneId,selfId)
	
	--*********************--
	return 1
	--*********************--

end
--**********************************--
--*        On Activate Once        *--
--**********************************--
function  x335100_OnActivateOnce(sceneId,selfId)

	--*********************--
	local nIndex=LuaFnGetItemTableIndexByIndex(sceneId,selfId,x335100_g_Mount_Pos)		--Index th� c��i �ang trang b� tr�n ng߶i
	--*********************--
	if not x335100_g_Rider[nIndex] then													--Ch�a c�p nh�t th� c��i
		x335100_ShowTips(sceneId,selfId,"Th� c��i n�y hi�n ch�a ���c c�p nh�t!")		
		return 0
	end
	--*********************--
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x335100_g_Rider[nIndex].Impact,0)
	--*********************--
	x335100_ShowTips(sceneId,selfId,"Tri�u h�i th� c��i th�nh c�ng!")
	--*********************--
	return 1
	--*********************--
	
end
--**********************************--
--*      On Activate Each Tick     *--
--**********************************--
function  x335100_OnActivateEachTick(sceneId,selfId)

	--*********************--
	return 1
	--*********************--
	
end
--**********************************--
--*            Show Tips           *--
--**********************************--
function x335100_ShowTips(sceneId,selfId,Tip)
	
	--*********************--
	BeginEvent(sceneId)
		AddText(sceneId,Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--*********************--
	
end
