-- 300068 
-- ��굤
-- ʹ��֮����������5 �i�mǱ��.

-- �ű���
x300068_g_scriptId = 300068

-- ��굤
x300068_g_ItemId = 30008044
--**********************************
-- �¼��������
--**********************************
function x300068_OnDefaultEvent( sceneId, selfId, nItemIndex)
	-- ��ng��ʹ�ù���굤,Ŀǰֻ����굤���MD_EX_HUMAN_QIANNENG_SUBJOIN���в���
	local Runhundan_Point = GetMissionData( sceneId, selfId, MD_EX_HUMAN_QIANNENG_SUBJOIN )
	if( Runhundan_Point > 0 ) then
		BeginEvent( sceneId )
			AddText( sceneId, "Nhu�n h�n �an ch� c� th� s� d�ng m�t l�n" )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
	else
		if( x300068_DelRunhundan(sceneId, selfId, nItemIndex ) > 0 ) then
			
			--����5c�i�������� �i�m
			local RemainPoint = GetPlayerRemainPoints(sceneId, selfId)
			RemainPoint = RemainPoint + 5
			SetPlayerRemainPoints(sceneId, selfId, RemainPoint)
			
			--��¼��굤����ӳ� �i�m,��굤�ӳ� �i�mֻ��5
			SetMissionData( sceneId, selfId, MD_EX_HUMAN_QIANNENG_SUBJOIN, 5 )
			AuditRunHunDan( sceneId, selfId, x300068_g_ItemId )
			
			BeginEvent( sceneId )
				AddText( sceneId, "#{DHMB_0728_16}" )
			EndEvent( sceneId )
			DispatchEventList( sceneId,selfId,-1 )
		end
	end
	
--
--		INT nQianNeng = pHuman->GetMissionData(MD_EX_HUMAN_QIANNENG_SUBJOIN) + 5;
--		pHuman->SetMissionData(MD_EX_HUMAN_QIANNENG_SUBJOIN, nQianNeng);
--
end

function x300068_IsSkillLikeScript( sceneId, selfId )
 	return 0
end

function x300068_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end


function x300068_DelRunhundan( sceneId, selfId, nItemIndex)
	local nItemId = GetItemTableIndexByIndex(sceneId, selfId, nItemIndex)
	if nItemId == x300068_g_ItemId then
		local EraseRet = EraseItem( sceneId, selfId, nItemIndex )
		if EraseRet < 0 then      --���ɾ��th�t b�i,�����������������
			return 0
		else
			return 1			--ɾ���ɹ�
		end
	else
		return 0
	end
end
