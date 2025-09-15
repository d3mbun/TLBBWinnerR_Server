--��֮��--��m�t ���·� ��a cho С��ؤ
--������
--MisDescBegin
--�ű���
x210227_g_ScriptId = 210227

--�����
x210227_g_MissionId = 707

--��m�t c�i����to� � ID
x210227_g_MissionIdPre = 706

--Ŀ��NPC
x210227_g_Name	="�o�n Di�n Kh�nh"

--�������
x210227_g_MissionKind = 13

--��ng c�p nhi�m v� 
x210227_g_MissionLevel = 8

--��ng����ngTinhӢ����
x210227_g_IfMissionElite = 0

--���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������**********************
--������ng���Ѿ����
x210227_g_IsMissionOkFail = 0		--����to� � ��0λ

--������ng��̬**************************************************************

--�����ı�����
x210227_g_MissionName="T�ng b� y"
x210227_g_MissionInfo="#{event_dali_0038}"
x210227_g_MissionTarget="#{event_dali_0039}"
x210227_g_ContinueInfo="   [C�c h� �� �em #Yb� y#W cho #Rti�u kh�t c�i#W ch�a?]"
x210227_g_MissionComplete="   [Ch�, xem ra con ng߶i tr� tu�i c�c h� th�t kh�ng �n gi�n. ]"
x210227_g_SignPost = {x = 199, z = 256, tip = "Ti�u Kh�t C�i"}
x210227_g_Custom	= { {id="��a b� y cho ti�u kh�t c�i",num=1} }
--������
x210227_g_MoneyBonus=100
--g_ItemBonus={{id=40002108,num=1}}

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x210227_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	--��������ɹ�C�i n�y ����(ʵ��������������������Ͳ�����ʾ,����ng�ټ��m�t �αȽϰ�ȫ)
    --if IsMissionHaveDone(sceneId,selfId,x210227_g_MissionId) > 0 then
	--	return
	--end
	--����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x210227_g_MissionId) > 0 then
		--������������to� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x210227_g_MissionName)
			AddText(sceneId,x210227_g_ContinueInfo)
			--for i, item in g_DemandItem do
			--	AddItemDemand( sceneId, item.id, item.num )
			--end
			AddMoneyBonus( sceneId, x210227_g_MoneyBonus )
		EndEvent()
		bDone = x210227_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210227_g_ScriptId,x210227_g_MissionId,bDone)		
    --Th�a m�n�����������
    elseif x210227_CheckAccept(sceneId,selfId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x210227_g_MissionName)
			AddText(sceneId,x210227_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}")
			AddText(sceneId,x210227_g_MissionTarget)
			--for i, item in g_ItemBonus do
			--	AddItemBonus( sceneId, item.id, item.num )
			--end
			--for i, item in g_RadioItemBonus do
			--	AddRadioItemBonus( sceneId, item.id, item.num )
			--end
			AddMoneyBonus( sceneId, x210227_g_MoneyBonus )
			EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x210227_g_ScriptId,x210227_g_MissionId)
    end
end

--**********************************
--�о��¼�
--**********************************
function x210227_OnEnumerate( sceneId, selfId, targetId )
    --�����m�t �δ�����m�t c�i����
    if 	IsMissionHaveDone(sceneId,selfId,x210227_g_MissionIdPre) <= 0 then
    	return
    end
    --��������ɹ�C�i n�y ����
    if IsMissionHaveDone(sceneId,selfId,x210227_g_MissionId) > 0 then
    	return 
	end
    --����ѽӴ�����
    if IsHaveMission(sceneId,selfId,x210227_g_MissionId) > 0 then
		AddNumText(sceneId,x210227_g_ScriptId,x210227_g_MissionName,2,-1);
		--Th�a m�n�����������
	elseif x210227_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210227_g_ScriptId,x210227_g_MissionName,1,-1);
	end
end

--**********************************
--���Ti�p th�����
--**********************************
function x210227_CheckAccept( sceneId, selfId )
	--C�n 8c�p���ܽ�
	if GetLevel( sceneId, selfId ) >= 8 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ti�p th�
--**********************************
function x210227_OnAccept( sceneId, selfId )
	--������������б�
	AddMission( sceneId,selfId, x210227_g_MissionId, x210227_g_ScriptId, 1, 0, 0 )		--�������
	misIndex = GetMissionIndexByID(sceneId,selfId,x210227_g_MissionId)			-- �i�m������to� � ���к�
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--�������кŰ��������to� � ��0λ��0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--�������кŰ��������to� � ��1λ��0
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: T�ng b� y",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210227_g_SignPost.x, x210227_g_SignPost.z, x210227_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x210227_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
    DelMission( sceneId, selfId, x210227_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210227_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x210227_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x210227_g_MissionName)
		AddText(sceneId,x210227_g_MissionComplete)
		AddMoneyBonus( sceneId, x210227_g_MoneyBonus )
		--for i, item in g_ItemBonus do
		--	AddItemBonus( sceneId, item.id, item.num )
		--end
		--for i, item in g_RadioItemBonus do
		--	AddRadioItemBonus( sceneId, item.id, item.num )
		--end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210227_g_ScriptId,x210227_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x210227_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210227_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	misIndex = GetMissionIndexByID(sceneId,selfId,x210227_g_MissionId)
    num = GetMissionParam(sceneId,selfId,misIndex,0)
    if num == 1 then
		return 1
	end
	return 0
end

--**********************************
--�ύ
--**********************************
function x210227_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x210227_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
    	--BeginAddItem(sceneId)
		--	for i, item in g_ItemBonus do
		--		AddItem( sceneId,item.id, item.num )
		--	end
		--ret = EndAddItem(sceneId,selfId)
		--���������
		--if ret > 0 then
		--else
		--������û�мӳɹ�
		--	BeginEvent(sceneId)
		--		strText = "��������,�޷�Ho�n t�t nhi�m v�"
		--		AddText(sceneId,strText);
		--	EndEvent(sceneId)
		--	DispatchMissionTips(sceneId,selfId)
		--end
		AddMoney(sceneId,selfId,x210227_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, 500)
		--�۳�������Ʒ
		--for i, item in g_DemandItem do
		--	DelItem( sceneId, selfId, item.id, item.num )
		--end
		ret = DelMission( sceneId, selfId, x210227_g_MissionId )
		if ret > 0 then
			MissionCom( sceneId, selfId, x210227_g_MissionId )
			--AddItemListToHuman(sceneId,selfId)
			Msg2Player(  sceneId, selfId,"#YHo�n t�t nhi�m v�#W: T�ng b� y",MSG2PLAYER_PARA )
			CallScriptFunction( 210228, "OnDefaultEvent",sceneId, selfId, targetId)
		end
	end
end

--**********************************
--ɱ����������
--**********************************
function x210227_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x210227_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x210227_OnItemChanged( sceneId, selfId, itemdataId )
end
