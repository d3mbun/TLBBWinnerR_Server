--С�����䷽�ű�
--��Ӧ����� Thi�n S�n ������

--�ű���
x700342_g_scriptId = 700342

--C�n to� � ��c�p
x700342_g_AbilityNeedLevel = 2
--�䷽to� � ID
x700342_g_RecipeId = 342
--˳����ЧID
x700342_g_SpecialEffectID = 18;
--**********************************
--�¼��������
--**********************************
function x700342_OnDefaultEvent( sceneId, selfId, bagIndex )
--	-- ��t ���c�������ܵ�c�p
--	AbilityLevel = QueryHumanAbilityLevel(sceneId,selfId ,ABILITY_PENGREN)

--	if AbilityLevel < x700342_g_AbilityNeedLevel then
--		BeginEvent(sceneId)
--			strText = "���ܵ�c�p����"
--			AddText(sceneId,strText);
--		EndEvent(sceneId)
--		DispatchMissionTips(sceneId,selfId)
--		return
--	end
--	-- ����ͨ���䷽ѧϰ
--	SelfDestructFlag = CallScriptFunction( USERECIPE_SCRIPT, "ReadRecipe", sceneId, selfId, x700342_g_RecipeId )
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
function x700342_IsSkillLikeScript( sceneId, selfId)
	return 1;
end
--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x700342_CancelImpacts( sceneId, selfId )
	return 0;
end
--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x700342_OnConditionCheck( sceneId, selfId )
	AbilityLevel = QueryHumanAbilityLevel(sceneId,selfId ,ABILITY_XUANBINGSHU)
	--У��ʹ��to� � ��Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	--������ܲ���ʹ��Ҫ��
	if AbilityLevel < x700342_g_AbilityNeedLevel then
		BeginEvent(sceneId)
			strText = "���ܵ�c�p����"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId);
		return 0;
	end
	if (0<LuaFnIsPrescrLearned( sceneId, selfId, x700342_g_RecipeId)) then
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
function x700342_OnDeplete( sceneId, selfId )
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
function x700342_OnActivateOnce( sceneId, selfId )
	-- ����ͨ���䷽ѧϰ
	CallScriptFunction( USERECIPE_SCRIPT, "ReadRecipe", sceneId, selfId, x700342_g_RecipeId )
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x700342_g_SpecialEffectID, 0);
	return 1;
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x700342_OnActivateEachTick( sceneId, selfId)
	return 1;
end
