--��̬����to� � ��ʬ

x807001_g_scriptId=807001



--**********************************

--�¼��������

--**********************************

function x807001_OnDefaultEvent( sceneId, selfId, targetId )
	--SetUnitReputationID(sceneId, selfId, targetId, 28)
	--�ж���ng���ܹ������npcto� � ����

	--PrintStr("haha...����ng��ʬ")

	local npcLevel = GetCharacterLevel(sceneId, targetId)

	local teamCount = GetTeamMemberCount(sceneId, selfId)

	local teamLeaderID = GetTeamLeader(sceneId, selfId)

	local teamLeaderLevel = GetCharacterLevel(sceneId, teamLeaderID)

	

	--PrintNum(teamLeaderID)

	--PrintNum(teamCount)

	--PrintNum(teamLeaderLevel)

	--PrintNum(npcLevel)

	
	--ȡ �i�m��Ҹ���to� � ��������(�����Լ�)
	local nearteammembercount = GetNearTeamCount( sceneId, selfId )
	if  nearteammembercount < 1 then	

		BeginEvent(sceneId)

			AddText(sceneId, "D�m coi th߶ng ta, ch� �t c�ng ph�i l� 3 ng߶i h�p l�i m�i ���c, ha ha.")

		EndEvent(sceneId)

		DispatchEventList(sceneId,selfId,targetId)

		return

	elseif teamLeaderLevel < npcLevel then

		--��ʾ��������

		BeginEvent(sceneId)

			AddText(sceneId, "D�m coi th߶ng ta, ��ng c�p cao h�n s� bi�t l�i h�i c�a ta")

		EndEvent(sceneId)

		DispatchEventList(sceneId,selfId,targetId)

		return



	else

		--����npc

		--PrintStr("active npc...")

		--���öԹ�Ϊ�ж�to� �  Ŀǰ��ng28����ng�ж�to� � ,������˸ı�����Ӧto� � �����������ҾͲ��ˣ���:-(((
		SetUnitReputationID(sceneId, selfId, targetId, 28)


	end

	

end



function x807001_OnDie(sceneId, selfId, killerId)



end

