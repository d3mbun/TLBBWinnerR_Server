--�������� ������m�t ֻ����
--��ɫ��c�pС��10c�p�͸�m�t ֻ����,m�t c�i��ɫm�t ��
--MisDescBegin
--�ű���
x210218_g_ScriptId = 210218

--�����
x210218_g_MissionId = 458

--M�c ti�u nhi�m v�npc
x210218_g_Name	="V�n Phi�u Phi�u"

--�������
x210218_g_MissionKind = 13

--��ng c�p nhi�m v� 
x210218_g_MissionLevel = 1

--��ng����ngTinhӢ����
x210218_g_IfMissionElite = 0

--���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������**********************
--������ng���Ѿ����
x210218_g_IsMissionOkFail = 0		--����to� � ��0λ

--������ng��̬**************************************************************

x210218_g_PetDataID = 3000

--�����ı�����
x210218_g_MissionName="Ta mu�n 1 con th�"
x210218_g_MissionInfo="���c r�i, nh�n ng߽i l� ng߶i m�i �n, cho ng߽i 1 con ti�u th�, ng߽i ph�i y�u th߽ng n�. "  --��������
x210218_g_MissionTarget="    G�i ta 1 ti�ng ch� Phi�u Phi�u. "		--M�c ti�u nhi�m v�
x210218_g_ContinueInfo="��y l� con th� ta nu�i d�y ��ng y�u nh�t, ng߽i ph�i ch�m s�c n� c�n th�n. "		--δHo�n t�t nhi�m v�to� � npc�Ի�
x210218_g_MissionComplete="Ch�i vui v� � ��i L�. "					--Ho�n t�t nhi�m v�npc˵��to� � ��

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x210218_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	--��������ɹ�C�i n�y ����(ʵ��������������������Ͳ�����ʾ,����ng�ټ��m�t �αȽϰ�ȫ)
    if IsMissionHaveDone(sceneId,selfId,x210218_g_MissionId) > 0 then
		return
	end
	
	ret, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, x210218_g_PetDataID, -1, 0) --���������m�t ֻ����
	if ret == 1 then 
		--��c�i����,��ʾ���m�t Щ��
		BeginEvent(sceneId)
		AddText(sceneId,x210218_g_ContinueInfo)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		--Ho�n t�t nhi�m v�
		MissionCom( sceneId,selfId, x210218_g_MissionId )
	else
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� kh�ng th� mang qu� nhi�u tr�n th�")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x210218_OnEnumerate( sceneId, selfId, targetId )

  --��������ɹ�C�i n�y ����
  if IsMissionHaveDone(sceneId,selfId,x210218_g_MissionId) > 0 then
   	return 
	end
  --����ѽӴ�����
  --else
  if IsHaveMission(sceneId,selfId,x210218_g_MissionId) > 0 then
		AddNumText(sceneId,x210218_g_ScriptId,x210218_g_MissionName,2,-1);
    --Th�a m�n�����������
    elseif x210218_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210218_g_ScriptId,x210218_g_MissionName,1,-1);
  end
end

--**********************************
--���Ti�p th�����
--**********************************
function x210218_CheckAccept( sceneId, selfId )
	--C�n 8c�p���ܽ�
	if GetLevel( sceneId, selfId ) >= 8  then
		return 1
	else
		return 0
	end
end

--**********************************
--Ti�p th�
--**********************************
function x210218_OnAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x210218_OnAbandon( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x210218_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--�����ng������ύ
--**********************************
function x210218_CheckSubmit( sceneId, selfId )
end

--**********************************
--�ύ
--**********************************
function x210218_OnSubmit( sceneId, selfId, targetId,selectRadioId )
end

--**********************************
--ɱ����������
--**********************************
function x210218_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x210218_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x210218_OnItemChanged( sceneId, selfId, itemdataId )
end
