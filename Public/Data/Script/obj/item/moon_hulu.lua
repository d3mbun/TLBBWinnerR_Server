--------------------------------------------
--Nguy�t L�o��«���߽ű�
--Created By ��ΰ
--------------------------------------------

--�ű�ID
x335908_g_scriptId = 335908
-- �ռ��鱨�����
x335908_g_MissionId = 1144;

--������Ϣ��
x335908_g_select_sceneId = 
{
	[1]=  {6, 	"V� L��ng S�n B�ch vi�n th�ch tr�n", 	53,264, },
	[2]=  {7, 	"Ki�m c�c Ki�m m�n �i�p th�y",   	130,135, },
	[3]=  {8, 	"��n Ho�ng H�n h�i c�u ph�t",			260,260, },
	[4]=  {5, 	"K�nh h� Ng�c ��i l�m phong",			39,261, },
	[5]=  {4, 	"Th�i h� V� t� ca ��i",			160,252, },
	[6]=  {3, 	"Tung s�n Giang s�n �a ki�u",			275,85, },
	[7]=  {30, 	"T�y h� Nh�t v�ng h� b�o",     170,235, },
	[8]=  {24, 	"Nh� h�i B�ch kh� l�u tranh",     260,270, },
	[9]=  {18, 	"Nh�n Nam Phong ki�u t�ch chi�u",     150,250, },
	[10]= {31, 	"Long Tuy�n Phi l�u tr�c h�",     270,280, },
	[11]= {25, 	"Th߽ng S�n T� th�y ni�n hoa",     258,73, },
	[12]= {19, 	"Nh�n B�c B�ch l�p thi�n nh�n",     283,179, },
	[13]= {32, 	"V� Di Y�n t�a nh� ki�u",     54,182, },
	[14]= {26, 	"Th�ch L�m Phong loan nh�p t�",     195,53, },
	[15]= {20, 	"Th�o Nguy�n Lang V߽ng th�ch tr�n",     143,254, },
	[16]= {33, 	"Mai L�nh Mai l�nh ph�t quang",     284,82, },
	[17]= {27, 	"Ng�c Kh� Thanh mi nh� �u",     268,116, },
	[18]= {21, 	"Li�u T�y Ngao bao t߽ng h�i",     277,117, },
	[19]= {34, 	"Nam H�i Thi�n Nam nh�t tr�",     61,225, },
	[20]= {23,	"Ho�ng Long Ph� Thi�n tr� tuy�t c�nh",   289,66, },
}

--**********************************
--�¼��������
--**********************************
function x335908_OnDefaultEvent( sceneId, selfId, bagIndex )	
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x335908_IsSkillLikeScript( sceneId, selfId)
	return 1
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x335908_CancelImpacts( sceneId, selfId )
	return 0;
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x335908_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��Ʒ
	if IsHaveMission(sceneId, selfId, x335908_g_MissionId) ==  1 then	
		if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
			return 0;
		end	
		local ret, msg = x335908_IsFitCondition(sceneId, selfId);
		if ret == 0 then
			x335908_MsgBox( sceneId, selfId, msg );
			return 0;
		end
		--pass
		return 1;
	end
	return 0;
end

--**********************************
--�������ܿ�ʼ�ص��ӿ�: 
--H� th�ng��T�i ���ܿ�ʼto� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: ����ͨ��,���Լ���ִ�У�Tr� v�0: th�t b�i,�жϺ���ִ��.
--**********************************
function x335908_OnStartCharging( sceneId, selfId )	
	x335908_MsgBox(sceneId, selfId, "#{JZSJ_081119}");
	return 1;
end

--**********************************
--���ļ�⼰�������: 
--H� th�ng��T�i ��������to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--ע��: �ⲻ�⸺������to� � ���Ҳ��������to� � ִ��.
--**********************************
function x335908_OnDeplete( sceneId, selfId )	
	return 1;
end

--**********************************
--ֻ��ִ��m�t �����: 
--������˲�����ܻ�T�i ������ɺ����C�i n�y �ӿ�(�����������Ҹ���������Th�a m�nto� � ʱ��),������
--����Ҳ��T�i ������ɺ����C�i n�y �ӿ�(����to� � m�t ��ʼ,���ĳɹ�ִ��֮��).
--Tr� v�1: ����ɹ���Tr� v�0: ����th�t b�i.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x335908_OnActivateOnce( sceneId, selfId )
	if IsHaveMission(sceneId, selfId, x335908_g_MissionId) == 1 then
		local misIndex = GetMissionIndexByID(sceneId, selfId, x335908_g_MissionId);
		local ringNum = GetMissionParam(sceneId, selfId, misIndex, 1) + 1;	
		SetMissionByIndex(sceneId, selfId, misIndex, 1, ringNum);  							--��������1
		--ֻC�n ����ǰ2c�i��̽��to� � ������.�������λ��������;. x808010_g_StrForePart = 4
		if ringNum < 3 then
			SetMissionByIndex(sceneId, selfId, misIndex, ringNum+1, sceneId); 		--�ó����Ѵ�̽��	
		end		
		local msg = format("#{YHJZ_081007_35}Ti�n � nhi�m v�: %d/3", ringNum);
		x335908_MsgBox(sceneId, selfId, msg);	 --�ռ��ɹ�,Ng߽i ��t ���c m�t Щ��Linh֮��.
		if ringNum >= 3 then 																										-- �����������
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1);
			x335908_MsgBox(sceneId, selfId, "Ho�n t�t nhi�m v�!");
		end
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
function x335908_OnActivateEachTick( sceneId, selfId)
	return 1;
end

--**********************************
--��Ϣ��ʾ
--**********************************
function x335908_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
-- ������� 
-- �ɹ�: 1  th�t b�i: 0
--**********************************
function x335908_IsFitCondition(sceneId, selfId)
 	--���ռ�3������?
 	local misIndex = GetMissionIndexByID(sceneId, selfId, x335908_g_MissionId);
 	local ringNum = GetMissionParam(sceneId, selfId, misIndex, 1)
 	if ringNum >= 3 then
		return 0, "#{YHJZ_081007_31}" 		
 	end
 	--������ȷ?
 	local param = {}; 	
 	param[1] = GetMissionParam(sceneId, selfId, misIndex, 5);
 	param[2] = GetMissionParam(sceneId, selfId, misIndex, 6);
 	param[3] = GetMissionParam(sceneId, selfId, misIndex, 7);
 	local bFlag = 0;
 	local index = 0;
 	for i=1, 3 do
 		if x335908_g_select_sceneId[param[i]+1][1] == sceneId then
 			index = param[i]+1;
 			bFlag = 1;
 			break
 		end
 	end 
 	if bFlag == 0 then
 		return 0, "#{YHJZ_081007_32}";
 	end
 	--���ռ���?
 	for i=2, 3 do
 		if sceneId == GetMissionParam(sceneId, selfId, misIndex, i) then
 			return 0, "#{YHJZ_081007_33}";
 		end
 	end
 	--λ����ȷ?
 	local pos_x, pos_z = LuaFnGetWorldPos(sceneId, selfId);
 	local distance =
 	(x335908_g_select_sceneId[index][3]-pos_x) * (x335908_g_select_sceneId[index][3]-pos_x) + 
 	(x335908_g_select_sceneId[index][4]-pos_z) * (x335908_g_select_sceneId[index][4]-pos_z);	
 	if distance > 18 then
 		return 0, "Ng߽i c�ch �a �i�m thu th�p qu� xa!";
 	end
 	--�������?
 	--1.��ng�����
	local teamId = GetTeamId(sceneId,selfId)
	if teamId<0 then
		return 0, "#{YHJZ_081007_34}";
	end	
	--2.��ng������
	if GetTeamSize(sceneId,selfId)~=2 then
		return 0, "#{YHJZ_081007_34}";
	end	
	--3.��ng��T�i ����
	if GetNearTeamCount(sceneId,selfId) ~= 2 then
		return 0, "#{YHJZ_081007_34}";
	end	
	--4.��ng����ng����
	local tid1 = GetNearTeamMember(sceneId,selfId,0)
	local tid2 = GetNearTeamMember(sceneId,selfId,1)
	if LuaFnIsMarried(sceneId,tid1)<=0 or LuaFnIsMarried(sceneId,tid2)<=0 then
		return 0, "#{YHJZ_081007_34}";
	else
		if LuaFnGetSpouseGUID(sceneId,tid1) ~= LuaFnGetGUID(sceneId,tid2) or LuaFnGetSpouseGUID(sceneId,tid2) ~= LuaFnGetGUID(sceneId,tid1) then
			return 0, "#{YHJZ_081007_34}";
		end
	end	
	-- OK
	return 1, "ok";
end
