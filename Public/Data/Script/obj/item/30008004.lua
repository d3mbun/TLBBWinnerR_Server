-- 300052 
-- ��i T�y T�y �an
-- Sau khi s� d�ng c� th� mang t�t c� c�c �i�m s� �� ph�n ph�i bi�n th�nh ti�m n�ng.


-- �ű���
x300052_g_scriptId = 300052
x300052_g_ItemId = 30008004  -- ҩˮID

--**********************************
-- �¼��������
--**********************************
function x300052_OnDefaultEvent( sceneId, selfId )

	-- ��ҩϴ �i�m
	if GetNumText() == 1  then
		-- ���C�i n�y ����ng����ng�� �i�m����ϴ.
		local bCan = LuaFnIsCanWashPiont(sceneId, selfId, 5)
		
		if bCan == 1  then
			local ret = DelItem(sceneId, selfId, x300052_g_ItemId, 1)
			if ret == 1  then
				--LuaFnWashPoints(sceneId, selfId)

				CallScriptFunction(45000,"AddFirstPoint",sceneId,selfId,7413)

				BeginEvent(sceneId)
					AddText(sceneId, "#Y��i T�y T�y �an")
					AddText(sceneId, "  C�c h� mang #Yt�t c� thu�c t�nh �� ph�n ph�i#W bi�n th�nh �i�m d� ti�m n�ng.")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,-1)
			end

		else
			BeginEvent(sceneId)
				AddText(sceneId, "#Y��i T�y T�y �an")
				AddText(sceneId, "  T�t c� thu�c t�nh �u �� kh�ng c�n �i�m ph�n ph�i d�, kh�ng th� ti�n h�nh ch�nh �i�m.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,-1)

		end
		return
	end
	
	-- �����˳�ҩ
	if GetNumText() == 2  then
		-- �رս���
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
	
end

--**********************************
-- 
--**********************************
function x300052_IsSkillLikeScript( sceneId, selfId)
	return 0
end
