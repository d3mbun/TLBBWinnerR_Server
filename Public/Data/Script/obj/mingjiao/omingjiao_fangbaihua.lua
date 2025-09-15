--Minh Gi�oNPC
--���ٻ�
--��ͨ

--�ű���
x011002_g_ScriptId = 011002

--**********************************
--�¼��������
--**********************************
function x011002_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ta c� th� truy�n th� cho khinh c�ng �c bi�t c�a b�n ph�i, c� �i�u c�n t�n 50 #-03")
		AddNumText(sceneId, x011002_g_ScriptId, "ѧϰMinh Gi�o�Ṧ",12,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x011002_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText()==0	then
		
		if GetMenPai(sceneId, selfId) == 1 then
			if	HaveSkill( sceneId, selfId, 24)<0	then
				-- ���Ǯ
				if GetMoney(sceneId, selfId)+GetMoneyJZ(sceneId, selfId) < STUDY_MENPAI_QINGGONG_SPEND  then
					BeginEvent(sceneId)
						AddText(sceneId,"  Ng�n l��ng tr�n ng߶i c�c h� kh�ng �� 50 #-03, v� v�y kh�ng th� h�c khinh c�ng b�n m�n")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					return
				end
				-- ��Ǯ
				LuaFnCostMoneyWithPriority(sceneId,selfId,STUDY_MENPAI_QINGGONG_SPEND)

				AddSkill( sceneId, selfId, 24 )
				DelSkill( sceneId, selfId, 34 )
				BeginEvent(sceneId)
					AddText(sceneId,"  Ch�c m�ng ng߽i �� h�c ���c khinh c�ng c�a b�n m�n, hy v�ng ng߽i ti�p t�c n� l�c � ph�t huy danh ti�ng b�n m�n.")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			else
				BeginEvent(sceneId)
					AddText(sceneId,"Ch�ng ph�i ng߽i �� h�c r�i sao?")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		elseif GetMenPai(sceneId, selfId) == 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"ѧϰMinh Gi�o�ṦC�n �ȼ���Minh Gi�o!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"�㲻��ng������to� � ����,����ng���ܽ���Minh Gi�oto� � �Ṧto� � ")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	end	
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x011002_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--�ܾ���NPCto� � ����
--**********************************
function x011002_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x011002_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--�ύ������to� � ����
--**********************************
function x011002_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
end

--**********************************
--�����¼�
--**********************************
function x011002_OnDie( sceneId, selfId, killerId )
end
