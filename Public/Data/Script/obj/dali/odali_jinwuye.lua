--����NPC
--����ү
--Ԫ������
x002059_g_scriptId = 002059
x002059_g_shoptableindex = 210

--**********************************
--�¼��������
--**********************************
function x002059_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	
	if PlayerSex == 0 then
		PlayerSex = " c� n߽ng "
	else
		PlayerSex = " c�c h�"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  "..PlayerName..PlayerSex.." H�nh t�u giang h�, �߽ng nhi�n n�m �m ai to ng߶i �� l� ��i gia, nh�ng t�c ng� c�ng n�i, c� ti�n sai khi�n ���c qu� th�n, trong tay c� ti�n v�ng, vi�c kh� l�m c�ng th�nh ra �n gi�n")
		AddNumText( sceneId, x002059_g_scriptId, "Ng߽i mu�n mua KNB?", 7, 0 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x002059_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x002059_g_shoptableindex )
	end
end
