--����������

--************************************************************************
--MisDescBegin

--�ű���
x210215_g_ScriptId = 210215

--��m�t c�i����to� � ID
x210215_g_MissionIdPre = 454

--�����
x210215_g_MissionId = 455

--M�c ti�u nhi�m v�npc
x210215_g_Name	="V�n Phi�u Phi�u"

--�������
x210215_g_MissionKind = 13

--��ng c�p nhi�m v� 
x210215_g_MissionLevel = 5

--��ng����ngTinhӢ����
x210215_g_IfMissionElite = 0

--********���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������******

--**********************************������ng��̬****************************

--�����ı�����
x210215_g_MissionName="Th� qu� l�n c�p r�i"
x210215_g_MissionInfo="#{event_dali_0021}"  --��������
x210215_g_MissionTarget="#{event_dali_0022}"		--M�c ti�u nhi�m v�
x210215_g_ContinueInfo="  Ti�u th� �� l�n �n c�p 2 ch�a? "		--δHo�n t�t nhi�m v�to� � npc�Ի�
x210215_g_MissionComplete="#{event_dali_0023}"					--Ho�n t�t nhi�m v�npc˵��to� � ��
x210215_g_SignPost = {x = 263, z = 129, tip = "V�n Phi�u Phi�u"}

--������
x210215_g_MoneyBonus=20

--MisDescEnd
--************************************************************************

--��ɫMission����� �i�m�
--0��: δ��
--1��: δ��
--2��: δ��
--3��: δ��
--4��: δ��
--5��: δ��
--6��: δ��
--7��: δ��
x210215_g_PetNeedLevel=2	--C�n ����������to� � ��c�p
x210215_g_PetDataID=559	--��������to� � ���

--**********************************
--������ں���
--**********************************
function x210215_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�

	if IsHaveMission(sceneId,selfId,x210215_g_MissionId) > 0 then --����ѽӴ�����
		--������������to� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x210215_g_MissionName)
			AddText(sceneId,x210215_g_ContinueInfo)
			AddMoneyBonus( sceneId, x210215_g_MoneyBonus )
		EndEvent( )
		bDone = x210215_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210215_g_ScriptId,x210215_g_MissionId,bDone)
	elseif x210215_CheckAccept(sceneId,selfId) > 0 then --Th�a m�n�����������
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x210215_g_MissionName)
			AddText(sceneId,x210215_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}")
			AddText(sceneId,x210215_g_MissionTarget)
			AddMoneyBonus( sceneId, x210215_g_MoneyBonus )
			EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x210215_g_ScriptId,x210215_g_MissionId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x210215_OnEnumerate( sceneId, selfId, targetId )
    --�����m�t �δ�����m�t c�i����
    if 	IsMissionHaveDone(sceneId,selfId,x210215_g_MissionIdPre) <= 0 then
    	return
    end
    --��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x210215_g_MissionId) > 0 then
		return
	end
    if IsHaveMission(sceneId,selfId,x210215_g_MissionId) > 0 then
			AddNumText(sceneId,x210215_g_ScriptId,x210215_g_MissionName,2,-1);
		--Th�a m�n�����������
	elseif x210215_CheckAccept(sceneId,selfId) > 0 then
			AddNumText(sceneId,x210215_g_ScriptId,x210215_g_MissionName,1,-1);
	end
end

--**********************************
--���Ti�p th�����
--**********************************
function x210215_CheckAccept( sceneId, selfId )

	if IsMissionHaveDone(sceneId,selfId,x210215_g_MissionId) > 0 then
		return 0
	end
	--��������
	if GetLevel( sceneId, selfId ) >= x210215_g_MissionLevel then
		return 1
	else
		return 0
	end
end

--**********************************
--Ti�p th�
--**********************************
function x210215_OnAccept( sceneId, selfId )

	if x210215_CheckAccept(sceneId, selfId) ~= 1 then
		return
	end
	
	local ret, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, x210215_g_PetDataID, -1, 0) --���������m�t ֻ����
	if ret==1 then
		--������������б�
		AddMission( sceneId,selfId, x210215_g_MissionId, x210215_g_ScriptId, 0, 0, 0 )	--�������
		BeginEvent(sceneId)
			strText = "C�c h� �� nh�n ���c m�t con tr�n th�!"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: Th�ng c�p tr�n th�",MSG2PLAYER_PARA )
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210215_g_SignPost.x, x210215_g_SignPost.z, x210215_g_SignPost.tip )
	end
end

--**********************************
--����
--**********************************
function x210215_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
    DelMission( sceneId, selfId, x210215_g_MissionId )
    --ɾ����������
	petcount = LuaFnGetPetCount(sceneId, selfId) --ȡ �i�m��������
	for	i=0,petcount-1 do
		petdataid = LuaFnGetPet_DataID(sceneId, selfId, i) --ȡ �i�m���ޱ��
		if petdataid==x210215_g_PetDataID then
			local ret0 = LuaFnDeletePet(sceneId, selfId, i)
		end
   end
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210215_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x210215_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x210215_g_MissionName)
		AddText(sceneId,x210215_g_MissionComplete)
		AddMoneyBonus( sceneId, x210215_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210215_g_ScriptId,x210215_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x210215_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210215_g_MissionId )

	-- �������ng����ng��m�t c�i��c�pΪ2c�pto� � ����,�о�OK
	local nPetCount = LuaFnGetPetCount(sceneId, selfId)
	
	for i=0, nPetCount-1  do
		local nPetId = LuaFnGetPet_DataID(sceneId, selfId, i)
		local nPetLevel = LuaFnGetPet_Level(sceneId, selfId, i)
		
		if nPetId==559 and nPetLevel>=2  then
			return 1
		end
	end

	return 0
end

--**********************************
--�ύ
--**********************************
function x210215_OnSubmit( sceneId, selfId, targetId,selectRadioId )

	--��������ng����ng�����
	if x210215_CheckSubmit( sceneId, selfId ) ~= 1   then
		return
	end

	AddMoney(sceneId,selfId,x210215_g_MoneyBonus );
	LuaFnAddExp( sceneId, selfId,810)
	local ret0 = DelMission( sceneId, selfId, x210215_g_MissionId ) --ɾ������
	if ret0>0  then
		MissionCom( sceneId,selfId, x210215_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YHo�n t�t nhi�m v�#W: Th�ng c�p tr�n th�",MSG2PLAYER_PARA )
		CallScriptFunction( 210216, "OnDefaultEvent",sceneId, selfId, targetId)
	end

	BeginEvent(sceneId)
		strText = "Ho�n t�t nhi�m v�"
		AddText(sceneId,strText);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end

--**********************************
--ɱ����������
--**********************************
function x210215_OnKillObject( sceneId, selfId, objdataId, objId )
end

--**********************************
--���������¼�
--**********************************
function x210215_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x210215_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--����ύto� � ��Ʒ������
--**********************************
function x210215_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
	
end

