-- ����������Th�nh th�to� � ���� �i�m

x050105_g_ScriptId = 050105
x050105_g_ControlScript = 050100

x050105_g_Back_X = 60
x050105_g_Back_Z = 161

-- ��ҽ��봫�� �i�m
function x050105_OnEnterArea( sceneId, selfId )
	--CallScriptFunction( x050105_g_ControlScript, "Exit", sceneId, selfId )	
	--2007.12.6 by alan,��ֹ��Ӹ���to� � еi vi�n ������ �i�m����
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				-- ȡ �i�m������ڳ�����
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, oldsceneId,x050105_g_Back_X,x050105_g_Back_Z)
end

-- ���ͣ��T�i ���� �i�m
function x050105_OnTimer( sceneId, selfId )
	return
end

-- ����뿪���� �i�m
function x050105_OnLeaveArea( sceneId, selfId )
	return
end
