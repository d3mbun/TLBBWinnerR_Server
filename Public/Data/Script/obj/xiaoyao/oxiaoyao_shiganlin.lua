--Ti�u DaoNPC
--ʯ����
--��ͨ

--�ű���
x014012_g_ScriptId = 014012


--**********************************
--�¼��������
--**********************************
function x014012_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ta c� th� truy�n th� cho khinh c�ng �c bi�t c�a b�n ph�i, c� �i�u c�n t�n 1 #-15.")
		AddNumText(sceneId, x014012_g_ScriptId, "H�c t�p khinh c�ng ph�i Ti�u Dao",12,0)
	EndEvent(sceneId)
	
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x014012_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText()==0	then
		
		if GetMenPai(sceneId, selfId) == 8 then
			if	HaveSkill( sceneId, selfId, 31)<0	then
				-- ���Ǯ
				if GetMoney(sceneId, selfId)+GetMoneyJZ(sceneId, selfId) < STUDY_MENPAI_QINGGONG_SPEND  then
					BeginEvent(sceneId)
						AddText(sceneId,"  Ng�n l��ng tr�n ng߶i c�c h� kh�ng �� 1 #-15, v� v�y kh�ng th� h�c khinh c�ng b�n m�n.")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					return
				end
				-- ��Ǯ
				LuaFnCostMoneyWithPriority(sceneId,selfId,STUDY_MENPAI_QINGGONG_SPEND)

				AddSkill( sceneId, selfId, 31 )
				DelSkill( sceneId, selfId, 34 )
				BeginEvent(sceneId)
					AddText(sceneId,"  Ch�c m�ng ng߽i �� h�c ���c khinh c�ng c�a b�n m�n, hy v�ng ng߽i ti�p t�c n� l�c � ph�t huy danh ti�ng b�n m�n")
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
				AddText(sceneId,"H�c khinh c�ng c�a ph�i Ti�u Dao c�n ph�i gia nh�p ph�i Ti�u Dao tr߾c c�i ��.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Ng߽i kh�ng ph�i � t� c�a ph�i Ti�u Dao, ta kh�ng th� truy�n d�y ng߽i khinh c�ng c�a b�n m�n.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	end	
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x014012_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--�ܾ���NPCto� � ����
--**********************************
function x014012_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x014012_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--�ύ������to� � ����
--**********************************
function x014012_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
end

--**********************************
--�����¼�
--**********************************
function x014012_OnDie( sceneId, selfId, killerId )
end
