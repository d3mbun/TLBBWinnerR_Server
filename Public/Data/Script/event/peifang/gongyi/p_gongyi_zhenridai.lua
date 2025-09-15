--�ٻ����䷽�ű�
--��Ӧ����� ����

--�ű���
x700152_g_scriptId = 700152

--C�n to� � ��c�p
x700152_g_AbilityNeedLevel = 10
--�䷽to� � ID
x700152_g_RecipeId = 152
--˳����ЧID
x700152_g_SpecialEffectID = 18;
--**********************************
--�¼��������
--**********************************
function x700152_OnDefaultEvent( sceneId, selfId, bagIndex )
--	-- ��t ���c�������ܵ�c�p
--	AbilityLevel = QueryHumanAbilityLevel(sceneId,selfId ,ABILITY_GONGYI)

--	if AbilityLevel < x700152_g_AbilityNeedLevel then
--		BeginEvent(sceneId)
--			strText = "���ܵ�c�p����"
--			AddText(sceneId,strText);
--		EndEvent(sceneId)
--		DispatchMissionTips(sceneId,selfId)
--		return
--	end
--	-- ����ͨ���䷽ѧϰ
--	SelfDestructFlag = CallScriptFunction( USERECIPE_SCRIPT, "ReadRecipe", sceneId, selfId, x700152_g_RecipeId )
--
--	-- ѧ���Ժ����Ҵݻ�
--	if SelfDestructFlag > 0 then
--		EraseItem(sceneId, selfId, bagIndex)
--	end
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x700152_IsSkillLikeScript( sceneId, selfId)
	return 1;
end
--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x700152_CancelImpacts( sceneId, selfId )
	return 0;
end
--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x700152_OnConditionCheck( sceneId, selfId )
	AbilityLevel = QueryHumanAbilityLevel(sceneId,selfId ,ABILITY_GONGYI)
	--У��ʹ��to� � ��Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	--������ܲ���ʹ��Ҫ��
	if AbilityLevel < x700152_g_AbilityNeedLevel then
		BeginEvent(sceneId)
			strText = "���ܵ�c�p����"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId);
		return 0;
	end
	if (0<LuaFnIsPrescrLearned( sceneId, selfId, x700152_g_RecipeId)) then
		BeginEvent(sceneId)
			strText = "C�i n�y �䷽�Ѿ�ѧ����"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId);
		return 0;		
	end
	return 1;
end

--**********************************
--���ļ�⼰�������: 
--H� th�ng��T�i ��������to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--ע��: �ⲻ�⸺������to� � ���Ҳ��������to� � ִ��.
--**********************************
function x700152_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end
	return 0;
end

--**********************************
--ֻ��ִ��m�t �����: 
--������˲�����ܻ�T�i ������ɺ����C�i n�y �ӿ�(�����������Ҹ���������Th�a m�nto� � ʱ��),������
--����Ҳ��T�i ������ɺ����C�i n�y �ӿ�(����to� � m�t ��ʼ,���ĳɹ�ִ��֮��).
--Tr� v�1: ����ɹ���Tr� v�0: ����th�t b�i.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x700152_OnActivateOnce( sceneId, selfId )
	-- ����ͨ���䷽ѧϰ
	CallScriptFunction( USERECIPE_SCRIPT, "ReadRecipe", sceneId, selfId, x700152_g_RecipeId )
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x700152_g_SpecialEffectID, 0);
	return 1;
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x700152_OnActivateEachTick( sceneId, selfId)
	return 1;
end
