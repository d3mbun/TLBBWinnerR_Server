----------------
--MisDescBegin
--�ű���
x600049_g_ScriptId	= 600049

--Ti�p th�����NPC����
x600049_g_Position_X=147
x600049_g_Position_Z=96
--���񽻸�npc
x600049_g_AccomplishNPC_Name="��ng Ph� Dung"
--�����
x600049_g_MissionId			  = 1142
--M�c ti�u nhi�m v�npc
x600049_g_Name 					  = "��ng Ph� Dung"
--�������
x600049_g_MissionKind			= 50 --���Th�nh ph� 
--��ng c�p nhi�m v� 
x600049_g_MissionLevel		= 10000
--��ng����ngTinhӢ����
x600049_g_IfMissionElite	= 0
--������ng���Ѿ����
x600049_g_IsMissionOkFail	= 0		--�������to� � ��0λ
--�����ı�����
x600049_g_MissionName			= "Tr� gi�p tri�u ��nh: Nhi�m v� Th�t Di�p Li�n"
--��������
x600049_g_MissionInfo			= ""
--M�c ti�u nhi�m v�
x600049_g_MissionTarget		= "    Thu th�p #YTh�t Di�p Li�n #W. Ъn #GKi�m C�c B�ch Mao L�nh #Who�c #GV� L��ng S�n ��o Hoa ��m #Wt�m ���c."
--δHo�n t�t nhi�m v�to� � npc�Ի�
x600049_g_ContinueInfo		= ""
--Ho�n t�t nhi�m v�npc˵to� � ��
x600049_g_MissionComplete	= ""

-- Nhi�m v� ho�n th�nh���,���ݶ�̬ˢ��,ռ���������to� � ��1λ
x600049_g_Custom	= { {id="�� t�m ���c: Th�t Di�p Li�n",num=1} }
--MisDescEnd
----------------

--**********************************
--����
--**********************************
function x600049_OnAbandon( sceneId, selfId )
	CallScriptFunction( 600046, "OnAbandon", sceneId, selfId, 2 )
end

--**********************************
--�ύ
--**********************************
function x600049_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	CallScriptFunction( 600046, "OnSubmit", sceneId, selfId, targetId, 2 )
end

--**********************************
--Ti�p th�
--**********************************
function x600049_OnAccept( sceneId, selfId, targetId )
	CallScriptFunction( 600046, "OnAcceptSupportState", sceneId, selfId, targetId, 2 )	
end
