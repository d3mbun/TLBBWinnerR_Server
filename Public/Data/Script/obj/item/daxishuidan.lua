-- 300042 
-- ��i T�y T�y �an
-- Sau khi s� d�ng c� th� mang t�t c� c�c �i�m s� �� ph�n ph�i bi�n th�nh ti�m n�ng.


-- �ű���
x300042_g_scriptId = 300042
x300042_g_ItemId = 30008004  -- ҩˮID

x300042_g_UseScriptId = 300052
--**********************************
-- �¼��������
--**********************************
function x300042_OnDefaultEvent( sceneId, selfId )
	BeginEvent(sceneId)
		AddText(sceneId, "#Y��i T�y T�y �an")
		AddText(sceneId, "  Sau khi s� d�ng c� th� mang t�t c� c�c �i�m s� �� ph�n ph�i bi�n th�nh ti�m n�ng.")
			AddNumText(sceneId, x300042_g_UseScriptId,"B�y gi� t�i h� mu�n ch�nh �i�m", 0, 1)
			AddNumText(sceneId, x300042_g_UseScriptId,"Sau n�y h�y t�nh", 0, 2)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
	
end

--**********************************
-- 
--**********************************
function x300042_IsSkillLikeScript( sceneId, selfId)
	return 0
end
