-- ����������Th�nh th�to� � ���� �i�m

x050103_g_ScriptId = 050103
x050103_g_ControlScript = 050100

x050103_g_Back_X = 60
x050103_g_Back_Z = 161

-- ��ҽ��봫�� �i�m
function x050103_OnEnterArea( sceneId, selfId )
	--CallScriptFunction( x050103_g_ControlScript, "Exit", sceneId, selfId )	
	--2007.12.6 by alan,��ֹ��Ӹ���to� � еi vi�n ������ �i�m����
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				-- ȡ �i�m������ڳ�����
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, oldsceneId,x050103_g_Back_X,x050103_g_Back_Z)
end

-- ���ͣ��T�i ���� �i�m
function x050103_OnTimer( sceneId, selfId )
	return
end

-- ����뿪���� �i�m
function x050103_OnLeaveArea( sceneId, selfId )
	return
end
