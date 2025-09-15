-- Ѱ·֮�� ItemID 40004435

-- �ű���
x300085_g_scriptId = 300085

x300085_g_event = 229024				-- ǧѰ����ű�
--�����
x300085_g_MissionId			= 421

--������
x300085_g_Mission_RoundNum	 = 5		--��5λ����

x300085_g_FuQiMission_IDX		 	= 131	--���޹�ϵ��������
x300085_g_JieBaiMission_IDX		= 132	--��ݹ�ϵ��������
x300085_g_ShiTuMission_IDX		= 133	--ʦͽ��ϵ��������

x300085_g_scenePosInfoList = { {sceneId=7,  scenename="Ki�m C�c", PosName="Ki�m m�n �i�p th�y", PosX=130, PosY=140,  PosR=10, Area=711 },
															 {sceneId=8,  scenename="��n Ho�ng", PosName="H�n h�i c�u ph�t", PosX=267, PosY=251,  PosR=10, Area=811 },
															 {sceneId=5,  scenename="K�nh K�", PosName="Ng�c ��i l�m phong", PosX=35 , PosY=265,  PosR=10, Area=511 },
															 {sceneId=4,  scenename="Th�i H�", PosName="V� t� ca ��i", PosX=155, PosY=255,  PosR=10, Area=411 },
															 {sceneId=3,  scenename="Tung S�n", PosName="Giang s�n �a ki�u", PosX=280, PosY=80,   PosR=10, Area=311 },
															 {sceneId=30, scenename="T�y H�", PosName="Nh�t v�ng h� b�o", PosX=170, PosY=230,  PosR=10, Area=3011},															 
															 {sceneId=31, scenename="Long Tuy�n", PosName="Phi l�u tr�c h�", PosX=270, PosY=280,  PosR=10, Area=3111},
															 {sceneId=25, scenename="Th߽ng S�n", PosName="T� th�y ni�n hoa", PosX=260, PosY=110,  PosR=10, Area=2512},															 
															 {sceneId=32, scenename="V� Di", PosName="Y�n t�a nh� ki�u", PosX=50 , PosY=180,  PosR=10, Area=3211},															 
															 {sceneId=0,  scenename="L�c D߽ng", PosName="Kim th�nh thang tr�", PosX=50,  PosY=220,  PosR=10, Area=11  } }

--**********************************
--�¼��������
--**********************************
function x300085_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end


--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x300085_IsSkillLikeScript( sceneId, selfId )
	return 1	 --C�i n�y �ű�C�n ����֧��
end


--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x300085_CancelImpacts( sceneId, selfId )
	return 0	 --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x300085_OnActivateEachTick( sceneId, selfId )
	return 1	 --����ng�����Խű�, ֻ�����պ���.
end


--**********************************
--��Ϣ��ʾ
--**********************************
function x300085_MsgBox( sceneId, selfId, msg )
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
function x300085_OnConditionCheck( sceneId, selfId )
	
	--������to� � λ��
	local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	if bagId < 0 then
		return 0
	end
	
	--У��ʹ��to� � ��Ʒ
	if( 1 ~= LuaFnVerifyUsedItem( sceneId, selfId ) ) then
		return 0
	end
	
	--�����Ʒ��ng�����
	if LuaFnLockCheck( sceneId, selfId, bagId, 0 ) < 0 then
		x300085_MsgBox( sceneId, selfId, "V�t ph�m n�y �� b� kh�a!" )
		return 0
	end

	if IsHaveMission( sceneId, selfId, x300085_g_MissionId ) <= 0 then
		return 0
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x300085_g_MissionId)
	local nRoundNum = GetMissionParam(sceneId, selfId, misIndex, x300085_g_Mission_RoundNum)
	local ScintInfo = x300085_g_scenePosInfoList[nRoundNum]
	
	--ȡ �i�m��ҵ�ǰ����
	local PlayerX = GetHumanWorldX(sceneId,selfId)
	local PlayerY = GetHumanWorldZ(sceneId,selfId)
	--���������Ŀ�� �i�mto� � ����
	local Distance = floor(sqrt((ScintInfo.PosX-PlayerX)*(ScintInfo.PosX-PlayerX)+(ScintInfo.PosY-PlayerY)*(ScintInfo.PosY-PlayerY)))
	local str = format("Ng߽i t�m nhi�m v� � %d: �i #G%s#W th�m d� #G%s#{_INFOAIM%d,%d,%d,%s}#W, v�a xem c�nh �p giang h� �i. Th�nh s� d�ng #YTi�n nh�n ch� l�#W.", nRoundNum, ScintInfo.scenename, ScintInfo.PosName, ScintInfo.PosX, ScintInfo.PosY, ScintInfo.sceneId, ScintInfo.scenename)		
	if sceneId ~= ScintInfo.sceneId then
		BeginEvent(sceneId)
			AddText(sceneId, str)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
		return 0
	end
	
	--PrintStr("Distance=" .. Distance)

	if Distance > ScintInfo.PosR then
		BeginEvent(sceneId)
			AddText(sceneId,str)
			AddText(sceneId,"Kho�ng c�ch c�n "..Distance.." G�o")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
	
	elseif Distance <= ScintInfo.PosR then  		
 		local	nMisType = GetMissionData( sceneId, selfId, MD_QIANXUN_SELECT_MISSIONTYPE )	--еi vi�n ��ѡto� � ��������
		-- ��֤�����ϵ��ҲҪT�i ����
		if nMisType == x300085_g_FuQiMission_IDX then
			if CallScriptFunction(x300085_g_event,"CheckMission_FuQi",sceneId, selfId) == 0 then
				return 0
			end
		elseif nMisType == x300085_g_JieBaiMission_IDX then
			if CallScriptFunction(x300085_g_event,"CheckMission_JieBai",sceneId, selfId) == 0 then			
				return 0
			end
		elseif nMisType == x300085_g_ShiTuMission_IDX then
			if CallScriptFunction(x300085_g_event,"CheckMission_ShiTu",sceneId, selfId) == 0 then			
				return 0
			end
		else		
			x300085_NotifyTip( sceneId, selfId, "S� d�ng v�t ph�m th�t b�i" )		
			return 0
		end  		
 		 		
 		return 1		
	end
	
	return 0
end

--**********************************
--���ļ�⼰�������: 
--H� th�ng��T�i ��������to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--ע��: �ⲻ�⸺������to� � ���Ҳ��������to� � ִ��.
--**********************************
function x300085_OnDeplete( sceneId, selfId )	
	--
	--T�i �˻�Ҫ�ٴμ��m�t ��....
	--
	local ret
	ret = x300085_OnConditionCheck( sceneId, selfId )
	if 0 == ret then
		return 0
	end

	return 1

end

--**********************************
--ֻ��ִ��m�t �����: 
--������˲�����ܻ�T�i ������ɺ����C�i n�y �ӿ�(�����������Ҹ���������Th�a m�nto� � ʱ��),������
--����Ҳ��T�i ������ɺ����C�i n�y �ӿ�(����to� � m�t ��ʼ,���ĳɹ�ִ��֮��).
--Tr� v�1: ����ɹ���Tr� v�0: ����th�t b�i.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x300085_OnActivateOnce( sceneId, selfId )
	
	--������to� � λ��
	local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	if bagId < 0 then
		return 0
	end
	
	CallScriptFunction(x300085_g_event,"OnUseItem",sceneId, selfId, bagId)
	return 1

end
