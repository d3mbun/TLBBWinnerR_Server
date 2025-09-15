--------------------------------------------
--ǩ��¼���߽ű�
--Created By ��ΰ
--------------------------------------------

--�ű�ID
x335806_g_scriptId = 335806
--ǩ������ID
x335806_g_signatureId = 40004452; 
--���ռ�����
x335806_g_FullNum = 15;
-- �ռ�ǩ�������
x335806_g_MissionId = 1130;

--**********************************
--�¼��������
--**********************************
function x335806_OnDefaultEvent( sceneId, selfId, bagIndex )	

end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x335806_IsSkillLikeScript( sceneId, selfId)
	return 1
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x335806_CancelImpacts( sceneId, selfId )
	return 0;
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x335806_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��Ʒ
	if 1 ~= LuaFnVerifyUsedItem(sceneId, selfId) then
		return 0;
	end
	if x335806_IsFitCondition(sceneId, selfId) == 0 then
		return 0;
	end
	-- ���ͨ��
	local targetId = LuaFnGetTargetObjID(sceneId, selfId);
	local myName = GetName(sceneId, selfId);
	BeginEvent(sceneId)
		local text = format("#{_INFOUSR%s}Ng߽i �ang thu th�p ch� k�, kh�ng ���c r�i �i ph�m vi ph� c�n.", myName);
		AddText(sceneId, text);
	EndEvent()
	DispatchMissionTips(sceneId, targetId);
	return 1;
end

--**********************************
--���ļ�⼰�������: 
--H� th�ng��T�i ��������to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--ע��: �ⲻ�⸺������to� � ���Ҳ��������to� � ִ��.
--**********************************
function x335806_OnDeplete( sceneId, selfId )	
	return 1;
end

--**********************************
--ֻ��ִ��m�t �����: 
--������˲�����ܻ�T�i ������ɺ����C�i n�y �ӿ�(�����������Ҹ���������Th�a m�nto� � ʱ��),������
--����Ҳ��T�i ������ɺ����C�i n�y �ӿ�(����to� � m�t ��ʼ,���ĳɹ�ִ��֮��).
--Tr� v�1: ����ɹ���Tr� v�0: ����th�t b�i.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x335806_OnActivateOnce( sceneId, selfId )
	if IsHaveMission(sceneId, selfId, x335806_g_MissionId) == 1 then
		local misIndex = GetMissionIndexByID(sceneId, selfId, x335806_g_MissionId);
		SetMissionByIndex(sceneId, selfId, misIndex, 2, 1);
	end	
	return 1;
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x335806_OnActivateEachTick( sceneId, selfId)
	--��������ng�񳬾���
	local targetId = LuaFnGetTargetObjID(sceneId, selfId);
	local cur_x, cur_y = LuaFnGetWorldPos(sceneId, selfId);
	local cur_x2, cur_y2 = LuaFnGetWorldPos(sceneId, targetId);
	if (cur_x2-cur_x)*(cur_x2-cur_x) + (cur_y2-cur_y)*(cur_y2-cur_y) > 30 then 	
		x335806_MsgBox(sceneId, selfId, "#{SJQM_8815_14}");
		return 0;	
	end
	if IsHaveMission(sceneId, selfId, x335806_g_MissionId) == 1 then
		local misIndex = GetMissionIndexByID(sceneId, selfId, x335806_g_MissionId);
		local tickCount = GetMissionParam(sceneId, selfId, misIndex, 2)
		if tickCount >= 60 then --1 ph�tʱ�䵽,����������
			--�������
			if x335806_IsFitCondition(sceneId, selfId) == 0 then
				return 0;
			end		
			--������ǩ������
			local bagPos = TryRecieveItem(sceneId, selfId, x335806_g_signatureId, QUALITY_MUST_BE_CHANGE);
			if bagPos == -1 then
				x335806_MsgBox(sceneId, selfId, "C�p ��o c� ch� k� h�o h�u th�t b�i!");
				return 0;
			end
			--ǩ��
			local targetId = LuaFnGetTargetObjID(sceneId, selfId);
			local friendName = GetName(sceneId, targetId);
			LuaFnSetItemCreator(sceneId, selfId, bagPos, friendName);
			local num = GetItemCount(sceneId, selfId, x335806_g_signatureId);
			SetMissionByIndex(sceneId, selfId, misIndex, 1, num);
			if num >= x335806_g_FullNum then
				SetMissionByIndex(sceneId, selfId, misIndex, 0, 1);
			end
			local text = format("�� th�nh c�ng thu th�p ���c %d/15 c�i ch� k�.", num);
			x335806_MsgBox(sceneId, selfId, text);	
		end		
		SetMissionByIndex(sceneId, selfId, misIndex, 2, tickCount+1);
	end		
	return 1;   
end

--**********************************
--��Ϣ��ʾ
--**********************************
function x335806_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
-- ������� 
-- �ɹ�: 1  th�t b�i: 0
--**********************************
function x335806_IsFitCondition(sceneId, selfId)
	--�ռ�����?
	local text = "";
	if LuaFnGetItemCount(sceneId, selfId, x335806_g_signatureId) >= x335806_g_FullNum then
		x335806_MsgBox(sceneId, selfId, "#{SJQM_8815_09}");
		return 0;
	end
	--ѡ��ʹ�ö�����?
	local targetId = LuaFnGetTargetObjID(sceneId, selfId);
	if targetId < 0 or targetId == selfId then
		x335806_MsgBox(sceneId, selfId, "#{YRJ_SelfUseTip}");	
		return 0;
	end	
	--ֻ�ܸ����ʹ��
	local objType = GetCharacterType( sceneId, targetId )--��������
	if(objType ~= 1)then	--������ngHuman
		x335806_MsgBox( sceneId, selfId, "#{ResultText_8}")	--��ЧĿ��
		return 0
	end	
	--��ng����?
	if LuaFnIsFriend(sceneId, selfId, targetId) == 1 then
		if LuaFnGetFriendPoint(sceneId, selfId, targetId) < 200 then --200�Ѻö�?
			x335806_MsgBox(sceneId, selfId, "#{SJQM_8815_10}");
			return 0;
		end
	else --�Ǻ���
		x335806_MsgBox(sceneId, selfId, "#{SJQM_8815_11}");
		return 0;
	end	
	--��������
	local cur_x, cur_y = LuaFnGetWorldPos(sceneId, selfId);
	local cur_x2, cur_y2 = LuaFnGetWorldPos(sceneId, targetId);
	if (cur_x2-cur_x)*(cur_x2-cur_x) + (cur_y2-cur_y)*(cur_y2-cur_y) > 30 then 	
		x335806_MsgBox(sceneId, selfId, "V��t qua ph�m vi!");
		return 0;	
	end
	--���иú���ǩ��?
	local friendName = GetName(sceneId, targetId);
	local taskBagStartPos	= LuaFnGetMaterialEndBagPos(sceneId, selfId) + 1;
	for i=taskBagStartPos, taskBagStartPos+19 do
		local bSucc, Creator = LuaFnGetItemCreator(sceneId, selfId, i);
		if friendName == Creator then
			x335806_MsgBox(sceneId, selfId, "#{SJQM_8815_12}");
			return 0;
		end
	end
	--�������пռ�?
	if LuaFnGetTaskItemBagSpace(sceneId, selfId) == 0 then
		x335806_MsgBox(sceneId, selfId, "#{SJQM_8815_13}");
		return 0;		
	end
	--��������
	if IsHaveMission(sceneId, selfId, x335806_g_MissionId) == 0 then
		x335806_MsgBox(sceneId, selfId, "Ng߽i �� v�t b� nhi�m v� ch� k�, n�n ��o c� kh�ng th� d�ng!");
		return 0;		
	end
	--OK
	return 1;
end
