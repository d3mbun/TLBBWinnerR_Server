x402045_g_KillNum = 30

--**********************************
-- ×ãÇòËÀÍö
--**********************************
function x402045_OnDie(sceneId, objId, killerId)
	
	local szName = GetName(sceneId, objId)

	if szName == "Hoàng S¡c Túc C¥u"  or
			szName == "H°ng S¡c Túc C¥u"  or
			szName == "Lam S¡c Túc C¥u"  or
			szName == "Hoa S¡c Túc C¥u"  or
			
			szName == "Hoàng S¡c ÐÕi Túc C¥u"  or
			szName == "H°ng S¡c ÐÕi Túc C¥u"  or
			szName == "Lam S¡c ÐÕi Túc C¥u"     then
			
		local nKillNum = LuaFnGetCopySceneData_Param(sceneId, x402045_g_KillNum)
		nKillNum = nKillNum + 1
		local str = "Ðã giªt chªt Túc C¥u: " .. tostring(nKillNum) .. "/149"
		x402045_TipAllHuman(sceneId, str)
		LuaFnSetCopySceneData_Param(sceneId, x402045_g_KillNum, nKillNum)
	end
end

--**********************************
--ÌáÊ¾ËùÓÐ¸±±¾ÄÚÍæ¼Ò
--**********************************
function x402045_TipAllHuman( sceneId, Str )
	--  ðÕt ðßþc³¡¾°ÀïÍ·toÕ ðµ ËùÓÐÈË
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	-- Ã»ÓÐÈËtoÕ ðµ ³¡¾°,Ê²Ã´¶¼²»×ö
	if nHumanNum < 1 then
		return
	end
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		BeginEvent(sceneId)
			AddText(sceneId, Str)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId, PlayerId)
	end
end

