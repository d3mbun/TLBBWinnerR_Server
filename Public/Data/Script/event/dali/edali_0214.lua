--��������
--����ʦѰ��V�n Phi�u Phi�u
--MisDescBegin
--�ű���
x210214_g_ScriptId = 210214

--Ti�p th�����NPC����
x210214_g_Position_X=400
x210214_g_Position_Z=218
x210214_g_SceneID=2
x210214_g_AccomplishNPC_Name="V�n Phi�u Phi�u"

--�����
x210214_g_MissionId = 454

--��m�t c�i����to� � ID
--g_MissionIdPre = 

--Ŀ��NPC
x210214_g_Name	="V�n Phi�u Phi�u"

--�������
x210214_g_MissionKind = 13

--��ng c�p nhi�m v� 
x210214_g_MissionLevel = 5

--��ng����ngTinhӢ����
x210214_g_IfMissionElite = 0

--������
x210214_g_MissionName="Con tr�n th� th� nh�t"
x210214_g_MissionInfo="#{event_dali_0020}"
x210214_g_MissionTarget="Ъn #YTr�ng �i�u ph߶ng#W � #G�߶ng l�n ph�a ��ng c�a th�nh ��i L�#W t�m ph߶ng ch� #RV�n Phi�u Phi�u #W#{_INFOAIM265,129,2, V�n Phi�u Phi�u}. "
x210214_g_MissionComplete="  Ta kh�ng t�y ti�n v�i ng߶i b�nh th߶ng k�t giao b�ng h�u, nh�ng Ng߽i l� b�n c�a T� ��i Thi�n Nh�n. V�y ta s� n�i cho ng߽i bi�t m�t v�i �i�u hay"
x210214_g_MoneyBonus=72
x210214_g_SignPost = {x = 400, z = 218, tip = "V�n Phi�u Phi�u"}

x210214_g_Custom	= { {id="�� t�m ���c V�n Phi�u Phi�u",num=1} }
x210214_g_IsMissionOkFail = 1		--����to� � ��0λ

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x210214_OnDefaultEvent( sceneId, selfId, targetId )
    --��������ɹ�C�i n�y ����
    if (IsMissionHaveDone(sceneId,selfId,x210214_g_MissionId) > 0 ) then
    	return
	elseif( IsHaveMission(sceneId,selfId,x210214_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x210214_g_Name then
			x210214_OnContinue( sceneId, selfId, targetId )
		end
    --Th�a m�n�����������
    elseif x210214_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210214_g_Name then
			--��������Ti�p th�ʱ��ʾto� � ��Ϣ
			BeginEvent(sceneId)
				AddText(sceneId,x210214_g_MissionName)
				AddText(sceneId,x210214_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}")
				AddText(sceneId,x210214_g_MissionTarget)
				AddMoneyBonus( sceneId, x210214_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210214_g_ScriptId,x210214_g_MissionId)
		end
    end
end

--**********************************
--�о��¼�
--**********************************
function x210214_OnEnumerate( sceneId, selfId, targetId )
    --�����m�t �δ�����m�t c�i����
    --if 	IsMissionHaveDone(sceneId,selfId,g_MissionIdPre) <= 0 then
    --	return
    --end
    --��������ɹ�C�i n�y ����
    if IsMissionHaveDone(sceneId,selfId,x210214_g_MissionId) > 0 then
    	return 
    --����ѽӴ�����
    elseif IsHaveMission(sceneId,selfId,x210214_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x210214_g_Name then
			AddNumText(sceneId, x210214_g_ScriptId,x210214_g_MissionName,2,-1);
		end
    --Th�a m�n�����������
    elseif x210214_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x210214_g_Name then
			AddNumText(sceneId,x210214_g_ScriptId,x210214_g_MissionName,1,-1);
		end
    end
end

--**********************************
--���Ti�p th�����
--**********************************
function x210214_CheckAccept( sceneId, selfId )
	--C�n 5c�p���ܽ�
	if GetLevel( sceneId, selfId ) >= 5 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ti�p th�
--**********************************
function x210214_OnAccept( sceneId, selfId )
	--������������б�
	AddMission( sceneId,selfId, x210214_g_MissionId, x210214_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�#W: tr�n th� th� nh�t",MSG2PLAYER_PARA )
	CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210214_g_SignPost.x, x210214_g_SignPost.z, x210214_g_SignPost.tip )

	-- ����������ɱ�־
	local misIndex = GetMissionIndexByID(sceneId,selfId,x210214_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
end

--**********************************
--����
--**********************************
function x210214_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
    DelMission( sceneId, selfId, x210214_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, sceneId, x210214_g_SignPost.tip )
end

--**********************************
--����
--**********************************
function x210214_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
    BeginEvent(sceneId)
		AddText(sceneId,x210214_g_MissionName)
		AddText(sceneId,x210214_g_MissionComplete)
		AddMoneyBonus( sceneId, x210214_g_MoneyBonus )
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210214_g_ScriptId,x210214_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x210214_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210214_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x210214_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x210214_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--���������
		AddMoney(sceneId,selfId,x210214_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId,400)
		DelMission( sceneId,selfId,  x210214_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId,  x210214_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YHo�n t�t nhi�m v�#W: tr�n th� th� nh�t",MSG2PLAYER_PARA )
		CallScriptFunction( 210215, "OnDefaultEvent",sceneId, selfId, targetId)
	end
end

--**********************************
--ɱ����������
--**********************************
function x210214_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x210214_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x210214_OnItemChanged( sceneId, selfId, itemdataId )
end
