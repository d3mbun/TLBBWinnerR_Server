--��������

-- �ű���
x892100_g_ScriptId	= 892100

function x892100_Tips( sceneId, selfId,msg )
BeginEvent( sceneId )
		AddText( sceneId, msg)
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
--**********************************
-- �¼��������
--**********************************
function x892100_OnDefaultEvent( sceneId, selfId )

end

function x892100_OnActivateOnce( sceneId, selfId )
	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId )
	if itemTblIndex==38000287 then
		local pos = TryRecieveItem( sceneId, selfId, 10157001, 1 )
		if pos==-1 then
			x892100_Tips( sceneId, selfId, "�����ռ䲻��" )
			return
		end
		DelItem(sceneId,selfId,itemTblIndex,1)
		return
	end
	if GetItemCount(sceneId, selfId, itemTblIndex)<20 then
		x892100_Tips( sceneId, selfId,"������Ƭ����20��������" )
		return
	end
	local pos = TryRecieveItem( sceneId, selfId, itemTblIndex-100, 20 )
	if pos==-1 then
		x892100_Tips( sceneId, selfId, "�����ռ䲻��" )
		return
	end
	DelItem(sceneId,selfId,itemTblIndex,20)
end

--**********************************
-- ����1���Ѿ�ȡ����ӦЧ��������ִ�к�������������0��û�м�⵽���Ч��������ִ�С�
--**********************************
function x892100_CancelImpacts( sceneId, selfId )
	return 0
end

--**********************************
--���ļ�⼰������ڣ��������ĵļ���ִ�У�
--����1�����Ĵ���ͨ�������Լ���ִ�У�����0�����ļ��ʧ�ܣ��жϺ���ִ�С�
--**********************************
function x892100_OnDeplete( sceneId, selfId )
	return 1
end

--**********************************
-- ���������ڣ�����1���������ͨ�������Լ���ִ�У�����0���������ʧ�ܣ��жϺ���ִ�С�
--**********************************
function x892100_OnConditionCheck( sceneId, selfId )
	return 1
end
--**********************************
-- 
--**********************************
function x892100_IsSkillLikeScript( sceneId, selfId)
	return 1
end