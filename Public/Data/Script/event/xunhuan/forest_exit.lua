-- ����������Th�nh th�to� � ���� �i�m

x050104_g_ScriptId = 050104
x050104_g_ControlScript = 050101

x050104_g_Back_X = 250
x050104_g_Back_Z = 107

-- ��ҽ��봫�� �i�m
function x050104_OnEnterArea( sceneId, selfId )
	--CallScriptFunction( x050104_g_ControlScript, "Exit", sceneId, selfId )	
	--2007.12.6 by alan,��ֹ��Ӹ���to� � еi vi�n ������ �i�m����
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				-- ȡ �i�m������ڳ�����
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, oldsceneId,x050104_g_Back_X,x050104_g_Back_Z)
end

-- ���ͣ��T�i ���� �i�m
function x050104_OnTimer( sceneId, selfId )
	return
end

-- ����뿪���� �i�m
function x050104_OnLeaveArea( sceneId, selfId )
	return
end
