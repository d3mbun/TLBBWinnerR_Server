----------------
--MisDescBegin
--�ű���
x600048_g_ScriptId	= 600048

--Ti�p th�����NPC����
x600048_g_Position_X=147
x600048_g_Position_Z=96
--���񽻸�npc
x600048_g_AccomplishNPC_Name="��ng Ph� Dung"
--�����
x600048_g_MissionId			  = 1141
--M�c ti�u nhi�m v�npc
x600048_g_Name 					  = "��ng Ph� Dung"
--�������
x600048_g_MissionKind			= 50 --���Th�nh ph� 
--��ng c�p nhi�m v� 
x600048_g_MissionLevel		= 10000
--��ng����ngTinhӢ����
x600048_g_IfMissionElite	= 0
--������ng���Ѿ����
x600048_g_IsMissionOkFail	= 0		--�������to� � ��0λ
--�����ı�����
x600048_g_MissionName			= "Tr� gi�p tri�u ��nh: Nhi�m v� �ng Linh"
--��������
x600048_g_MissionInfo			= ""
--M�c ti�u nhi�m v�
x600048_g_MissionTarget		= "    Thu th�p #Y�ng Linh#W. Ng߽i �n #GTh�i H� Ngoan Хu T�#W ho�c #GK�nh h� y�n chi ��o d� h�a mi ��o#W t�m ���c."
--δHo�n t�t nhi�m v�to� � npc�Ի�
x600048_g_ContinueInfo		= ""
--Ho�n t�t nhi�m v�npc˵to� � ��
x600048_g_MissionComplete	= ""

-- Nhi�m v� ho�n th�nh���,���ݶ�̬ˢ��,ռ���������to� � ��1λ
x600048_g_Custom	= { {id="�� t�m ���c: �ng Linh",num=1} }
--MisDescEnd
----------------

--**********************************
--����
--**********************************
function x600048_OnAbandon( sceneId, selfId )
	CallScriptFunction( 600046, "OnAbandon", sceneId, selfId, 1 )
end

--**********************************
--�ύ
--**********************************
function x600048_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	CallScriptFunction( 600046, "OnSubmit", sceneId, selfId, targetId, 1 )	
end

--**********************************
--Ti�p th�
--**********************************
function x600048_OnAccept( sceneId, selfId, targetId )
	CallScriptFunction( 600046, "OnAcceptSupportState", sceneId, selfId, targetId, 1 )	
end
