--Thú cßÞi

--*********************--
x335102_g_scriptId=335102
--*********************--
 				
--*********************--
x335102_g_Rider={}																		--Impact cüa thú cßÞi (StandardImpact.txt)
--*********************--
--*****Thú cßÞi bình thß¶ng*****--
x335102_g_Rider[10141800] = {Impact =9992, RecipeId =1248}
x335102_g_Rider[10141801] = {Impact =9993, RecipeId =1248}
x335102_g_Rider[10141802] = {Impact =9994, RecipeId =1248}

x335102_g_Rider[10141835] = {Impact =9989, RecipeId =1248}
x335102_g_Rider[10141836] = {Impact =9990, RecipeId =1248}
x335102_g_Rider[10141837] = {Impact =9991, RecipeId =1248}

--*********************--
x335102_g_Mount_Pos=108																	--V¸ trí ô thú cßÞi trên ngß¶i nhân v§t
--*********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function  x335102_OnDefaultEvent(sceneId,selfId,bagIndex)

end
--**********************************--
--*      Is Skill Like Script      *--
--**********************************--
function  x335102_IsSkillLikeScript(sceneId,selfId)
	
	--*********************--
	return 1
	--*********************--
	
end
--**********************************--
--*         Cancel Impacts         *--
--**********************************--
function  x335102_CancelImpacts(sceneId,selfId)
	
	--*********************--
	local nIndex=LuaFnGetItemTableIndexByIndex(sceneId,selfId,x335102_g_Mount_Pos)		--Index thú cßÞi ðang trang b¸ trên ngß¶i
	--*********************--
	if not x335102_g_Rider[nIndex] then
		return 0
	end
	--*********************--
	if LuaFnCancelSpecificImpact(sceneId,selfId,x335102_g_Rider[nIndex].Impact)>0 then			--Hüy bö trÕng thái cßÞi hi®n tÕi
		return 1
	else
		return 0
	end
	--*********************--
	
end
--**********************************--
--*       On Condition Check       *--
--**********************************--
function  x335102_OnConditionCheck(sceneId,selfId)

	--*********************--
	local nIndex=LuaFnGetItemTableIndexByIndex(sceneId,selfId,x335102_g_Mount_Pos)		--Index thú cßÞi ðang trang b¸ trên ngß¶i
	--*********************--
	if LuaFnIsPrescrLearned(sceneId,selfId,x335102_g_Rider[nIndex].RecipeId)<1 then		--Chßa có kÜ thu§t
		x335102_ShowTips(sceneId,selfId,"Các hÕ chßa h÷c kÛ nång ði«u khi¬n thú cßÞi này!")	--Thông báo chßa trang b¸ thú cßÞi
		return 0
	end
	--*********************--
	if LuaFnGetItemTableIndexByIndex(sceneId,selfId,x335102_g_Mount_Pos)~=0 then		--Có trang b¸ thú cßÞi
		return 1
	end
	--*********************--
	x335102_ShowTips(sceneId,selfId,"Các hÕ c¥n trang b¸ thú cßÞi!")					--Thông báo chßa trang b¸ thú cßÞi
	--*********************--
	return 0
	--*********************--
	
end
--**********************************--
--*           On Deplete           *--
--**********************************--
function  x335102_OnDeplete(sceneId,selfId)
	
	--*********************--
	return 1
	--*********************--

end
--**********************************--
--*        On Activate Once        *--
--**********************************--
function  x335102_OnActivateOnce(sceneId,selfId)

	--*********************--
	local nIndex=LuaFnGetItemTableIndexByIndex(sceneId,selfId,x335102_g_Mount_Pos)		--Index thú cßÞi ðang trang b¸ trên ngß¶i
	--*********************--
	if not x335102_g_Rider[nIndex] then													--Chßa c§p nh§t thú cßÞi
		x335102_ShowTips(sceneId,selfId,"Thú cßÞi này hi®n chßa ðßþc c§p nh¤t!")		
		return 0
	end
	--*********************--
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x335102_g_Rider[nIndex].Impact,0)
	--*********************--
	x335102_ShowTips(sceneId,selfId,"Tri®u h°i thú cßÞi thành công!")
	--*********************--
	return 1
	--*********************--
	
end
--**********************************--
--*      On Activate Each Tick     *--
--**********************************--
function  x335102_OnActivateEachTick(sceneId,selfId)

	--*********************--
	return 1
	--*********************--
	
end
--**********************************--
--*            Show Tips           *--
--**********************************--
function x335102_ShowTips(sceneId,selfId,Tip)
	
	--*********************--
	BeginEvent(sceneId)
		AddText(sceneId,Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--*********************--
	
end
