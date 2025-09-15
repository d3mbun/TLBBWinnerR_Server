--�ʴ�����
--Ǯ��Ҫ���������12c�i����
--MisDescBegin
--�ű���
x210207_g_ScriptId = 210207

--Ti�p th�����NPC����
x210207_g_Position_X=266
x210207_g_Position_Z=234
x210207_g_SceneID=2
x210207_g_AccomplishNPC_Name="Ti�n Long"

--�����
x210207_g_MissionId = 447

--��m�t c�i����to� � ID
x210207_g_MissionIdPre = 445

--Ŀ��NPC
x210207_g_Name	="Ti�n Long"

--������߱��
--g_ItemId = 20101001

--���������������
--g_ItemNeedNum = 1

--�������
x210207_g_MissionKind = 13

--��ng c�p nhi�m v� 
x210207_g_MissionLevel = 2

--��ng����ngTinhӢ����
x210207_g_IfMissionElite = 0

--���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������**********************
--������ng���Ѿ����
x210207_g_IsMissionOkFail = 0		--����to� � ��0λ
x210207_g_Custom	= { {id="�� li�n t�c ��p ��ng 5 c�u h�i c�a Ti�n Long",num=1} }

--������ng��̬**************************************************************

--������
x210207_g_MissionName="L�n �u h�i ��p"
x210207_g_MissionInfo="#{event_dali_0010}"
x210207_g_MissionTarget="Li�n t�c ��p ��ng 5 c�u h�i c�a #RTi�n Long #W#{_INFOAIM145,138,2, Ti�n Long}."
x210207_g_MissionComplete="  Ch�c m�ng c�c h� �� qua �i ! S� ti�n n�y ta t�ng cho c�c h� � h�nh t�u giang h�."
x210207_g_MoneyBonus=2010
x210207_g_SignPost = {x = 266, z = 234, tip = "Ti�n Long"}
x210207_g_ItemBonus={{id=10110000,num=1}}

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x210207_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����(ʵ��������������������Ͳ�����ʾ,����ng�ټ��m�t �αȽϰ�ȫ)
    --if IsMissionHaveDone(sceneId,selfId,x210207_g_MissionId) > 0 then
	--	return
	--end
    --����ѽӴ�����
		if IsHaveMission(sceneId,selfId,x210207_g_MissionId) > 0 then
			misIndex = GetMissionIndexByID(sceneId,selfId,x210207_g_MissionId)
			num = GetMissionParam(sceneId,selfId,misIndex,1)
			if num < 1 then
				CallScriptFunction( 311100, "OnDefaultEvent",sceneId, selfId, targetId )
			else
				--������������to� � ��Ϣ
				BeginEvent(sceneId)
				AddText(sceneId,x210207_g_MissionName)
				AddText(sceneId,x210207_g_MissionComplete)
				AddMoneyBonus( sceneId, x210207_g_MoneyBonus )
				EndEvent( )
				bDone = x210207_CheckSubmit( sceneId, selfId )
				DispatchMissionDemandInfo(sceneId,selfId,targetId,x210207_g_ScriptId,x210207_g_MissionId,bDone)
			end
		--Th�a m�n�����������
		elseif x210207_CheckAccept(sceneId,selfId) > 0 then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
			BeginEvent(sceneId)
				AddText(sceneId,x210207_g_MissionName)
				AddText(sceneId,x210207_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210207_g_MissionTarget)
				for i, item in x210207_g_ItemBonus do
					AddItemBonus( sceneId, item.id, item.num )
				end
				AddMoneyBonus( sceneId, x210207_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210207_g_ScriptId,x210207_g_MissionId)
		end
end

--**********************************
--�о��¼�
--**********************************
function x210207_OnEnumerate( sceneId, selfId, targetId )
    --�����m�t �δ�����m�t c�i����
    if 	IsMissionHaveDone(sceneId,selfId,x210207_g_MissionIdPre) <= 0 then
    	return
    end
    --��������ɹ�C�i n�y ����
    if IsMissionHaveDone(sceneId,selfId,x210207_g_MissionId) > 0 then
    	return
	end
    --����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x210207_g_MissionId) > 0 then
		AddNumText(sceneId,x210207_g_ScriptId,x210207_g_MissionName,2,-1);
	--Th�a m�n�����������
	elseif x210207_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210207_g_ScriptId,x210207_g_MissionName,1,-1);
	end
end

--**********************************
--���Ti�p th�����
--**********************************
function x210207_CheckAccept( sceneId, selfId )
	--C�n 1c�p���ܽ�
	if GetLevel( sceneId, selfId ) >= 2 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ti�p th�
--**********************************
function x210207_OnAccept( sceneId, selfId, targetId )
	--������������б�
	AddMission( sceneId,selfId, x210207_g_MissionId, x210207_g_ScriptId, 0, 0, 0 )
	CallScriptFunction( 311100, "OnDefaultEvent",sceneId, selfId, targetId )
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: l�n tr� l�i 1",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210207_g_SignPost.x, x210207_g_SignPost.z, x210207_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x210207_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
    DelMission( sceneId, selfId, x210207_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210207_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x210207_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x210207_g_MissionName)
		AddText(sceneId,x210207_g_MissionComplete)
		AddMoneyBonus( sceneId, x210207_g_MoneyBonus )
		for i, item in x210207_g_ItemBonus do
			AddItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210207_g_ScriptId,x210207_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x210207_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210207_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	misIndex = GetMissionIndexByID(sceneId,selfId,x210207_g_MissionId)
	num = GetMissionParam(sceneId,selfId,misIndex,1)
	if num < 1 then
		return 0
	else
		return 1
	end
end

--**********************************
--�ύ
--**********************************
function x210207_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210207_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
    	BeginAddItem(sceneId)
			for i, item in x210207_g_ItemBonus do
				AddItem( sceneId, item.id, item.num )
			end
		ret = EndAddItem(sceneId,selfId)
		if ret > 0 then
			AddMoney(sceneId,selfId,x210207_g_MoneyBonus );
			LuaFnAddExp(sceneId, selfId,100)
			ret = DelMission( sceneId, selfId, x210207_g_MissionId )
			if ret > 0 then
				MissionCom( sceneId, selfId, x210207_g_MissionId )
				AddItemListToHuman(sceneId,selfId)
				Msg2Player(  sceneId, selfId,"#YHo�n t�t nhi�m v�#W: l�n tr� l�i 1",MSG2PLAYER_PARA )
				CallScriptFunction( 210208, "OnDefaultEvent",sceneId, selfId, targetId)
			end
		else
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
function x210207_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x210207_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x210207_OnItemChanged( sceneId, selfId, itemdataId )
end
