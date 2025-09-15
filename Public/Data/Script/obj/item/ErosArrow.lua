--���˽ڻ

--����֮��ʹ�ýű�


--�ű���
x300071_g_scriptId = 300071

--���ʹ�ô���
x300071_UseMaxCount = 3

--**********************************
--�¼��������
--**********************************
function x300071_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x300071_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x300071_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x300071_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end

	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if targetId < 0 then
		return 0
	end

	local objType = GetCharacterType( sceneId, targetId )

	if objType == 1 then--��to� � ��ng���....

			--���ܶ��Լ�ʹ��....
		if selfId == targetId then
			x300071_MsgBox( sceneId, selfId, "#{QRJ_81009_19}" )
			return 0
		end
		
			--�ж�����to� � �Ա�
			
		if (LuaFnGetSex(sceneId,selfId) == LuaFnGetSex(sceneId,targetId)) then
			x300071_MsgBox( sceneId, selfId, "#{QRJ_81009_20}")
			return 0
		end
	
	else
		LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
		return 0
	end

	return 1

end

--**********************************
--���ļ�⼰�������: 
--H� th�ng��T�i ��������to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--ע��: �ⲻ�⸺������to� � ���Ҳ��������to� � ִ��.
--**********************************
function x300071_OnDeplete( sceneId, selfId )
	if(LuaFnDepletingUsedItem(sceneId, selfId)) then
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
function x300071_OnActivateOnce( sceneId, selfId )
	
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if targetId < 0 then
		return 1
	end
	local objType = GetCharacterType( sceneId, targetId )

	if objType == 1 then--��to� � ��ng�������....
		
			--������to� � λ��
		local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
		if bagId < 0 then
			return 1
		end 
			--�����Ʒ��ng�����
		if LuaFnLockCheck( sceneId, selfId, bagId, 0 ) < 0 then
			x300071_MsgBox( sceneId, selfId, "V�t ph�m n�y �� b� kh�a!" )
			return 1
		end
		
		local	CurUseCount			--����֮��to� � ʣ��ʹ�ô���
		CurUseCount		= GetBagItemParam( sceneId, selfId, bagId, 8, 2 )	--��ȡʣ��ʹ�ô���	
		if(CurUseCount == 0)then	--��m�t ��ʹ��
			CurUseCount = x300071_UseMaxCount		
		end
		
		if (CurUseCount>0) then
			CurUseCount = CurUseCount - 1
			if(CurUseCount <= 0) then
				local ret = EraseItem( sceneId, selfId, bagId )		
				if ret ~= 1 then
					return 0--ɾ��th�t b�i
				end
			end
			--����m�t ������
			SetBagItemParam( sceneId, selfId, bagId, 4, 2, x300071_UseMaxCount )--�������ʹ�ô���
			SetBagItemParam( sceneId, selfId, bagId, 8, 2, CurUseCount )--���滹����ʹ�ô���
			
			--ˢ��Client��to� � ������Ʒ��Ϣ
			LuaFnRefreshItemInfo( sceneId, selfId, bagId )
			
			LuaFnSendSpecificImpactToUnit(sceneId, targetId, targetId, targetId, 74, 1500) 
			x300071_MsgBox( sceneId, targetId, LuaFnGetName(sceneId,selfId).."#{QRJ_81009_22}" )
		end 
		
	else

		LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
		return 1

	end



	return 1;

end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x300071_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

--**********************************
--��Ϣ��ʾ
--**********************************
function x300071_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
