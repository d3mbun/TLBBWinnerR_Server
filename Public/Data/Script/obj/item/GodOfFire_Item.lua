-- ������:[ QUFEI 2008-03-10 10:41 UPDATE BugID 32708 ]
-- ���ʹ�� ItemID 40004444

-- �ű���
x808084_g_scriptId = 808084

x808084_g_event = 808080				-- Nhi�m v� R�a-Th� thi ch�y�ű�
--�����
x808084_g_MissionId			= 1000

--����ÿ�컷�����
x808084_g_Mission_RoundNum	 = 7		--�������to� � ��7λ

-- ������Ʒ�������
x808084_g_LuoYangLighten_Cnt 	= 5	--������L�c D߽ngM� ra ��������
x808084_g_SuZhouLighten_Cnt		= 7	--������T� Ch�uM� ra ��������
x808084_g_DaLiLighten_Cnt		= 9		--��������i L�M� ra ��������

--����������������
x808084_g_KongMing_Lighten				= 4		--�������to� � ��4λ

x808084_g_KongMingLighten_Count		=	8		-- ÿ��·��C�n  �i�mȼto� � ����������
x808084_g_KongMingLighten_MaxCnt	=	24	-- R�a-Th� thi ch�y�C�n  �i�mȼto� � ����������

-- ÿ��R�a-Th� thi ch�y�M� ra ʱ��
x808084_g_ActivityTime						= { {tstart=1230, tend=1330},
																		  {tstart=1930, tend=2030},
																		  {tstart=2130, tend=2230} }

--**********************************
--�¼��������
--**********************************
function x808084_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end


--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x808084_IsSkillLikeScript( sceneId, selfId )
	return 1	 --C�i n�y �ű�C�n ����֧��
end


--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x808084_CancelImpacts( sceneId, selfId )
	return 0	 --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x808084_OnActivateEachTick( sceneId, selfId )
	return 1	 --����ng�����Խű�, ֻ�����պ���.
end


--**********************************
--��Ϣ��ʾ
--**********************************
function x808084_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x808084_OnConditionCheck( sceneId, selfId )
	
	--������to� � λ��
	local	BagPos	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )

	if BagPos < 0 then
		return 0
	end
	
	--У��ʹ��to� � ��Ʒ��ng���T�i 
	if( 1 ~= LuaFnVerifyUsedItem( sceneId, selfId ) ) then
		return 0
	end
	
	--�����û��Nhi�m v� R�a-Th� thi ch�y
	if IsHaveMission( sceneId, selfId, x808084_g_MissionId ) <= 0 then
		x808084_MsgBox( sceneId, selfId, "#{GodFire_Info_011}" )
		return 0
	end

	--�����ng���ڻʱ����
	if x808084_CheckHuoDongTime() == 0 then
		x808084_MsgBox( sceneId, selfId, "#{GodFire_Info_036}" )
		return 0
	end
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x808084_g_MissionId)
	
	-- ��t ���c�����������Ϣ
	local LuoYangCnt = GetBagItemParam(sceneId, selfId, BagPos, x808084_g_LuoYangLighten_Cnt, 1)
	local SuZhouCnt = GetBagItemParam(sceneId, selfId, BagPos, x808084_g_SuZhouLighten_Cnt, 1)
	local DaLiCnt = GetBagItemParam(sceneId, selfId, BagPos, x808084_g_DaLiLighten_Cnt, 1)
	local	nAllCount = GetMissionParam(sceneId, selfId, misIndex, x808084_g_KongMing_Lighten)
		
	BeginEvent(sceneId)
		AddText(sceneId, "#{GodFire_Info_001}")
		local str01 = format("#{GodFire_Info_021} %d/%d", LuoYangCnt, x808084_g_KongMingLighten_Count)
		local str02 = format("#{GodFire_Info_022} %d/%d", SuZhouCnt, x808084_g_KongMingLighten_Count)
		local str03 = format("#{GodFire_Info_023} %d/%d", DaLiCnt, x808084_g_KongMingLighten_Count)
		local str04 = format("#{GodFire_Info_035} %d/%d", nAllCount, x808084_g_KongMingLighten_MaxCnt)
		AddText(sceneId, str01)
		AddText(sceneId, str02)
		AddText(sceneId, str03)
		AddText(sceneId, str04)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
	return 1
	
end

--**********************************
--���ļ�⼰�������: 
--H� th�ng��T�i ��������to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--ע��: �ⲻ�⸺������to� � ���Ҳ��������to� � ִ��.
--**********************************
function x808084_OnDeplete( sceneId, selfId )	
	--
	--T�i �˻�Ҫ�ٴμ��m�t ��....
	--
	return 0
end

--**********************************
--ֻ��ִ��m�t �����: 
--������˲�����ܻ�T�i ������ɺ����C�i n�y �ӿ�(�����������Ҹ���������Th�a m�nto� � ʱ��),������
--����Ҳ��T�i ������ɺ����C�i n�y �ӿ�(����to� � m�t ��ʼ,���ĳɹ�ִ��֮��).
--Tr� v�1: ����ɹ���Tr� v�0: ����th�t b�i.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x808084_OnActivateOnce( sceneId, selfId )
	return 0
end

--**********************************
--���ʱ��
--**********************************
function x808084_CheckHuoDongTime()

	local nHour	 = GetHour()
	local nMinute = GetMinute()  
  local curHourTime = nHour*100+nMinute

	for i=1, getn(x808084_g_ActivityTime) do
	  if curHourTime >= x808084_g_ActivityTime[i].tstart and curHourTime <= x808084_g_ActivityTime[i].tend then
	  	return i		
	  end
	end

	return 0

end
