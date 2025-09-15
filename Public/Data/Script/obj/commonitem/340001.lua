--�����ټ���ű�.ע��: 

--��Ʒ����to� � �߼�ֻ��ʹ�û������ܺͽű���ʵ��

--�ű�:

--������ng�ű�����:


--340001.lua
------------------------------------------------------------------------------------------
--m�t ����Ʒto� � Ĭ�Ͻű�

--�ű���
x340001_g_scriptId = 340001 --��ʱдC�i n�y ,������to� � ʱ��m�t ��Ҫ��.

--C�n to� � ��c�p

--Ч��to� � ID
x340001_g_Impact1 = 340001 --��ʱдC�i n�y 
x340001_g_Impact2 = -1 --����

x340001_g_Impact_NotTransportList = { 5929 } -- ��ֹ����to� � Impact
x340001_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}" } -- ��ֹ����to� � Impact��ʾ��Ϣ

--**********************************
--�¼��������
--**********************************
function x340001_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x340001_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x340001_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x340001_OnConditionCheck( sceneId, selfId )

	if IsHaveMission(sceneId,selfId,4021) > 0 then
		BeginEvent(sceneId)
			strText = "Anh �ang trong tr�ng th�i T�o v�n, kh�ng th� s� d�ng ch�c n�ng truy�n tin."
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end
	
	-- ������������ng����ng�С���Ʊ��C�i n�y ����,�оͲ���ʹ������to� � ����
	if GetItemCount(sceneId, selfId, 40002000)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "Tr�n ng߶i ng߽i c� ng�n phi�u, �ang ch�y h�ng! kh�ng th� s� d�ng ch�c n�ng truy�n tin." )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
		return 0
	end
	
	--���Impact״̬פ��Ч��
	for i, ImpactId in x340001_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			BeginEvent(sceneId)			
				AddText(sceneId, x340001_g_TalkInfo_NotTransportList[i]);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
		end
	end
	
	--У��ʹ��to� � ��Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	return 1; --��C�n �κ�����,����ʼ��Tr� v�1.
end

--**********************************
--���ļ�⼰�������: 
--H� th�ng��T�i ��������to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--ע��: �ⲻ�⸺������to� � ���Ҳ��������to� � ִ��.
--**********************************
function x340001_OnDeplete( sceneId, selfId )

  local Level = GetLevel( sceneId, selfId )
  local MenPai = LuaFnGetMenPai( sceneId, selfId )
  
  if Level < 10 then
      return 0
  end
  
  if MenPai < 0 or MenPai >8 then           
 		  BeginEvent(sceneId)
			  strText = format("Kh�ng gia nh�p m�n ph�i, kh�ng ���c s� d�ng v�t ph�m n�y")
			  AddText(sceneId,strText)
 		  EndEvent(sceneId)

 		  DispatchMissionTips(sceneId,selfId)
 		  
      return 0
  end
  
  if IsHaveMission(sceneId,selfId,4021) > 0 then
		BeginEvent(sceneId)
			strText = "Anh �ang trong tr�ng th�i T�o v�n, kh�ng th� s� d�ng ch�c n�ng truy�n tin."
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end
  
  	-- ������������ng����ng�С���Ʊ��C�i n�y ����,�оͲ���ʹ������to� � ����
	if GetItemCount(sceneId, selfId, 40002000)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "Tr�n ng߶i ng߽i c� ng�n phi�u, �ang ch�y h�ng! kh�ng th� s� d�ng ch�c n�ng truy�n tin." )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
		return 0
	end
  
  --���Impact״̬פ��Ч��
	for i, ImpactId in x340001_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			BeginEvent(sceneId)			
				AddText(sceneId, x340001_g_TalkInfo_NotTransportList[i]);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
		end
	end
  
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end
	return 0;
end



function x340001_MenpaiTransfer( sceneId, selfId )
            
    local MenPai = LuaFnGetMenPai( sceneId, selfId )
    
    local TargetScene
    local x
    local z
    
    if( MenPai >= 0 and MenPai <=8 ) then
        if 0 == MenPai then      --Thi�u L�m
            TargetScene = 9
            x = 93
            z = 72  
        end
        
        if 1 == MenPai then      --Minh Gi�o
            TargetScene = 11
            x = 106
            z = 59          
        end

        if 2 == MenPai then      --C�i Bang
            TargetScene = 10
            x = 91
            z = 100          
        end

        if 3 == MenPai then      --V� �ang
            TargetScene = 12
            x = 80
            z = 87                  
        end

        if 4 == MenPai then      --Nga My
            TargetScene = 15
            x = 96
            z = 48                  
        end

        if 5 == MenPai then      --Tinh T�c
            TargetScene = 16
            x = 86
            z = 73                  
        end

        if 6 == MenPai then      --��i L�
            TargetScene = 13
            x = 96
            z = 88                  
        end

        if 7 == MenPai then      --Thi�n S�n
            TargetScene = 17
            x = 89
            z = 47                  
        end

        if 8 == MenPai then      --��ң
            TargetScene = 14
            x = 122
            z = 141                  
        end        
        
       
       if sceneId == TargetScene then
           
           SetPos( sceneId, selfId, x, z )
           return
       end
       
        CallScriptFunction((400900), "TransferFunc",sceneId, selfId, TargetScene, x, z) 
		--����ͳ��
		LuaFnAuditItemUseMenPaiZhaoJiLing(sceneId, selfId, MenPai)
        
    
    end        
    
    
end

--**********************************
--ֻ��ִ��m�t �����: 
--������˲�����ܻ�T�i ������ɺ����C�i n�y �ӿ�(�����������Ҹ���������Th�a m�nto� � ʱ��),������
--����Ҳ��T�i ������ɺ����C�i n�y �ӿ�(����to� � m�t ��ʼ,���ĳɹ�ִ��֮��).
--Tr� v�1: ����ɹ���Tr� v�0: ����th�t b�i.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x340001_OnActivateOnce( sceneId, selfId )

	if(-1~=x340001_g_Impact1) then
		--LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x340001_g_Impact1, 0);
		x340001_MenpaiTransfer( sceneId, selfId )
	end
	return 1;
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x340001_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end
