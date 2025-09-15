-- 402259
-- ľ�˿���

x402259_g_KillMonsCount_Qincheng = 20
x402259_g_KillMonsCount_Qinjia 	 = 21
x402259_g_KillMonsCount_Lama		 = 22

function x402259_OnDie( sceneId, selfId, killerId )
	
	local nBuffBaseId = 10176	
	
	local nNpcLevel = GetLevel(sceneId, selfId)
	local nBaseLevel = floor(nNpcLevel/10)
	
	local nBuffId = 10176 + nBaseLevel
	
	local nEffectId = 10191
	
	LuaFnNpcChat(sceneId, selfId, 0, "Ta... Ta s�p ph�t b�o r�i.")

	-- ����m�t c�i��ը��Ч,T�i ľ��to� � λ��
	local x
	local z
	x,z = GetWorldPos(sceneId,selfId)
	LuaFnCreateSpecialObjByDataIndex(sceneId, selfId, 100, x,z,100)

	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)
		local xx
		local zz
		xx,zz = GetWorldPos(sceneId,nMonsterId)
		
		if (x-xx)*(x-xx) + (z-zz)*(z-zz) < 25  then
			LuaFnSendSpecificImpactToUnit(sceneId, nMonsterId, nMonsterId, 
										nMonsterId, nBuffId, 100 )
										
--			LuaFnSendSpecificImpactToUnit(sceneId, nMonsterId, nMonsterId, 
--										nMonsterId, 10191, 100 )
		end
	end
	
	-- ���ҲҪ�ܵ�C�i n�y �˺�
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- û����to� � ����,ʲô������
	if nHumanNum < 1 then
		return
	end
	
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		
		local xx
		local zz
		xx,zz = GetWorldPos(sceneId,PlayerId)
		
		if (x-xx)*(x-xx) + (z-zz)*(z-zz) < 25  then
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, 
										PlayerId, nBuffId, 100 )
--			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, 
--										PlayerId, 10191, 100 )
		end
	end


end

