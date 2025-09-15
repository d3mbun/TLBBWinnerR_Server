--ע��: 

--��Ʒ����to� � �߼�ֻ��ʹ�û������ܺͽű���ʵ��


--�ű�:

--������ng�ű�����:


--4903.lua
------------------------------------------------------------------------------------------
--m�t ����Ʒto� � Ĭ�Ͻű�

--�ű���
x889036_g_scriptId = 889036 --��ʱдC�i n�y ,������to� � ʱ��m�t ��Ҫ��.

--C�n to� � ��c�p
x889036_g_levelRequire = 1
--AE��Χ�뾶
x889036_g_radiusAE = 3.0
--AEto� � Ŀ���ϵ���
x889036_g_standFlag = 1 -- 2:����, 1: �Ѿ�, -1: �о�
--AEӰ����Ŀ����
x889036_g_effectCount = 4 -- -1:������
--Ч��to� � ID
x889036_g_Impact1 = 4906 --��ʱдC�i n�y 
x889036_g_Impact2 = -1 --����

--**********************************
--�¼��������
--**********************************
function x889036_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x889036_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x889036_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x889036_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if(0<=targetId) then
		-- Ŀ�������ng�Ѿ�to� � ���
		if LuaFnIsFriend(sceneId, targetId, selfId) ~= 1 then
			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
			return 0;
		end
		
		if LuaFnIsFriend(sceneId, selfId, targetId ) ~= 1 then
			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
			return 0;
		end
		-- Ŀ�������ng�о�to� � ���
--		if(1~=LuaFnUnitIsEnemy(sceneId, selfId, targetId)) then
--			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
--			return 0;
--		end
		-- Ŀ�������ng����to� � ���
--		if(1~=LuaFnUnitIsPartner(sceneId, selfId, targetId)) then
--			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
--			return 0;
--		end
		-- Ŀ��c�p��to� � ���
--		if(g_LevelRequire<=LuaFnGetLevel(sceneId, targetId)) then
--			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
--			return 0;
--		end
--		if(g_LevelRequire>=LuaFnGetLevel(sceneId, targetId)) then
--			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
--			return 0;
--		end

	end
	
	return 1; --��C�n �κ�����,����ʼ��Tr� v�1.
end

--**********************************
--���ļ�⼰�������: 
--H� th�ng��T�i ��������to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--ע��: �ⲻ�⸺������to� � ���Ҳ��������to� � ִ��.
--**********************************
function x889036_OnDeplete( sceneId, selfId )
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
function x889036_OnActivateOnce( sceneId, selfId )
	if(-1~=x889036_g_Impact1) then
		--���Լ���Ч��
--		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x889036_g_Impact1, 0);
		--��Ŀ���Ч��
		local targetId = LuaFnGetTargetObjID(sceneId, selfId)
		if(0<=targetId) then
			if LuaFnIsFriend(sceneId, targetId, selfId) > 0 then
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, targetId, x889036_g_Impact1, 0);
				
				BeginEvent(sceneId)
			    AddText(sceneId, "Ng߽i c�ng �i ph߽ng � h�u h�o gia t�ng 100 r�i");
			  EndEvent(sceneId)
			  DispatchMissionTips(sceneId,selfId)
			  
			end
		end
		--�Լ���ΧAE
--		local posX,posZ = LuaFnGetUnitPosition(sceneId, selfId)
--		LuaFnSendImpactAroundPosition(sceneId, selfID, posX, posZ, x889036_g_radiusAE, x889036_g_standFlag, x889036_g_levelRequire, x889036_g_effectCount, x889036_g_Impact1, 0)
		--ָ���� �i�m��ΧAE
--		local posX,posZ = LuaFnGetTargetPosition(sceneId, selfId)
--		LuaFnSendImpactAroundPosition(sceneId, selfID, posX, posZ, x889036_g_radiusAE, x889036_g_standFlag, x889036_g_levelRequire, x889036_g_effectCount, x889036_g_Impact1, 0)
		--Ŀ��c�i����ΧAE
--		local targetId = LuaFnGetTargetObjID(sceneId, selfId)
--		if(0<=targetId) then
--			local posX,posZ = LuaFnGetUnitPosition(sceneId, targetId)
--			LuaFnSendImpactAroundPosition(sceneId, selfID, posX, posZ, x889036_g_radiusAE, x889036_g_standFlag, x889036_g_levelRequire, x889036_g_effectCount, x889036_g_Impact1, 0)
--		end
		

	end
	return 1;
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x889036_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end
