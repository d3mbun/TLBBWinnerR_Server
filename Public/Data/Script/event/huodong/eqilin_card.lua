--�����
--VIP�����������

x808070_g_ScriptId = 808070
--x808070_g_QiLinPrize_Active = 0   --Ĭ�Ϲر�

--x808070_g_ActiveStartTime = 7154	 --20070604
--x808070_g_ActiveEndTime = 7171		 --20070621

function x808070_QiLinCard(sceneId,selfId,targetId)
	--��ng���Ѿ�L�nh ��VIP���뽱��
	--if GetMissionFlag( sceneId, selfId, MF_ActiveQiLinCard ) == 1 then
	--	x808070_NotifyFailBox( sceneId, selfId, targetId, "    Ng߽i �� l�nh r�i, kh�ng th� l�nh ti�p." )
	--	return
	--end
	
	--��ng�����20c�p
	--if GetLevel( sceneId, selfId ) < 20 then
	--	x808070_NotifyFailBox( sceneId, selfId, targetId, "    ����to� � ��c�p����20c�p������L�nh �����." )
	--	return
	--end
	
	--��鱳���ռ�
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then
		x808070_NotifyFailBox( sceneId, selfId, targetId, "    Th�c xin l�i, ng�i c�ng kh�ng �� kh�ng gian � th� lan, th�nh s�a sang l�i sau l�i �n l�nh." )
		return
	end

	--�����뿨�Ž���
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 2008 )		
end

--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x808070_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--���ʱ��
--**********************************
--function x808070_CheckRightTime()
--	local DayTime = GetDayTime()
--	--PrintNum(DayTime)
--	if DayTime < x808070_g_ActiveStartTime then
--		x808070_g_QiLinPrize_Active = 0
--		return 0    --��ǰ�ǻʱ��
--	end
--
--	if DayTime > x808070_g_ActiveEndTime then
--  	x808070_g_QiLinPrize_Active = 0
--  	return 0    --�˺��Ѿ�����
--	end
--
--	x808070_g_QiLinPrize_Active = 1
--	return 1
--end

--**********************************
--�о��¼�
--**********************************
function x808070_OnEnumerate( sceneId, selfId, targetId )
    --x808070_CheckRightTime()
	  --if 1 == x808070_g_QiLinPrize_Active then
			AddNumText(sceneId, x808070_g_ScriptId, "L�nh h�nh v�n tinh t߷ng", 1, 1 )
    --end
end

--**********************************
--������ں���
--**********************************
function x808070_OnDefaultEvent( sceneId, selfId, targetId )
	--x808070_CheckRightTime()
	--if 1 ~= x808070_g_QiLinPrize_Active then
	--	return
	--end

	local TextNum = GetNumText()

	if TextNum == 1 then
		x808070_QiLinCard( sceneId, selfId, targetId )
	end
end
