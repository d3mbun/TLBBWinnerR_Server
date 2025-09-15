--��������
--����ʦѰ��V�n Phi�u Phi�u
--MisDescBegin
--�ű���
x210220_g_ScriptId = 210220

--Ti�p th�����NPC����
x210220_g_Position_X=400
x210220_g_Position_Z=218
x210220_g_SceneID=2
x210220_g_AccomplishNPC_Name="V�n Phi�u Phi�u"

--�����
x210220_g_MissionId = 700

--��m�t c�i����to� � ID
--g_MissionIdPre = 

--Ŀ��NPC
x210220_g_Name	="V�n Phi�u Phi�u"

--�������
x210220_g_MissionKind = 13

--��ng c�p nhi�m v� 
x210220_g_MissionLevel = 7

--��ng����ngTinhӢ����
x210220_g_IfMissionElite = 0

--������
x210220_g_MissionName="L�m sao b�t tr�n th� ��y?"
x210220_g_MissionInfo="#{event_dali_0027}"
x210220_g_MissionTarget="    Ъn #YTr�ng �i�u ph߶ng#W � #G�߶ng l�n ph�a ��ng c�a th�nh ��i L�#W t�m ph߶ng ch� #RV�n Phi�u Phi�u #W#{_INFOAIM265,129,2, V�n Phi�u Phi�u}. "
x210220_g_MissionComplete="#{event_dali_0028}"
x210220_g_MoneyBonus=72
x210220_g_SignPost = {x = 400, z = 218, tip = "V�n Phi�u Phi�u"}


--MisDescEnd
--**********************************
--������ں���
--**********************************
function x210220_OnDefaultEvent( sceneId, selfId, targetId )
    --��������ɹ�C�i n�y ����
    if (IsMissionHaveDone(sceneId,selfId,x210220_g_MissionId) > 0 ) then
    	return
	elseif( IsHaveMission(sceneId,selfId,x210220_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x210220_g_Name then
			x210220_OnContinue( sceneId, selfId, targetId )
		end
    --Th�a m�n�����������
    elseif x210220_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210220_g_Name then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
			BeginEvent(sceneId)
				AddText(sceneId,x210220_g_MissionName)
				AddText(sceneId,x210220_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210220_g_MissionTarget)
				AddMoneyBonus( sceneId, x210220_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210220_g_ScriptId,x210220_g_MissionId)
		end
    end
end

--**********************************
--�о��¼�
--**********************************
function x210220_OnEnumerate( sceneId, selfId, targetId )
    --�����m�t �δ�����m�t c�i����
    --if 	IsMissionHaveDone(sceneId,selfId,g_MissionIdPre) <= 0 then
    --	return
    --end
    --��������ɹ�C�i n�y ����
    if IsMissionHaveDone(sceneId,selfId,x210220_g_MissionId) > 0 then
    	return 
    --����ѽӴ�����
    elseif IsHaveMission(sceneId,selfId,x210220_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x210220_g_Name then
			AddNumText(sceneId, x210220_g_ScriptId,x210220_g_MissionName,2,-1);
		end
    --Th�a m�n�����������
    elseif x210220_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210220_g_Name then
			AddNumText(sceneId,x210220_g_ScriptId,x210220_g_MissionName,1,-1);
		end
    end
end

--**********************************
--���Ti�p th�����
--**********************************
function x210220_CheckAccept( sceneId, selfId )
	--C�n 7c�p���ܽ�
	if GetLevel( sceneId, selfId ) >= 7 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ti�p th�
--**********************************
function x210220_OnAccept( sceneId, selfId )
	--������������б�
	AddMission( sceneId,selfId, x210220_g_MissionId, x210220_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�: L�m sao b�t tr�n th�",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210220_g_SignPost.x, x210220_g_SignPost.z, x210220_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x210220_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
    DelMission( sceneId, selfId, x210220_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210220_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x210220_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x210220_g_MissionName)
		AddText(sceneId,x210220_g_MissionComplete)
		AddMoneyBonus( sceneId, x210220_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210220_g_ScriptId,x210220_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x210220_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210220_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x210220_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210220_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--���������
		AddMoney(sceneId,selfId,x210220_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,500)
		DelMission( sceneId,selfId,  x210220_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId,  x210220_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YHo�n t�t nhi�m v�#W: L�m sao b�t tr�n th�",MSG2PLAYER_PARA )
		CallScriptFunction( 210221, "OnDefaultEvent",sceneId, selfId, targetId)
	end
end

--**********************************
--ɱ����������
--**********************************
function x210220_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x210220_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x210220_OnItemChanged( sceneId, selfId, itemdataId )
end
