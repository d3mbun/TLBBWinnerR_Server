--------------------------------------------
--�鱨�����߽ű�
--Created By ��ΰ
--------------------------------------------

--�ű�ID
x335807_g_scriptId = 335807
-- �ռ��鱨�����
x335807_g_MissionId = 1121;

--**********************************
--�¼��������
--**********************************
function x335807_OnDefaultEvent( sceneId, selfId, bagIndex )	
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x335807_IsSkillLikeScript( sceneId, selfId)
	return 1
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x335807_CancelImpacts( sceneId, selfId )
	return 0;
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x335807_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��Ʒ
	if IsHaveMission(sceneId, selfId, x335807_g_MissionId) ==  1 then	
		if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
			return 0;
		end	
		if x335807_IsFitCondition(sceneId, selfId) == 0 then
			return 0;
		end
		local misIndex = GetMissionIndexByID(sceneId, selfId, x335807_g_MissionId);	
		local flag = GetMissionParam(sceneId, selfId, misIndex, 5);
		if flag == 0 then
			x335807_MsgBox(sceneId, selfId, "Ng߽i �ang thu th�p t�nh b�o, th�nh kh�ng r�i �i v�ng ph� c�n, n�u kh�ng thu th�p t�nh b�o th�t b�i."); 
			SetMissionByIndex(sceneId, selfId, misIndex, 5, 1);		
		end
		return 1;
	end
	return 0;
end

--**********************************
--���ļ�⼰�������: 
--H� th�ng��T�i ��������to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--ע��: �ⲻ�⸺������to� � ���Ҳ��������to� � ִ��.
--**********************************
function x335807_OnDeplete( sceneId, selfId )	
	return 1;
end

--**********************************
--ֻ��ִ��m�t �����: 
--������˲�����ܻ�T�i ������ɺ����C�i n�y �ӿ�(�����������Ҹ���������Th�a m�nto� � ʱ��),������
--����Ҳ��T�i ������ɺ����C�i n�y �ӿ�(����to� � m�t ��ʼ,���ĳɹ�ִ��֮��).
--Tr� v�1: ����ɹ���Tr� v�0: ����th�t b�i.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x335807_OnActivateOnce( sceneId, selfId )
	if IsHaveMission(sceneId, selfId, x335807_g_MissionId) == 1 then
		local misIndex = GetMissionIndexByID(sceneId, selfId, x335807_g_MissionId);
		local ringNum = GetMissionParam(sceneId, selfId, misIndex, 1) + 1;	
		SetMissionByIndex(sceneId, selfId, misIndex, 1, ringNum);  				--��������1
		SetMissionByIndex(sceneId, selfId, misIndex, ringNum+1, sceneId); --�ó����Ѵ�̽��	
		SetMissionByIndex(sceneId, selfId, misIndex, 5, 0);								--��ʾ��Ϣ��ʶ
		if ringNum >= 3 then 																							-- �����������
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1);
		end
		local msg = "";
		msg = format("#{DT_80815_23}%d/3#{DT_80815_24}", ringNum);
		x335807_MsgBox(sceneId, selfId, msg);	
		return 1;
	end
	return 0;
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x335807_OnActivateEachTick( sceneId, selfId)
	return 1;
end

--**********************************
--��Ϣ��ʾ
--**********************************
function x335807_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
-- ������� 
-- �ɹ�: 1  th�t b�i: 0
--**********************************
function x335807_IsFitCondition(sceneId, selfId)
	--T�i ��Ұ���Th�nh th�?
	if GetCityGuildID(sceneId, selfId, sceneId) == -1 then
		x335807_MsgBox(sceneId, selfId, "#{DTGX_080822_8}");
		return 0;
	elseif GetCityGuildID(sceneId, selfId, sceneId) == GetHumanGuildID(sceneId, selfId) then -- ������
		x335807_MsgBox(sceneId, selfId, "#{DTGX_080822_9}");
		return 0;	
	end
	--�Ѵ�̽��?
	local misIndex = GetMissionIndexByID(sceneId, selfId, x335807_g_MissionId);
 	for i=2, 3 do 	--2,3λ�����̽to� � ��m�t ,��c�iTh�nh th�ID
 		local city = GetMissionParam(sceneId, selfId, misIndex, i);
 		if city == sceneId then
			x335807_MsgBox(sceneId, selfId, "#{DTGX_080822_10}");
			return 0;	 			
 		end
 	end
 	--���?
 	if LuaFnHasTeam(sceneId, selfId) == 0 then
		x335807_MsgBox(sceneId, selfId, "#{DTGX_080822_11}");
		return 0;	 		
 	elseif GetTeamSize(sceneId, selfId) < 2 then
 		x335807_MsgBox(sceneId, selfId, "#{DTGX_080822_11}");
		return 0;	 		
 	end
 	local teamSize = GetTeamSize(sceneId, selfId);
 	--еi vi�n ��T�i ����
 	if GetNearTeamCount(sceneId, selfId) < teamSize then
 		x335807_MsgBox(sceneId, selfId, "#{DTGX_080822_13}");
		return 0;	 		
 	end 	
 	--���鶼��ng�����Ա?
 	local guildId = GetHumanGuildID(sceneId, selfId);
 	for i=0, teamSize-1 do
 		local memGuid = GetTeamMemberGuid(sceneId, selfId, i);
 		local objId = LuaFnGuid2ObjId(sceneId, memGuid);
 		if objId ~= -1 then
			if GetHumanGuildID(sceneId, objId) ~= guildId then
				x335807_MsgBox(sceneId, selfId, "#{DTGX_080822_12}");
				return 0;	 			
			end
	 	end
 	end
 	--�Ѵ�̽����Th�nh th�?
 	local ringNum = GetMissionParam(sceneId, selfId, misIndex, 1)
 	if ringNum >= 3 then
		x335807_MsgBox(sceneId, selfId, "#{DTGX_080822_14}");
		return 0;	  		
 	end
	-- OK
	return 1;
end
