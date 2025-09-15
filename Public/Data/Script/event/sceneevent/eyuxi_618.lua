
-- ��Ϫ��Ӣ�۾���

--************************************************************************
--MisDescBegin
--�ű���
x212111_g_ScriptId = 212111

--�����
x212111_g_MissionId = 618

--ǰ������
x212111_g_PreMissionId_1 = 615
x212111_g_PreMissionId_2 = 616
x212111_g_PreMissionId_3 = 617

--Ŀ��NPC
x212111_g_Name = "A Thi M�"

--�Ƿ��Ǿ�Ӣ����
x212111_g_IfMissionElite = 0

--�������
x212111_g_MissionKind = 38

--����ȼ�
x212111_g_MissionLevel = 72

--�����ı�����
x212111_g_MissionName="Anh h�ng c�u m� nh�n"
x212111_g_MissionInfo="#{Mis_K_Yuxi_1000173}"
x212111_g_MissionTarget="  Gi�t ch�t Nhi�t B� Ba L�c � Ng�c Kh� #{_INFOAIM254,147,27,-1}, gi�i c�u A Thi M�."	--����Ŀ��
x212111_g_MissionComplete="  L� c�c h� �� gi�i c�u t�i h� sao? C�n A H�c... A H�c, h�n �� ch�y �i r�i sao? Th�t ra t�i h� l�c �u �� bi�t ���c A H�c r�t th�ch A Y Na r�i...#r T�i h� kh�ng mu�n g� cho A Chi, v� c�ng kh�ng mu�n th�y A H�c bu�n, hay l� t�i h�... s� l�m m�t h�n �� c� �n, v�nh vi�n s� l�m m�t h�n �� c� �n th�i..."	--�������npc˵���Ļ�
x212111_g_MissionContinue="  Ta v�n l� ... ... v�n l� 1 vi�n ��, m�i m�i l� 1 vi�n �� th�i ... ..."

x212111_g_MoneyBonus=4750
x212111_g_exp=19800

x212111_g_Custom	= { {id="�� gi�t Nhi�t B� Ba La",num=1} }
x212111_g_IsMissionOkFail = 0

x212111_g_RadioItemBonus={{id=10400067 ,num=1},{id=10411080,num=1},{id=10412073,num=1},{id=10405066,num=1}}

--MisDescEnd
--************************************************************************

--**********************************
--������ں���
--**********************************
function x212111_OnDefaultEvent( sceneId, selfId, targetId )	--����������ִ�д˽ű�

	--����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x212111_g_MissionId) > 0 then
		--���������������Ϣ

		if GetName(sceneId, targetId) == "A Thi M�"   then
			BeginEvent(sceneId)
				AddText(sceneId,x212111_g_MissionName)
				AddText(sceneId,x212111_g_MissionContinue)
			EndEvent( )
			bDone = x212111_CheckSubmit( sceneId, selfId )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x212111_g_ScriptId,x212111_g_MissionId,bDone)
		end
    --���������������
  elseif x212111_CheckAccept(sceneId,selfId) > 0 then
		--�����������ʱ��ʾ����Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x212111_g_MissionName)
			AddText(sceneId,x212111_g_MissionInfo)
			AddText(sceneId,x212111_g_MissionTarget)
			AddMoneyBonus( sceneId, x212111_g_MoneyBonus )
			for i, item in x212111_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x212111_g_ScriptId,x212111_g_MissionId)
  end

end

--**********************************
--�о��¼�
--**********************************
function x212111_OnEnumerate( sceneId, selfId, targetId )

  --��������ɹ��������
  if IsMissionHaveDone(sceneId,selfId,x212111_g_MissionId) > 0 then
		return
	end
	
  --����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x212111_g_MissionId) > 0 then
		if GetName(sceneId, targetId) == "A Thi M�"   then
			AddNumText(sceneId,x212111_g_ScriptId,x212111_g_MissionName,2,-1);
		end

	--���������������
	elseif x212111_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId, targetId) == "A H�c"   then
			AddNumText(sceneId,x212111_g_ScriptId,x212111_g_MissionName,1,-1);
		end
	end

end

--**********************************
--����������
--**********************************
function x212111_CheckAccept( sceneId, selfId )
	
	--��Ҫ4�����ܽ�
	if GetLevel( sceneId, selfId ) < 72 then
		return 0
	end

	if IsMissionHaveDone(sceneId,selfId,x212111_g_PreMissionId_1) < 1 then
		return 0
	end
	if IsMissionHaveDone(sceneId,selfId,x212111_g_PreMissionId_2) < 1 then
		return 0
	end
	if IsMissionHaveDone(sceneId,selfId,x212111_g_PreMissionId_3) < 1 then
		return 0
	end
	
	return 1
end

--**********************************
--����
--**********************************
function x212111_OnAccept( sceneId, selfId )
	
	-- ������������б�
	local ret = AddMission( sceneId,selfId, x212111_g_MissionId, x212111_g_ScriptId, 1, 0, 0 )		--�������
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end
	
	misIndex = GetMissionIndexByID(sceneId,selfId,x212111_g_MissionId)			--�õ���������к�
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)						--�������кŰ���������ĵ�0λ��0
	SetMissionByIndex(sceneId,selfId,misIndex,1,0)						--�������кŰ���������ĵ�1λ��0
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�: Anh h�ng c�u m� nh�n",MSG2PLAYER_PARA )
	--CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x212111_g_SignPost.x, x212111_g_SignPost.z, x212111_g_SignPost.tip )
	BeginEvent(sceneId)
		strText = "##YNh�n nhi�m v�: Anh h�ng c�u m� nh�n"
		AddText(sceneId,strText);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--����
--**********************************
function x212111_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧ������
  DelMission( sceneId, selfId, x212111_g_MissionId )
end


--**********************************
--����
--**********************************
function x212111_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱ��˵����Ϣ
  BeginEvent(sceneId)
		AddText(sceneId,x212111_g_MissionName)
		AddText(sceneId,x212111_g_MissionComplete)
		AddMoneyBonus( sceneId, x212111_g_MoneyBonus )
		for i, item in x212111_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x212111_g_ScriptId,x212111_g_MissionId)
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x212111_CheckSubmit( sceneId, selfId )

	misIndex = GetMissionIndexByID(sceneId,selfId,x212111_g_MissionId)
	local Kill1 = GetMissionParam(sceneId,selfId,misIndex,0)

	if Kill1~=1 			then
		return 0
	end
	return 1
end

--**********************************
--�ύ
--**********************************
function x212111_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	-- ��Ҫ����һ���������ļ��
	if x212111_CheckSubmit( sceneId, selfId ) < 1  then
		return
	end
	
	-- �������ǲ������������
	if IsHaveMission(sceneId,selfId,x212111_g_MissionId) <= 0 then
		return
	end
	
	BeginAddItem(sceneId)
		for i, item in x212111_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
	local ret = EndAddItem(sceneId,selfId)

	if ret > 0 then
		DelMission( sceneId, selfId, x212111_g_MissionId )
		MissionCom( sceneId, selfId, x212111_g_MissionId )
	
		AddMoney(sceneId,selfId,x212111_g_MoneyBonus )
		LuaFnAddExp( sceneId, selfId, x212111_g_exp)
		AddItemListToHuman(sceneId,selfId)
	else
		--������û�мӳɹ�
		BeginEvent(sceneId)
			AddText(sceneId, "Kh�ng th� ho�n t�t nhi�m v�");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end

end

--**********************************
--ɱ����������
--**********************************
function x212111_OnKillObject( sceneId, selfId, objdataId ,objId)

	if GetName(sceneId,objId) == "Nhi�t B� Ba L�p"	  then
		misIndex = GetMissionIndexByID(sceneId,selfId,x212111_g_MissionId)
		SetMissionByIndex(sceneId,selfId,misIndex,0,1)
		SetMissionByIndex(sceneId,selfId,misIndex,1,1)
		BeginEvent(sceneId)
		AddText(sceneId,"�� gi�t Nhi�t B� Ba La: 1/1");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		--������ɱ�����ˣ�����һ���̶���ˢ��һ��NPC������һ����
		local NpcId
		NpcId = LuaFnCreateMonster(sceneId, 210, 252, 142, 3, 0, 027004)
		SetCharacterName(sceneId, NpcId, "A Thi M�")
		SetCharacterDieTime(sceneId, NpcId, 600000)
	end

end

--**********************************
--���������¼�
--**********************************
function x212111_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x212111_OnItemChanged( sceneId, selfId, itemdataId )
end
