--300265
-- V:\�߻��ĵ�\�߻��ĵ�Ŀ¼�ṹ\2 ����ĵ�\2.1 ��Ϸ��λ���\�ر���Ʒ\�������Ʒ������.docx
-- 
-- 

--�ű���
x300265_g_scriptId = 300265
x300265_g_ItemId = 30008114
x300265_g_ItemId01 = 0
x300265_g_BuffId = 90

--**********************************
--�¼��������
--**********************************
function x300265_OnDefaultEvent( sceneId, selfId, nBagIndex )
	--1�������������ǲ�����BUFF
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300265_g_BuffId) == 1   then
		BeginEvent(sceneId)
			AddText(sceneId,"ֻ�еȼ���Ч����ʧ֮�����ʹ�á�")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 
		
	end
	
	local nCurCount = GetBagItemParam(sceneId, selfId, nBagIndex, 4, 2)
	SetBagItemParam(sceneId, selfId, nBagIndex, 8, 2, 5)
	-- ��ȫ���
	if LuaFnGetItemTableIndexByIndex(sceneId, selfId, nBagIndex) ~= x300265_g_ItemId
		 and LuaFnGetItemTableIndexByIndex(sceneId, selfId, nBagIndex) ~= x300265_g_ItemId01 then
		BeginEvent(sceneId)
			AddText(sceneId,"��Ʒ����ʹ��")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	local ret = 1
	if nCurCount >= 4  then
		-- �ж��������Ʒ��ID�ǲ�����ȷ��
		ret = EraseItem(sceneId, selfId, nBagIndex)
	else
		SetBagItemParam(sceneId, selfId, nBagIndex, 4, 2, nCurCount+1)
	end

	if ret == 1   then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x300265_g_BuffId, 100 )
		BeginEvent(sceneId)
			AddText(sceneId,"��@�����R���ļ���Ч����")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	else
		BeginEvent(sceneId)
			AddText(sceneId,"��Ʒ����ʹ�á�")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	end
	
	LuaFnRefreshItemInfo(sceneId, selfId, nBagIndex)
	
end

function x300265_IsSkillLikeScript( sceneId, selfId)
	return 0
end
