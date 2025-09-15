-- 300057
-- ������ ʹ��

--�ű���
x300057_g_scriptId = 300057

x300057_g_ItemId = 30008033

x300057_g_BuffId = 8500
x300057_g_BuffId_1 = 57

--**********************************
--�¼��������
--**********************************
function x300057_OnDefaultEvent( sceneId, selfId, nItemIndex )

	-- ��������� 8500 ���� 57 ��BUFF �Ͳ����ٳ�C�i n�y ҩ
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300057_g_BuffId) == 1 or
		 LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300057_g_BuffId_1) == 1  then
		BeginEvent(sceneId)
			AddText(sceneId,"Ch� c� th� ��i sau khi hi�u qu� t� �ng nh�t v�t ph�m m�t m�i c� th� s� d�ng.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	x300057_UseItem( sceneId, selfId, nItemIndex)
end

function x300057_IsSkillLikeScript( sceneId, selfId)
	return 0
end

--**********************************
-- 
--**********************************
function x300057_UseItem( sceneId, selfId, nItemIndex)
	
	-- �ȼ��C�i n�y  nItemIndex to� � ��Ʒ��ng����ng�͵�ǰto� � ��Ӧ,
	local nItemId = GetItemTableIndexByIndex(sceneId, selfId, nItemIndex)
	if nItemId ~= x300057_g_ItemId   then
		BeginEvent(sceneId)
			AddText(sceneId,"  Sai s�t trong tay n�i")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	-- ��m�t c�iҩ
	local ret = EraseItem(sceneId, selfId, nItemIndex)

	if ret == 1   then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x300057_g_BuffId, 100 )
		--BeginEvent(sceneId)
		--	AddText(sceneId,"��������m�t c�iСʱto� � ����˫��Kinh nghi�mʱ��.")
		--EndEvent(sceneId)
		--DispatchMissionTips(sceneId,selfId)
		
	else
		BeginEvent(sceneId)
			AddText(sceneId,"V�t ph�m kh�ng th� s� d�ng")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	end
end


