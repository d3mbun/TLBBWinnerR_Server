--ѭ������
--Ѱ�ұ���
--����ǿto� � ����:	Ѱ����ʽto� � ��ǿ,1����to� � ֱ�Ӹ�����Ҿ���2����̽����ʹ��
--				����3ʹ��̽����������������ʾ����4ʹ��̽�������÷�����
--				��ʾ5ʹ��̽�����������to� � ǰ����������ʾ6�ҵ���m�t c�iλ��
--				��ngָʾ����λ��to� � ֽ��7�ҵ���m�t c�iλ�û�Ҫ���������֪��
--				����λ��

--************************************************************************
--MisDescBegin
--�ű���
x500500_g_ScriptId = 500500

--��m�t c�i����to� � ID
--g_MissionIdPre =

--�����
x500500_g_MissionId = 700

--M�c ti�u nhi�m v�npc
x500500_g_Name	="Trong h� ch�p" 

--������߱��
x500500_g_ItemId = 40002106

--���������������
x500500_g_ItemNeedNum = 1

--�������
x500500_g_MissionKind = 1

--��ng c�p nhi�m v� 
x500500_g_MissionLevel = 20

--��ng����ngTinhӢ����
x500500_g_IfMissionElite = 0

--********���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������******
x500500_g_IsMissionOkFail = 0					--����to� � ��0λ
x500500_g_DemandItem={{id=40002106,num=1}}		--������1λ,����C�n  �i�m��to� � ��Ʒ
x500500_g_MissionRound = 3						--ѭ������to� � ��������,�����������to� � ���� MD_WABAO_HUAN
--**********************************������ng��̬****************************


--�����ı�����
x500500_g_MissionName="T�m b�o"
x500500_g_MissionInfo="#{M_700_TEXT1}"  --��������
x500500_g_MissionTarget="T�m ���c b�o t�ng giao cho H� Ch�p Trung"		--M�c ti�u nhi�m v�
x500500_g_ContinueInfo="C�c h� �� t�m ���c b�o t�ng ch�a? H�y d�ng Tham Tr�c Kh� trong ph�n � nhi�m v� th� c� th� t�m ���c v� tr� c�a b�o t�ng r�i"		--δHo�n t�t nhi�m v�to� � npc�Ի�
x500500_g_MissionComplete="L�m t�t l�m"					--Ho�n t�t nhi�m v�npc˵��to� � ��

x500500_g_MoneyBonus=100
x500500_g_ItemBonus={{id=30002001,num=1}}

--MisDescEnd
--************************************************************************

--��ɫMission����� �i�m�
--0��: ����״̬
--1��: ����C�n to� � ��Ʒ(C�i n�y ����ֻ��m�t c�i)
--2��: ������T�i �������
--3��: ����x����
--4��: ����z����
--5��: δ��
--6��: δ��
--7��: δ��

--����λ��
x500500_g_TreasureAddress = {	{scene=0,x=105,z=88},
						{scene=0,x=146,z=60},
						{scene=0,x=99,z=114},
						{scene=0,x=80,z=85},
						{scene=0,x=55,z=134},
						{scene=0,x=203,z=45},
						{scene=0,x=24,z=67},
						{scene=0,x=219,z=109},
						{scene=0,x=222,z=62},
						{scene=0,x=227,z=196},
						{scene=0,x=168,z=224},
						{scene=0,x=88,z=226},
						{scene=0,x=34,z=111}}


--**********************************
--������ں���
--**********************************
function x500500_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	if IsHaveMission(sceneId,selfId,x500500_g_MissionId) > 0 then
		--������������to� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x500500_g_MissionName)
			AddText(sceneId,x500500_g_ContinueInfo)
			AddText(sceneId," ")
			AddText(sceneId,"V�t ph�m c�n: ")
			for i, item in x500500_g_DemandItem do
				AddItemDemand( sceneId, item.id, item.num )
			end
		EndEvent( )
		bDone = x500500_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x500500_g_ScriptId,x500500_g_MissionId,bDone)
	--Th�a m�n�����������
	elseif x500500_CheckAccept(sceneId,selfId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x500500_g_MissionName)
			AddText(sceneId,x500500_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x500500_g_MissionTarget)
			AddMoneyBonus( sceneId, x500500_g_MoneyBonus )
			AddText(sceneId,"#{M700_6}")
			for i, item in x500500_g_ItemBonus do
				AddItemBonus( sceneId, item.id, item.num )
			end
			--for i, item in g_RadioItemBonus do
			--	AddRadioItemBonus( sceneId, item.id, item.num )
			--end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x500500_g_ScriptId,x500500_g_MissionId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x500500_OnEnumerate( sceneId, selfId, targetId )
    --����ѽӴ�����
    --else

    if IsHaveMission(sceneId,selfId,x500500_g_MissionId) > 0 then
		AddNumText(sceneId,x500500_g_ScriptId,x500500_g_MissionName,3,-1);
    --Th�a m�n�����������
    elseif x500500_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x500500_g_ScriptId,x500500_g_MissionName,4,-1);
    end
end

--**********************************
--���Ti�p th�����
--**********************************
function x500500_CheckAccept( sceneId, selfId )
	--C�n 10c�p���ܽ�
	if GetLevel( sceneId, selfId ) >= 10 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ti�p th�
--**********************************
function x500500_OnAccept( sceneId, selfId )

	if x500500_CheckAccept(sceneId, selfId )<=0 then
		return
	end
	
	x500500_g_sequence = random(13)					--���ݱ���� �i�m���� ��t ���cm�t c�i�����
	SceneNum = x500500_g_TreasureAddress[x500500_g_sequence].scene
	X		 = x500500_g_TreasureAddress[x500500_g_sequence].x
	Z		 = x500500_g_TreasureAddress[x500500_g_sequence].z
	--��ӱ���̽����
	BeginAddItem(sceneId)
		ret = AddItem( sceneId,40002104, 1 )
	EndAddItem(sceneId,selfId)
	--������������б�
	ret = AddMission( sceneId,selfId, x500500_g_MissionId, x500500_g_ScriptId, 0, 0, 1 )

	--���������������to� � ������ź�����λ��
	misIndex = GetMissionIndexByID(sceneId,selfId,x500500_g_MissionId)		-- �i�m������T�i 20c�i������to� � ���к�
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)					--�������кŰ��������to� � ��m�t λ��0	��m�t λ��ng���/th�t b�i���
	SetMissionByIndex(sceneId,selfId,misIndex,1,x500500_g_DemandItem[1].id)						--�������кŰ��������to� � ��2λ��ΪV�t ph�m c�n thi�t to� � ���
	SetMissionByIndex(sceneId,selfId,misIndex,2,SceneNum)			--�ѵ���λ��Ϊ����to� � �������
	SetMissionByIndex(sceneId,selfId,misIndex,3,X)					--�ѵ���λ��Ϊ����to� � X����
	SetMissionByIndex(sceneId,selfId,misIndex,4,Z)					--�ѵ���λ��Ϊ����to� � Z����
	
	AddItemListToHuman(sceneId,selfId)

	-- �i�m������
	local huan = GetMissionData(sceneId,selfId,x500500_g_MissionRound)
	--��������1
	huan = huan + 1
	SetMissionData(sceneId,selfId,x500500_g_MissionRound,huan)
	Msg2Player( sceneId,selfId,"Nh�n nhi�m v�: t�m b�o",MSG2PLAYER_PARA)
	Msg2Player( sceneId,selfId,"Tr߾c m�t th�"..huan.."Th�",MSG2PLAYER_PARA)	

end

--**********************************
--����
--**********************************
function x500500_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
    DelMission( sceneId, selfId, x500500_g_MissionId )
	DelItem (sceneId,selfId,40002104,1)
	SetMissionData(sceneId,selfId,12,0)	--������0
end

--**********************************
--����
--**********************************
function x500500_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x500500_g_MissionName)
		AddText(sceneId,x500500_g_MissionComplete)
		AddMoneyBonus( sceneId, x500500_g_MoneyBonus )
		for i, item in x500500_g_ItemBonus do
			AddItemBonus( sceneId, item.id, item.num )
		end
		--for i, item in g_RadioItemBonus do
		--	AddRadioItemBonus( sceneId, item.id, item.num )
		--end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x500500_g_ScriptId,x500500_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x500500_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x500500_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	for i, item in x500500_g_DemandItem do
		itemCount = GetItemCount( sceneId, selfId, item.id )
		if itemCount < item.num then
			return 0
		end
	end
	return 1
end

--**********************************
--�ύ
--**********************************
function x500500_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	local huan = GetMissionData(sceneId,selfId,x500500_g_MissionRound)

	--���㽱����Ǯto� � ����
	if mod(huan,10) == 0 then
		x500500_g_Money = 1000 * 15
	else
		x500500_g_Money = 1000 * mod(huan,10)
	end
	
	if x500500_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
    	BeginAddItem(sceneId)
			for i, item in x500500_g_ItemBonus do
				AddItem( sceneId,item.id, item.num )
			end
			--for i, item in g_RadioItemBonus do
			--	if item.id == selectRadioId then
			--		AddItem( sceneId,item.id, item.num )
			--	end
			--end
		ret = EndAddItem(sceneId,selfId)
		--���������
		if ret > 0 then
			
			ret = DelMission( sceneId, selfId, x500500_g_MissionId )
			if ret > 0 then
				MissionCom( sceneId,selfId, x500500_g_MissionId )
				local bDelItem = true
				--�۳�������Ʒ
				for i, item in x500500_g_DemandItem do
					if 0== DelItem( sceneId, selfId, item.id, item.num ) then
						bDelItem = bDelItem and false
					end
				end
				--ɾ��̽����
				if 0==DelItem( sceneId, selfId, 40002104, 1 ) then
					bDelItem = bDelItem and false
				end
				if(true==bDelItem) then
					AddItemListToHuman(sceneId,selfId)
					--��Ǯ����
					AddMoney(sceneId,selfId,x500500_g_Money )
					--��Kinh nghi�mֵ����
					AddExp( sceneId,selfId,x500500_g_Money)	
	
					Msg2Player( sceneId,selfId,"C�c h� �� ��t ���c "..x500500_g_Money.." аng v�ng",MSG2PLAYER_PARA)
				end
			end
		else
			--������û�мӳɹ�
			BeginEvent(sceneId)
				strText = "Kh�ng th� Ho�n t�t nhi�m v�"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end      
	end
end

--**********************************
--ɱ����������
--**********************************
function x500500_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x500500_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x500500_OnItemChanged( sceneId, selfId, itemdataId )
	if itemdataId == x500500_g_ItemId then
		x500500_g_ItemNum = GetItemCount(sceneId,selfId,x500500_g_ItemId)
		if x500500_g_ItemNum < x500500_g_ItemNeedNum then
			BeginEvent(sceneId)
				strText = format("�� ���c %d/1 b�o v�t", x500500_g_ItemNum )
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		else
			BeginEvent(sceneId)
				strText = format("�� ���c %d/1 b�o v�t", x500500_g_ItemNeedNum )
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	end
end

--**********************************
--����ʹ��
--**********************************
function x500500_OnUseItem( sceneId, selfId, BagIndex )
	misIndex = GetMissionIndexByID(sceneId,selfId,x500500_g_MissionId)
	x500500_g_MissionCondition = GetMissionParam(sceneId,selfId,misIndex,0)		-- ��t ���c����״̬
	scene = GetMissionParam(sceneId,selfId,misIndex,2)					-- ��t ���c���ﳡ����
	treasureX = GetMissionParam(sceneId,selfId,misIndex,3)				-- ��t ���c����X����
	treasureZ = GetMissionParam(sceneId,selfId,misIndex,4)				-- ��t ���c����Z����	
	--��������Ѿ����
	if x500500_g_MissionCondition == 1 then
		BeginEvent(sceneId)
			AddText(sceneId,"�� t�m ���c r�i, quay v� giao tr� nhi�m v� �i")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--ȡ �i�m��ҵ�ǰ����
	PlayerX = GetHumanWorldX(sceneId,selfId)
	PlayerZ = GetHumanWorldZ(sceneId,selfId)
	--��������뱦��to� � ����
	Distance = floor(sqrt((treasureX-PlayerX)*(treasureX-PlayerX)+(treasureZ-PlayerZ)*(treasureZ-PlayerZ)))
	if sceneId ~= scene then
		BeginEvent(sceneId)
			AddText(sceneId,"H�nh nh� b�o t�ng kh�ng n�m trong c�nh n�y")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	if Distance >1 then
		BeginEvent(sceneId)
			AddText(sceneId,"C� ly c�ch b�o t�ng c�n "..Distance.." G�o")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	elseif Distance <= 1 then
		BeginAddItem(sceneId)
			AddItem( sceneId,x500500_g_DemandItem[1].id, 1 )
		ret = EndAddItem(sceneId,selfId)
		if ret > 0 then
			AddItemListToHuman(sceneId,selfId)
			SetMissionByIndex(sceneId,selfId,misIndex,0,1)		--������״̬��������Ϊ1,��ʾ�Ѿ����
		else
			BeginEvent(sceneId)
				AddText(sceneId,"� nhi�m v� tay n�i �� �y")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	end
end
