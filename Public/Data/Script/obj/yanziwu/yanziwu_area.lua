-- 402261
-- ������ ���ͳ�������ű�

x402261_g_SceneId = 4
x402261_g_X = 70
x402261_g_Z = 120

--��ҽ���m�t c�i area ʱ����
function x402261_OnEnterArea( sceneId, selfId )
	CallScriptFunction((400900), "TransferFunc",sceneId, 
																							selfId, 
																							x402261_g_SceneId,
																							x402261_g_X,
																							x402261_g_Z)
end

--���T�i m�t c�i area ����m�t ��ʱ��û����ʱ����
function x402261_OnTimer( sceneId, selfId )
	-- �� gi�y,��T�i C�i n�y  area ͣ�������
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5 gi�y����δ����
	if StandingTime >= 5000 then
		x402261_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--����뿪m�t c�i area ʱ����
function x402261_OnLeaveArea( sceneId, selfId )
	
end

