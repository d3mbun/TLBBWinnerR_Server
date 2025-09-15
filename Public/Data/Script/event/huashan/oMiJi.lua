-- ��ɽ�۽�
-- B� T�ch�ű�

x001235_g_scriptId = 001235

x001235_g_SmallBoxBuff = {
				{name="T� s�c b� k�p",buff=8053},
				{name="Ho�ng s�c b� k�p",buff=8052},
				{name="L�c s�c b� k�p",buff=8051},
				{name="B�ch s�c b� k�p",buff=8050},
				{name="H�c s�c b� k�p",buff=8049},
				{name="Lam s�c b� k�p",buff=8048},
				{name="H�ng s�c b� k�p",buff=8047},
}

--**********************************
--���⽻��:�����ж�
--**********************************
function x001235_OnActivateConditionCheck( sceneId, selfId, activatorId )
	-- ��������to� � buff
	return 1
end

--**********************************
--���⽻��:���ĺͿ۳�����
--**********************************
function x001235_OnActivateDeplete( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--���⽻��:������ɹ���Ч����
--**********************************
function x001235_OnActivateEffectOnce( sceneId, selfId, activatorId )
	
	-- ����C�i n�y Npcto� � ���������+buff,
	local szName = GetName(sceneId, selfId)
	for i=1, getn(x001235_g_SmallBoxBuff)  do
		if szName == x001235_g_SmallBoxBuff[i].name  then
			LuaFnDeleteMonster(sceneId, selfId)
			LuaFnSendSpecificImpactToUnit(sceneId, activatorId, activatorId, 
										activatorId, x001235_g_SmallBoxBuff[i].buff, 100 )
		end
	end	
	
	return 1
end

--**********************************
--���⽻��:������ÿʱ������Ч����
--**********************************
function x001235_OnActivateEffectEachTick( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--���⽻��:������ʼʱto� � ���⴦��
--**********************************
function x001235_OnActivateActionStart( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--���⽻��:��������ʱto� � ���⴦��
--**********************************
function x001235_OnActivateCancel( sceneId, selfId, activatorId )
	return 0
end

--**********************************
--���⽻��:�����ж�ʱto� � ���⴦��
--**********************************
function x001235_OnActivateInterrupt( sceneId, selfId, activatorId )
	return 0
end

function x001235_OnActivateInterrupt( sceneId, selfId, activatorId )

end

