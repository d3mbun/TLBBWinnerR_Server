--����NPC��ع���,Ŀǰ�ṩԪ�����to� � �������

x888898_g_scriptId = ALONENPC_SCRIPT_ID

x888898_g_op		= {}
x888898_g_op[1]	=	181003		--����Ԫ�����

--**********************************
-- ��������NPCto� � ����
-- op��ng�������,����1����Ԫ�����to� � �����������
--**********************************
function	x888898_AloneNpcEvent( sceneId, selfId, op )
	if nil == op or 1 > op then return end
	local bCheck = x888898_AloneNpcCheckOp(sceneId,selfId,op);
	
	if x888898_g_op[op] and bCheck > 0 then
		CallScriptFunction( x888898_g_op[op], "OnDefaultEvent", sceneId, selfId, ALONENPC_TARGET_ID )
	end
end

function x888898_AloneNpcCheckOp(sceneId,selfId,op)
	if nil == op or 1 > op then return 0 end
	--�ظ�
	if sceneId == 77 then 
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:Trong иa Ph� kh�ng th� t�y ti�n s� d�ng c�ng n�ng", 0);
		return 0
	end
	
	--��Ӹ���
	local selfHasTeamFlag = LuaFnHasTeam(sceneId, selfId);
	if selfHasTeamFlag and selfHasTeamFlag == 1 then
		local teamFollowFlag = IsTeamFollow(sceneId,selfId);
		local teamLeaderFlag = LuaFnIsTeamLeader(sceneId,selfId);
		if not teamLeaderFlag or not teamFollowFlag then
			return 0
		end
		if teamFollowFlag ~= 0 and teamLeaderFlag ~= 1 then
			return 0
		end
	end
	
	--˫�����
	local selfHasDRideFlag = LuaFnGetDRideFlag(sceneId, selfId);
	if selfHasDRideFlag and selfHasDRideFlag == 1 then
		local selfIsDRideMountOwner = LuaFnIsDRideMountOwner(sceneId, selfId);
		if not selfIsDRideMountOwner or selfIsDRideMountOwner ~= 1 then
			--����˫�����״̬,����ng����to� � ,����������������
			return 0
		end
	end
	
	--����Ԫ���̵��������
	if op == 1 then
		--15c�p����
		local level = GetLevel(sceneId,selfId);
		if nil == level or level < 15 then
			BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:C�ng n�ng n�y ch� c� th� s� d�ng khi ��ng c�p c�a c�c h� l�n h�n ho�c b�ng 15 m�i c� th� s� d�ng", 0);
			return 0
		end

		return 1
	end
	return 0
end
