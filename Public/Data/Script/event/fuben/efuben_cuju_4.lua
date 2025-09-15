x402045_g_KillNum = 30

--**********************************
-- ��������
--**********************************
function x402045_OnDie(sceneId, objId, killerId)
	
	local szName = GetName(sceneId, objId)

	if szName == "Ho�ng S�c T�c C�u"  or
			szName == "H�ng S�c T�c C�u"  or
			szName == "Lam S�c T�c C�u"  or
			szName == "Hoa S�c T�c C�u"  or
			
			szName == "Ho�ng S�c ��i T�c C�u"  or
			szName == "H�ng S�c ��i T�c C�u"  or
			szName == "Lam S�c ��i T�c C�u"     then
			
		local nKillNum = LuaFnGetCopySceneData_Param(sceneId, x402045_g_KillNum)
		nKillNum = nKillNum + 1
		local str = "�� gi�t ch�t T�c C�u: " .. tostring(nKillNum) .. "/149"
		x402045_TipAllHuman(sceneId, str)
		LuaFnSetCopySceneData_Param(sceneId, x402045_g_KillNum, nKillNum)
	end
end

--**********************************
--��ʾ���и��������
--**********************************
function x402045_TipAllHuman( sceneId, Str )
	--  ��t ���c������ͷto� � ������
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	-- û����to� � ����,ʲô������
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

