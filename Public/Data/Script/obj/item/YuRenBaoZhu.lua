--------------------------------------------
--Th�ng B�m B�o Ch�u���߽ű�
--Created By �ŵ·�
--------------------------------------------

--�ű�ID
x335136_g_scriptId = 335136

--Th�ng B�m B�o Ch�uID
x335136_g_YuRenBaoZhuID = 30501161

--���ʹ�ô���
x335136_g_CanUseMaxCount = 5

x335136_g_CanUseCity = {[1] = SCENE_LUOYANG,[2] = SCENE_SUZHOU,[3] = SCENE_DALI,
	                      [4] = SCENE_LOULAN,[5] = 71,[6] = 72}
--Ч������
x335136_g_ImpactCount = 10

--Ч��ID��
x335136_g_ImpactTable = { 
	[1] = 
	{													
		[1] = 5000,
		[2] = 5001,
		[3] = 5002,
		[4] = 5003,
		[5] = 5004,
		[6] = 5005,
		[7] = 5006,
		[8] = 5007,
		[9] = 5008,
		[10] = 5009
	},
	[2] =
	{
		[1] = 5014,
		[2] = 5015,
		[3] = 5016,
		[4] = 5017,
		[5] = 5018,
		[6] = 5019,
		[7] = 5020,
		[8] = 5021,
		[9] = 5022,
		[10] = 5023
	}
	

												}

--�����Ч��ID
x335136_g_LuoMaJianImpactID = 154


--**********************************
--�¼��������
--**********************************
function x335136_OnDefaultEvent( sceneId, selfId, bagIndex )	
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x335136_IsSkillLikeScript( sceneId, selfId)
	return 1
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x335136_CancelImpacts( sceneId, selfId )
	return 0
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x335136_OnConditionCheck( sceneId, selfId )
	--���Item��ng����Ч
	if(LuaFnVerifyUsedItem(sceneId, selfId) == 0) then
		return 0;	--Item��Чֱ��Tr� v�
	end
	-- zchw
	local itemIndex = LuaFnGetItemIndexOfUsedItem(sceneId, selfId);
	--���ܸ��Լ�ʹ��
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)--����ID
	if((targetId == selfId) or (targetId < 0))then
			x335136_MsgBox( sceneId, selfId, "#{YRJ_SelfUseTip}")	--���ܸ��Լ�ʹ��
			return 0;
	end
	
	--ֻ�ܸ����ʹ��
	local objType = GetCharacterType( sceneId, targetId )--��������
	if(objType ~= 1)then	--������ngHuman
		x335136_MsgBox( sceneId, selfId, "#{ResultText_8}")	--��ЧĿ��
		return 0
	end
	
	--�����Ʒ��ng�����
	local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )	--������to� � λ��
	if LuaFnLockCheck( sceneId, selfId, bagId, 0 ) < 0 then
		x335136_MsgBox( sceneId, selfId, "#{Item_Locked}" )	--��Ʒ�Ѽ���
		return 0
	end
	
	--��������ng����ng���ڰ�̯״̬
	if LuaFnIsStalling(sceneId, selfId) == 1  then
	  if itemIndex == x335136_g_YuRenBaoZhuID then
			x335136_MsgBox( sceneId, selfId, "#{YRJ_LimitStallageTip}")	--�޷��԰�̯״̬to� � ���ʹ��Th�ng B�m B�o Ch�u
		else
			x335136_MsgBox( sceneId, selfId, "Kh�ng th� �i tr�ng th�i #GB�y b�n #Wh�y s� d�ng s� � b�o ch�u");
		end
		return 0
	end
	
	--���Է���ng��T�i BUS��
	if(LuaFnIsInBus(sceneId, selfId, targetId) == 1)then
		if itemIndex == x335136_g_YuRenBaoZhuID then
			x335136_MsgBox( sceneId, selfId, "#{YRJ_TargetInBusTip}")	--�޷���BUS״̬to� � ���ʹ��Th�ng B�m B�o Ch�u
		else
			x335136_MsgBox( sceneId, selfId, "Kh�ng th� �i tr�ng th�i BUFF h�y s� d�ng s� � b�o ch�u");
		end
		return 0
	end
	
	--���Է���ng��T�i ˫�������
	if(LuaFnGetDRide(sceneId, selfId, targetId) == 1)then
		if itemIndex == x335136_g_YuRenBaoZhuID then
			x335136_MsgBox( sceneId, selfId, "#{YRJ_DoubleRideTip}")	--�޷���˫�����to� � ���ʹ��Th�ng B�m B�o Ch�u.
		else
			x335136_MsgBox( sceneId, selfId, "Kh�ng th� �i song nh�n k� h�y s� d�ng s� � b�o ch�u");
		end
		return 0
	end
	
	--��������ng��T�i �Ĵ�������(����L�u Lan),���T�i ,�������Ҳ��T�i �
  local flag = 0 
  for i,_ in x335136_g_CanUseCity do
  	if sceneId == x335136_g_CanUseCity[i] then
  		 flag = 1
  	end
  end
  if flag == 0 then --0��ʾ��Ҳ�T�i �Ĵ�������
		if itemIndex == x335136_g_YuRenBaoZhuID then
			x335136_MsgBox( sceneId, selfId, "#{YRJ_LimitCityTip}")	--ֻ��T�i Th�nh th���ʹ��Th�ng B�m B�o Ch�u
		else
			x335136_MsgBox( sceneId, selfId, "#{STBZ_090324_1}")
		end
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
function x335136_OnDeplete( sceneId, selfId )	
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1
	end
	return 0
end

--**********************************
--ֻ��ִ��m�t �����: 
--������˲�����ܻ�T�i ������ɺ����C�i n�y �ӿ�(�����������Ҹ���������Th�a m�nto� � ʱ��),������
--����Ҳ��T�i ������ɺ����C�i n�y �ӿ�(����to� � m�t ��ʼ,���ĳɹ�ִ��֮��).
--Tr� v�1: ����ɹ���Tr� v�0: ����th�t b�i.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x335136_OnActivateOnce( sceneId, selfId )
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if(targetId < 0) then	--Ŀ�겻�Ϸ�
		return 0
	end
	
	--��ȡ"����"��T�i ������to� � λ��
	local	bagId = LuaFnGetBagIndexOfUsedItem(sceneId, selfId)
	--zchw
  local itemIndex = LuaFnGetItemIndexOfUsedItem(sceneId, selfId);
	--��ȡ��¼T�i ��Ʒ����to� � ��λ����
	local	CurUseCount		= GetBagItemParam( sceneId, selfId, bagId, 8, 2 )	--��ȡʣ��ʹ�ô���	
	if(CurUseCount == 0)then	--��m�t ��ʹ��
		CurUseCount = x335136_g_CanUseMaxCount		
	end
  
	--���ٿ�ʹ�ô���
	CurUseCount = CurUseCount - 1
	if(CurUseCount <= 0) then
		local ret = EraseItem( sceneId, selfId, bagId )		
		if ret ~= 1 then
			return 0--ɾ��th�t b�i
		end
	end
	
	--����m�t ������
	SetBagItemParam( sceneId, selfId, bagId, 4, 2, x335136_g_CanUseMaxCount )--�������ʹ�ô���
	SetBagItemParam( sceneId, selfId, bagId, 8, 2, CurUseCount )--���滹����ʹ�ô���
	
	--ˢ��Client��to� � ������Ʒ��Ϣ
	LuaFnRefreshItemInfo( sceneId, selfId, bagId )
	
	--��Ч��
	local bRet = LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, targetId, x335136_g_LuoMaJianImpactID, 0)	--��ʹ�������Ч��
	
	if (bRet == 1) then	--������ɹ�
	  -- zchw
	  if (itemIndex == x335136_g_YuRenBaoZhuID) then
			local ImpactIndex = x335136_g_ImpactTable[1][random(x335136_g_ImpactCount)]	--���ѡ��Ч��
			bRet = LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, targetId, ImpactIndex, 0)		--����ӱ���Ч��
		elseif (itemIndex == 30501162) then --S� а B�o Ch�u
			local ImpactIndex = x335136_g_ImpactTable[2][random(x335136_g_ImpactCount)]	--���ѡ��Ч��
			bRet = LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, targetId, ImpactIndex, 0)		--����ӱ���Ч��
		end
	end
	
	if(bRet == 1) then --����ɹ�
		--zchw
		if (itemIndex == x335136_g_YuRenBaoZhuID) then
			 szMsg = format("Ng߽i %s s� d�ng Th�ng B�m B�o Ch�u", GetName(sceneId,selfId))
		elseif (itemIndex == 30501162) then --S� а B�o Ch�u
			 szMsg = format("Ng߽i %s s� d�ng S� а B�o Ch�u", GetName(sceneId,selfId))
		end	
		x335136_MsgBox( sceneId, targetId, szMsg )	--���Է���m�t c�i��Ϣ:Ng߽i XXXS� d�ng Th�ng B�m B�o Ch�u
	end
	
	return 1
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x335136_OnActivateEachTick( sceneId, selfId)
	return 1
end

--**********************************
--��Ϣ��ʾ
--**********************************
function x335136_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
