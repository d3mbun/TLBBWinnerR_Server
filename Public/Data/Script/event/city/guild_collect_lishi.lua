----------------
--MisDescBegin
--�ű���
x600047_g_ScriptId	= 600047

--Ti�p th�����NPC����
x600047_g_Position_X=147
x600047_g_Position_Z=96
--���񽻸�npc
x600047_g_AccomplishNPC_Name="��ng Ph� Dung"
--�����
x600047_g_MissionId			  = 1140
--M�c ti�u nhi�m v�npc
x600047_g_Name 					  = "��ng Ph� Dung"
--�������
x600047_g_MissionKind			= 50 --���Th�nh ph� 
--��ng c�p nhi�m v� 
x600047_g_MissionLevel		= 10000
--��ng����ngTinhӢ����
x600047_g_IfMissionElite	= 0
--������ng���Ѿ����
x600047_g_IsMissionOkFail	= 0		--�������to� � ��0λ
--�����ı�����
x600047_g_MissionName			= "Tr� gi�p tri�u ��nh: Nhi�m v� L�ch Th�ch"
--��������
x600047_g_MissionInfo			= ""
--M�c ti�u nhi�m v�
x600047_g_MissionTarget		= "    Thu th�p #YL�ch Th�ch#W. Ng߽i �n #G��n Ho�ng Minh Sa S�n#W ho�c #GTung S�n Ki S�n Pha Nam#W kia t�m ���c."
--δHo�n t�t nhi�m v�to� � npc�Ի�
x600047_g_ContinueInfo		= ""
--Ho�n t�t nhi�m v�npc˵to� � ��
x600047_g_MissionComplete	= ""

-- Nhi�m v� ho�n th�nh���,���ݶ�̬ˢ��,ռ���������to� � ��1λ
x600047_g_Custom	= { {id="�� t�m ���c: L�ch Th�ch",num=1} }
--MisDescEnd
----------------


--**********************************
--����
--**********************************
function x600047_OnAbandon( sceneId, selfId )
	CallScriptFunction( 600046, "OnAbandon", sceneId, selfId, 0 )
end

--**********************************
--�ύ
--**********************************
function x600047_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	CallScriptFunction( 600046, "OnSubmit", sceneId, selfId, targetId, 0 )
end

--**********************************
--Ti�p th�
--**********************************
function x600047_OnAccept( sceneId, selfId, targetId)
	CallScriptFunction( 600046, "OnAcceptSupportState", sceneId, selfId, targetId, 0 )	
end
