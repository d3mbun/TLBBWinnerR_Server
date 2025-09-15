--׽��������

--************************************************************************
--MisDescBegin

--�ű���
x210221_g_ScriptId = 210221

--��m�t c�i����to� � ID
x210221_g_MissionIdPre = 700

--�����
x210221_g_MissionId = 701

--M�c ti�u nhi�m v�npc
x210221_g_Name	="V�n Phi�u Phi�u"

--�������
x210221_g_MissionKind = 13

--��ng c�p nhi�m v� 
x210221_g_MissionLevel = 7

--��ng����ngTinhӢ����
x210221_g_IfMissionElite = 0

--********���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������******
--������ng���Ѿ����
x210221_g_IsMissionOkFail = 0		--����to� � ��0λ
--**********************************������ng��̬****************************

--�����ı�����
x210221_g_MissionName="B�t ���c tr�n th� r�i"
x210221_g_MissionInfo="#{event_dali_0029}"  --��������
x210221_g_MissionTarget="#{event_dali_0030}"		--M�c ti�u nhi�m v�
x210221_g_ContinueInfo="C�c h� �� b�t ���c v�t con r�i?"		--δHo�n t�t nhi�m v�to� � npc�Ի�
x210221_g_MissionComplete="#{event_dali_0031}"					--Ho�n t�t nhi�m v�npc˵��to� � ��
x210221_g_SignPost = {x = 275, z = 50, tip = "Ho�ng Mi T�ng"}

--������
x210221_g_MoneyBonus=20

--MisDescEnd
--************************************************************************

--��ɫMission����� �i�m�
x210221_g_Param_ok=0	--0��: ��ǰ������ng�����(0δ��ɣ�1���)
--1��: δ��
--2��: δ��
--3��: δ��
--4��: δ��
--5��: δ��
--6��: δ��
--7��: δ��
x210221_g_PetDataID=558	--��������to� � ���


--������ں���
--**********************************
function x210221_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	if IsHaveMission(sceneId,selfId,x210221_g_MissionId) > 0 then	--����ѽӴ�����
		--������������to� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x210221_g_MissionName)
			AddText(sceneId,x210221_g_ContinueInfo)
			AddMoneyBonus( sceneId, x210221_g_MoneyBonus )
		EndEvent( )
		bDone = x210221_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210221_g_ScriptId,x210221_g_MissionId,bDone)
	elseif x210221_CheckAccept(sceneId,selfId) > 0 then		--Th�a m�n�����������
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
			BeginEvent(sceneId)
				AddText(sceneId,x210221_g_MissionName)
				AddText(sceneId,x210221_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210221_g_MissionTarget)
				--for i, item in g_ItemBonus do
				--	AddItemBonus( sceneId, item.id, item.num )
				--end
				AddMoneyBonus( sceneId, x210221_g_MoneyBonus )
				EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210221_g_ScriptId,x210221_g_MissionId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x210221_OnEnumerate( sceneId, selfId, targetId )
    --�����m�t �δ�����m�t c�i����
    if 	IsMissionHaveDone(sceneId,selfId,x210221_g_MissionIdPre) <= 0 then
    	return
    end
    --��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x210221_g_MissionId) > 0 then
		return
	end
    if IsHaveMission(sceneId,selfId,x210221_g_MissionId) > 0 then
			AddNumText(sceneId,x210221_g_ScriptId,x210221_g_MissionName,2,-1);
		--Th�a m�n�����������
	elseif x210221_CheckAccept(sceneId,selfId) > 0 then
			AddNumText(sceneId,x210221_g_ScriptId,x210221_g_MissionName,1,-1);
	end
end

--**********************************
--���Ti�p th�����
--**********************************
function x210221_CheckAccept( sceneId, selfId )
	--��������
	if GetLevel( sceneId, selfId ) >= x210221_g_MissionLevel then
		return 1
	else
		return 0
	end
end

--**********************************
--Ti�p th�
--**********************************
function x210221_OnAccept( sceneId, selfId )
	--������������б�
	AddMissionEx( sceneId,selfId, x210221_g_MissionId, x210221_g_ScriptId )		--�������
	SetMissionEvent(sceneId,selfId, x210221_g_MissionId,3)	--���������¼�,3��ʾ���ޱ仯�¼�

	misIndex = GetMissionIndexByID(sceneId,selfId,x210221_g_MissionId)	-- �i�m������to� � ���к�
	SetMissionByIndex(sceneId,selfId,misIndex,x210221_g_Param_ok,0)	--�������кŰ��������to� � ��0λ��0
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: B�t tr�n th�",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210221_g_SignPost.x, x210221_g_SignPost.z, x210221_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x210221_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
    DelMission( sceneId, selfId, x210221_g_MissionId )
	petcount = LuaFnGetPetCount(sceneId, selfId) --ȡ �i�m��������
	for	i=0,petcount-1 do
		petdataid = LuaFnGetPet_DataID(sceneId, selfId, i) --ȡ �i�m���ޱ��
		if petdataid==x210221_g_PetDataID then
			LuaFnDeletePet(sceneId, selfId, i)
		end
	end
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210221_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x210221_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x210221_g_MissionName)
		AddText(sceneId,x210221_g_MissionComplete)
		AddMoneyBonus( sceneId, x210221_g_MoneyBonus )
		--for i, item in g_ItemBonus do
		--	AddItemBonus( sceneId, item.id, item.num )
		--end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210221_g_ScriptId,x210221_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x210221_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210221_g_MissionId )
	if bRet ~= 1 then
		return 0
	end
	
	-- ������������ng����ng������to� � ����
	local nPetCount = LuaFnGetPetCount(sceneId, selfId)
	
	for i=0, nPetCount-1  do
		local nPetId = LuaFnGetPet_DataID(sceneId, selfId, i)
		
		if nPetId==558   then
			return 1
		end
	end

	return 0
end

--**********************************
--�ύ
--**********************************
function x210221_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	--
	if x210221_CheckSubmit( sceneId, selfId ) < 1  then
		return
	end	
	
--	local ret1 = LuaFnDeletePet(sceneId, selfId, selectRadioId ) --ɾ������
--	if ret1 > 0 then
		local ret0 = DelMission( sceneId, selfId, x210221_g_MissionId ) --ɾ������
		if ret0>0  then
			AddMoney(sceneId,selfId,x210221_g_MoneyBonus );
			LuaFnAddExp( sceneId, selfId,700)
			MissionCom( sceneId,selfId, x210221_g_MissionId )
			Msg2Player(  sceneId, selfId,"#YHo�n t�t nhi�m v�#W: B�t tr�n th�",MSG2PLAYER_PARA )
			CallScriptFunction( 210223, "OnDefaultEvent",sceneId, selfId, targetId)
			BeginEvent(sceneId)
				strText = "Ho�n t�t nhi�m v�: B�t ���c tr�n th�"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
--	end
end

--**********************************
--ɱ����������
--**********************************
function x210221_OnKillObject( sceneId, selfId, objdataId, objId )
end

--**********************************
--���������¼�
--**********************************
function x210221_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x210221_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--���޸ı�
--**********************************
function x210221_OnPetChanged( sceneId, selfId, petdataId )
	if petdataId==x210221_g_PetDataID then --��ng��������
		misIndex = GetMissionIndexByID(sceneId,selfId,x210221_g_MissionId)	-- �i�m������to� � ���к�
		SetMissionByIndex(sceneId,selfId,misIndex,x210221_g_Param_ok,1)	--�������кŰ��������to� � ��0λ��1

		BeginEvent(sceneId)
			strText = "B�t ���c tr�n th� r�i, ho�n t�t nhi�m v�!"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end

--**********************************
--����ύto� � ��Ʒ������
--**********************************
function x210221_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
end

--**********************************
--����ύto� � ��Ʒ������
--**********************************
function x210221_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
	
end
