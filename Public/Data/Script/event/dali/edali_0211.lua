--ѭ������
--�ټ�ͬ��
--************************************************************************
--MisDescBegin
--�ű���
x210211_g_ScriptId = 210211

--Ti�p th�����NPC����
x210211_g_Position_X=173
x210211_g_Position_Z=146
x210211_g_SceneID=2
x210211_g_AccomplishNPC_Name="T�n B�t Gia" 

--��m�t c�i����to� � ID
x210211_g_MissionIdPre =450

--�����
x210211_g_MissionId = 451

--M�c ti�u nhi�m v�npc
x210211_g_Name	="T�n B�t Gia" 

x210211_g_ItemId	=30505062

--�������
x210211_g_MissionKind = 13

--��ng c�p nhi�m v� 
x210211_g_MissionLevel = 3

--��ng����ngTinhӢ����
x210211_g_IfMissionElite = 0

--********���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������******
x210211_g_IsMissionOkFail = 0					--����to� � ��0λ
--**********************************������ng��̬****************************


--�����ı�����
x210211_g_MissionName="Ph�ng ho� ph�o"
x210211_g_MissionInfo="#{event_dali_0013}"  --������������ʲô�ط�����,��ֻҪ��#Y����#W��to� � ����� ��o c� �� �y�,�Ҽ� �i�mm�t ��C�i n�y #Y��Ѷ���#W,�����ܸ������to� � ��ʾ.
x210211_g_MissionTarget="#{xinshou_003}"		--M�c ti�u nhi�m v�
x210211_g_ContinueInfo="  L�a �� ph�ng �i ch�a?"		--δHo�n t�t nhi�m v�to� � npc�Ի�
x210211_g_MissionComplete="#{event_dali_0015}"					--Ho�n t�t nhi�m v�npc˵��to� � ��
x210211_g_ItemBonus={{id=10111000,num=1}}
x210211_g_SignPost = {x = 173, z = 146, tip = "T�n B�t Gia "}
x210211_g_MoneyBonus=72
x210211_g_SignPost_1 = {x = 82, z = 220, tip = "�i�m �t Ho� ph�o"}

x210211_g_Custom	= { {id="�� �t Ho� ph�o truy�n tin",num=1} }

--MisDescEnd
--************************************************************************

--��ɫMission����� �i�m�
--0��: ����״̬
--1��: 
--2��: ��T�i �������
--3��: ָ��x����
--4��: ָ��z����
--5��: δ��
--6��: δ��
--7��: δ��

--����λ��
x210211_g_TreasureAddress = {	{scene=2,x=82,z=220}}
--						{scene=2,x=104,z=201},
--						{scene=2,x=242,z=55},
--						{scene=2,x=202,z=237},
--						{scene=2,x=255,z=232},
--						{scene=2,x=82,z=220},
--						{scene=2,x=46,z=255},
--						{scene=2,x=44,z=151},
--						{scene=2,x=79,z=222}}

--**********************************
--������ں���
--**********************************
function x210211_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	if IsHaveMission(sceneId,selfId,x210211_g_MissionId) > 0 then
		--������������to� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x210211_g_MissionName)
			AddText(sceneId,x210211_g_ContinueInfo)
			AddMoneyBonus( sceneId, x210211_g_MoneyBonus )
		EndEvent( )
		bDone = x210211_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210211_g_ScriptId,x210211_g_MissionId,bDone)
	--Th�a m�n�����������
	elseif x210211_CheckAccept(sceneId,selfId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x210211_g_MissionName)
			AddText(sceneId,x210211_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x210211_g_MissionTarget)
			for i, item in x210211_g_ItemBonus do
				AddItemBonus( sceneId, item.id, item.num )
			end
			AddMoneyBonus( sceneId, x210211_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x210211_g_ScriptId,x210211_g_MissionId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x210211_OnEnumerate( sceneId, selfId, targetId )
    --�����m�t �δ�����m�t c�i����
    if 	IsMissionHaveDone(sceneId,selfId,x210211_g_MissionIdPre) <= 0 then
    	return
    end
	if IsMissionHaveDone(sceneId,selfId,x210211_g_MissionId) > 0 then
    	return 
    --����ѽӴ�����
    elseif IsHaveMission(sceneId,selfId,x210211_g_MissionId) > 0 then
		AddNumText(sceneId,x210211_g_ScriptId,x210211_g_MissionName,2,-1);
    --Th�a m�n�����������
    elseif x210211_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210211_g_ScriptId,x210211_g_MissionName,1,-1);
    end
end

--**********************************
--���Ti�p th�����
--**********************************
function x210211_CheckAccept( sceneId, selfId )
	--C�n 3c�p���ܽ�
	if GetLevel( sceneId, selfId ) >= 3 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ti�p th�
--**********************************
function x210211_OnAccept( sceneId, selfId )

	if x210211_CheckAccept(sceneId, selfId )<=0 then
		return
	end
	
	--x210211_g_sequence = random(3)					--���ݱ���� �i�m���� ��t ���cm�t c�i�����
	SceneNum = x210211_g_TreasureAddress[1].scene
	X		 = x210211_g_TreasureAddress[1].x
	Z		 = x210211_g_TreasureAddress[1].z
	--����̻�
	BeginAddItem(sceneId)
		AddItem( sceneId,x210211_g_ItemId, 1 )
	local ret = EndAddItem(sceneId,selfId)
	
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#Yh�nh Trang nhi�m v�#W c�a c�c h� �� �y", MSG2PLAYER_PARA )
	
	else
		--������������б�
		local ret1 = AddMission( sceneId,selfId, x210211_g_MissionId, x210211_g_ScriptId, 0, 0, 1 )
	
		if ret1 > 0  then
			
			--���������������to� � ������ź�����λ��
			misIndex = GetMissionIndexByID(sceneId,selfId,x210211_g_MissionId)		-- �i�m������T�i 20c�i������to� � ���к�
			SetMissionByIndex(sceneId,selfId,misIndex,0,0)					--�������кŰ��������to� � ��m�t λ��0	��m�t λ��ng���/th�t b�i���
			SetMissionByIndex(sceneId,selfId,misIndex,2,SceneNum)		--�ѵ���λ��Ϊ����to� � �������
			SetMissionByIndex(sceneId,selfId,misIndex,3,X)					--�ѵ���λ��Ϊ����to� � X����
			SetMissionByIndex(sceneId,selfId,misIndex,4,Z)					--�ѵ���λ��Ϊ����to� � Z����
			
			AddItemListToHuman(sceneId,selfId)
			Msg2Player( sceneId, selfId,"#YNh�n nhi�m v�#W: �t Ho� ph�o",MSG2PLAYER_PARA )
			
		  Msg2Player( sceneId, selfId, "@*;flagPOS;" .. sceneId .. ";" .. X .. ";" .. Z .. ";".."�i�m �t Ho� ph�o", MSG2PLAYER_PARA )
			Msg2Player( sceneId, selfId, "@*;flashPOS;" .. sceneId .. ";" .. X .. ";" .. Z .. ";" .. "�i�m �t Ho� ph�o", MSG2PLAYER_PARA )
			BeginEvent(sceneId)
				AddText(sceneId, "C�c h� �� nh�n Ho� ph�o truy�n tin");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210211_g_SignPost_1.x, x210211_g_SignPost_1.z, x210211_g_SignPost_1.tip )
		else
			Msg2Player( sceneId, selfId,"#YDanh s�ch nhi�m v�#W: c�a c�c h� �� �y r�i", MSG2PLAYER_PARA )
		
		end
	end
end

--**********************************
--����
--**********************************
function x210211_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
    res = DelMission( sceneId, selfId, x210211_g_MissionId )
	if res > 0 then
		--��ȥ������Ʒ
		DelItem( sceneId, selfId, x210211_g_ItemId, 1 )
		--CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210211_g_SignPost.tip )
		
	  Msg2Player( sceneId, selfId, "@*;flagNPCdel;" .. sceneId .. ";" .. "�i�m �t Ho� ph�o", MSG2PLAYER_PARA )
	  Msg2Player( sceneId, selfId, "@*;flashNPCdel;" .. sceneId .. ";" .. "�i�m �t Ho� ph�o", MSG2PLAYER_PARA )
		
		
	end
end

--**********************************
--����
--**********************************
function x210211_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x210211_g_MissionName)
		AddText(sceneId,x210211_g_MissionComplete)
		AddMoneyBonus( sceneId, x210211_g_MoneyBonus )
		for i, item in x210211_g_ItemBonus do
			AddItemBonus( sceneId,item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210211_g_ScriptId,x210211_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x210211_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210211_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	misIndex = GetMissionIndexByID(sceneId,selfId,x210211_g_MissionId)
	x210211_g_MissionCondition = GetMissionParam(sceneId,selfId,misIndex,0)		-- ��t ���c����״̬
	if	x210211_g_MissionCondition>=1	then
		return	1
	else
		return	0
	end
end

--**********************************
--�ύ
--**********************************
function x210211_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x210211_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
    	BeginAddItem(sceneId)
			for i, item in x210211_g_ItemBonus do
				AddItem( sceneId,item.id, item.num )
			end
		ret = EndAddItem(sceneId,selfId)
		--���������
			if ret > 0 then
					AddMoney(sceneId,selfId,x210211_g_MoneyBonus );
					LuaFnAddExp( sceneId, selfId,400)
					ret = DelMission( sceneId, selfId, x210211_g_MissionId )
				if ret > 0 then
					MissionCom( sceneId, selfId, x210211_g_MissionId )
					AddItemListToHuman(sceneId,selfId)
					Msg2Player(  sceneId, selfId,"#YHo�n t�t nhi�m v�#W: Яt Ho� ph�o",MSG2PLAYER_PARA )
					CallScriptFunction( 210212, "OnDefaultEvent",sceneId, selfId, targetId)
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
function x210211_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x210211_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x210211_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--����ʹ��
--**********************************
function x210211_OnUseItem( sceneId, selfId, BagIndex )
	misIndex = GetMissionIndexByID(sceneId,selfId,x210211_g_MissionId)
	x210211_g_MissionCondition = GetMissionParam(sceneId,selfId,misIndex,0)		-- ��t ���c����״̬
	scene = GetMissionParam(sceneId,selfId,misIndex,2)					-- ��t ���c���ﳡ����
	treasureX = x210211_g_SignPost_1.x				-- ��t ���c����X����
	treasureZ = x210211_g_SignPost_1.z				-- ��t ���c����Z����	
	--��������Ѿ����
	if x210211_g_MissionCondition == 1 then
		BeginEvent(sceneId)
			AddText(sceneId,"Ph�t ra Ho� ph�o truy�n tin th�nh c�ng")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--ȡ �i�m��ҵ�ǰ����
	PlayerX = GetHumanWorldX(sceneId,selfId)
	PlayerZ = GetHumanWorldZ(sceneId,selfId)
	--��������뱦��to� � ����
	Distance = floor(sqrt((treasureX-PlayerX)*(treasureX-PlayerX)+(treasureZ-PlayerZ)*(treasureZ-PlayerZ)))
	if sceneId==scene or sceneId==71 or sceneId==72 then
	else
		BeginEvent(sceneId)
			AddText(sceneId,"C� h� � c�nh n�y kh�ng th� ph�t ra Ho� ph�o truy�n tin")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	if Distance > 5 then
		BeginEvent(sceneId)
			AddText(sceneId,"�i�m �t Ho� ph�o truy�n tin c�n c�ch kho�ng "..Distance.." G�o")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	elseif Distance <= 5 then
		SetMissionByIndex(sceneId,selfId,misIndex,0,1)		--������״̬��������Ϊ1,��ʾ�Ѿ����
		SetMissionByIndex(sceneId,selfId,misIndex,1,1)		--������״̬��������Ϊ1,��ʾ�Ѿ����
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210211_g_SignPost.x, x210211_g_SignPost.z, x210211_g_SignPost.tip )
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 4825, 0);
		BeginEvent(sceneId)
			AddText(sceneId,"Ю t� c�c ��i m�n ph�i ���c tin l� l��t k�o t�i, mau v� t�m T�n B�t Gia �i")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		DelItem( sceneId, selfId, x210211_g_ItemId, 1 )
	end
end
