-- �����䷽�ű� ����ʹ�ü���������Ʒ
-- *******
-- ���� 8 c�p
-- �ýű���������c�i�ر����ܺ���: 
-- x700953_AbilityCheck ��������ʹ�ü�麯��
-- x700953_AbilityConsume �����ϳɽ���,�����������
-- x700953_AbilityProduce �����ϳɳɹ�,������Ʒ

--------------------------------------------------------------------------------
-- ���²���C�n ��д
--------------------------------------------------------------------------------
--�ű�������
--2c�pñ�䷽ ������Ʒ

-- �ű���
x700953_g_ScriptId = 700953

-- ����ܺ�
x700953_g_AbilityID = ABILITY_FENGREN

-- ���������to� � ���c�p��
x700953_g_AbilityMaxLevel = 12

-- �䷽��
x700953_g_RecipeID = 127

-- �䷽��c�p(������to� � ��c�p)
x700953_g_RecipeLevel = 12

-- ���ϱ�
x700953_g_CaiLiao = {
	{ID = 20105012, Count = 21},
	{ID = 20107017, Count = 23},
	{ID = 20108096, Count = 35},
	{ID = 20308090, Count = 1},
}

-- ��Ʒ��
x700953_g_ChanPin = {
	{ID = 10212045, Odds = 3333},
	{ID = 10212046, Odds = 6666},
	{ID = 10212047, Odds = 10000},
}
--------------------------------------------------------------------------------
-- ���ϲ���C�n ��д
--------------------------------------------------------------------------------

----------------------------------------------------------------------------------------
--	����ʹ�ü�麯��
----------------------------------------------------------------------------------------
function x700953_AbilityCheck(sceneId, selfId)

	-- ��ⱳ����ng����ng�пո�,û�пո�Ͳ��ܽ���
	if LuaFnGetPropertyBagSpace(sceneId, selfId) < 1 then
		return OR_BAG_OUT_OF_SPACE
	end

	-- �����������
	VigorValue = x700953_g_RecipeLevel * 2 + 1
	if GetHumanVigor(sceneId, selfId) < VigorValue then
		return OR_NOT_ENOUGH_VIGOR
	end

	-- �����ng������㹻

	for idx, Mat in x700953_g_CaiLiao do
		nCount = Mat.Count

		ret = LuaFnGetAvailableItemCount(sceneId, selfId, Mat.ID)
		if ret < nCount then
			return OR_STUFF_LACK
		end
	end

	return OR_OK
end

----------------------------------------------------------------------------------------
--	�ϳɽ���,�����������
----------------------------------------------------------------------------------------
function x700953_AbilityConsume(sceneId, selfId)
	-- ���Ƚ�����������
	VigorCost = x700953_g_RecipeLevel * 2 + 1
	VigorValue = GetHumanVigor(sceneId, selfId) - VigorCost
	SetHumanVigor(sceneId, selfId, VigorValue)

	-- Ȼ����в�������

	for idx, Mat in x700953_g_CaiLiao do
		nCount = Mat.Count

		ret = LuaFnDelAvailableItem(sceneId, selfId, Mat.ID, nCount)
		if ret ~= 1 then
			return 0
		end
	end

	return 1
end

----------------------------------------------------------------------------------------
--	�ϳɳɹ�,������Ʒ
----------------------------------------------------------------------------------------
function x700953_AbilityProduce(sceneId, selfId)
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, x700953_g_AbilityID)

	-- �����m�t c�i�� [1, 10000]
	rand = random(10000)

	for i, item in x700953_g_ChanPin do
		if item.Odds >= rand then
			Quality = CallScriptFunction( ABILITYLOGIC_ID, "CalcQuality", sceneId, x700953_g_RecipeLevel, AbilityLevel, x700953_g_AbilityMaxLevel,item.ID )

			local pos = LuaFnTryRecieveItem(sceneId, selfId, item.ID, QUALITY_MUST_BE_CHANGE)
			if pos ~= -1 then
				LuaFnSetItemCreator( sceneId, selfId, pos, LuaFnGetName( sceneId, selfId ) )
			else
				return OR_ERROR
			end

			LuaFnAuditAbility( sceneId, selfId, x700953_g_AbilityID, x700953_g_RecipeID, Quality )
			LuaFnSendAbilitySuccessMsg( sceneId, selfId, x700953_g_AbilityID, x700953_g_RecipeID, item.ID )
			return OR_OK
		end
		LuaFnAuditAbility( sceneId, selfId, x700953_g_AbilityID, x700953_g_RecipeID, 0 )
	end

	return OR_ERROR
end
