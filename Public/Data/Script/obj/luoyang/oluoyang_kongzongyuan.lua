--L�c D߽ngNPC
--����Ԩ
--��ͨ

x000124_g_ScriptId	= 000124

x000124_g_MisItemList = {	40004000,40004451,40004452,40004461,
		40004453,40004456,40004459,40004458,40004455,40004457,30505062,	
		40004465, 40004462, 40004463, 40004464,				--���Ϻ�«����ʯ����Ҷ�������� zchw						
}

--������
x000124_g_Key				=
{
		["do"]					= 100,	--X�c nh�n
		["undo"]				= 101,	--Hu� b�
}

--******************************************************
--�¼��������
--******************************************************
function x000124_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "  Ta l� ��i T�ng Di�n Th�nh c�ng, V�n th�nh nh�n Kh�ng T�n Uy�n. N�u c�c h� c� th�a ��o c� nhi�m v� chi�m t�n kh�ng gian tay n�i qu� gi� th� c� th� giao cho ta x�a b� �i. Nh�ng tr߾c khi x�a b� ��o c� c�c h� ph�i c�n nh�c cho k�, c� ph�i ch�c ch�n kh�ng c�n d�ng �n n�a" )
		AddNumText( sceneId, x000124_g_ScriptId, "Ta mu�n x�a ��o c� nhi�m v�", -1, x000124_g_Key["do"] )
		AddNumText( sceneId, x000124_g_ScriptId, "Ta mu�n x�a t�t c� m�i nhi�m v�", -1, 1000 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x000124_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key	= GetNumText()
	
	if key == 1000 then
		if GetMissionCount( sceneId, selfId ) <= 0 then
			BeginEvent( sceneId )
				AddText( sceneId, "  Tr�n ng߶i ng߽i c�n b�n kh�ng c� nhi�m v�!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			BeginEvent( sceneId )
				AddText( sceneId, "  X�a nhi�m v� s� x�a �i t�t c� m�i nhi�m v� tr�n ng߶i, c� ch�c ch�n l� s� x�a �i?" )
				AddNumText( sceneId, x000124_g_ScriptId, "Duy�t", -1, 1001 )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end
	end
	
	if key == 1001 then
	    local CanDel = x000124_CheckCanDelMission_OverTime( sceneId, selfId, targetId, eventId )
	    if CanDel ~= 1 then
			BeginEvent( sceneId )
				AddText( sceneId, "L�n tr߾c c�c h� t� b� nhi�m v� � ch� t�i h� �n nay ch�a �� 24h, b�y gi� v�n kh�ng th� gi�p c�c h�." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
				        
	        return
	    end
	    
		if IsHaveMission( sceneId, selfId, 1258 ) > 0 then --��������Ʒ����д�б����棬��Ȼ��ɾ��һ����ڶ�����ʱ��Ҳ��ɾһ�������顣doing 38427
			DelItem(sceneId, selfId, 40004454, 1)
		end
	  
		DelAllMission( sceneId, selfId )
	  
	  -- ��Ҫ��ɾ�������ͬʱɾ����������Ʒ
		for i, nItemId in x000124_g_MisItemList do
			-- ��������Ʒ������
			local nItemCount = GetItemCount(sceneId, selfId, nItemId)
			
			if nItemCount > 0  then
				DelItem(sceneId, selfId, nItemId, nItemCount)
			end
		
		end
	    
		Msg2Player( sceneId, selfId, "#r�� x�a th�nh c�ng t�t c� m�i nhi�m v�!", MSG2PLAYER_PARA )
		BeginEvent( sceneId )
			AddText( sceneId, "  �� x�a th�nh c�ng t�t c� m�i nhi�m v�!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	
	if key == x000124_g_Key["do"]	then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 42 )
	end
end

--******************************************************
--����������Ʒ
--��Client\Interface\MissionObjDel\MissionObjDel.lua����
--******************************************************
function x000124_OnDestroy( sceneId, selfId, posItem )
	if posItem < 0 then
		return
	end
	
	local idItem = LuaFnGetItemTableIndexByIndex( sceneId, selfId, posItem )
	
	if idItem == 40002109 then 
		
		local ret = DelMission( sceneId, selfId, 4021 )
		if ret > 0 then		
			SetCurTitle(sceneId, selfId,  0, 124)
			DeleteTitle( sceneId, selfId,  5)
			LuaFnDispatchAllTitle(sceneId, selfId)			
			SetMissionData(sceneId,selfId,MD_CAOYUN_HUAN,0)
			SetMissionData(sceneId,selfId,MD_CAOYUN_MONSTERTIMER,0)
			LuaFnCancelSpecificImpact(sceneId,selfId,113)
		end
	
	end
	EraseItem( sceneId, selfId, posItem )
	x000124_OnDestroyLaborDay( sceneId, selfId, idItem )
end

--******************************************************
--����������Ʒto� � ���⴦�� ��m�t �����ͻ
--���� 2008-04-17
--******************************************************
function x000124_OnDestroyLaborDay( sceneId, selfId, idItem )
	if(GlobalLaborDayActivityTable.PetCageCardID == idItem) then
		local hasImapct = LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, GlobalLaborDayActivityTable.PetCageDelayBuff)
		if ( hasImapct > 0 ) then
			LuaFnCancelSpecificImpact(sceneId, selfId, GlobalLaborDayActivityTable.PetCageDelayBuff)
		end
	end
end

function x000124_CheckCanDelMission_OverTime( sceneId, selfId, targetId, eventId )
    local DayTime = GetDayTime()
    local LastTime = GetMissionData( sceneId, selfId, MD_NPC_DELMISSION ) --ȡ���ϴη���ʱ��
    
    if DayTime > LastTime then
        SetMissionData( sceneId, selfId, MD_NPC_DELMISSION, DayTime )
        return 1
    end
    
    return -1
    
end