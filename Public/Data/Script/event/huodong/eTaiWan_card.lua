--�����
--���ۻ��

x808077_g_ScriptId						= 808077
x808077_g_SportsPrize_Active	= 0			--Ĭ�Ϲر�

x808077_g_ActiveStartTime			= 7168	--20070618


function x808077_SportsCard(sceneId,selfId,targetId)
	--��ng���Ѿ�L�nh ���������½���
	--if GetMissionFlag( sceneId, selfId, MF_ActiveJuCard ) == 1 then
	--	x808077_NotifyFailBox( sceneId, selfId, targetId, "    Ng߽i �� l�nh r�i, kh�ng th� l�nh ti�p." )
	--	return
	--end
	
	--��ng�����20c�p
	--if GetLevel( sceneId, selfId ) < 5 then
	--	x808077_NotifyFailBox( sceneId, selfId, targetId, "    ����to� � ��c�p����5c�p������L�nh �����." )
	--	return
	--end
	
	--��鱳���ռ�
	--local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	--if( FreeSpace < 1 ) then
	--	x808077_NotifyFailBox( sceneId, selfId, targetId, "    Th�c xin l�i, ng�i c�ng kh�ng �� kh�ng gian � th� lan, th�nh s�a sang l�i sau l�i �n l�nh." )
	--	return
	--end

	--�����뿨�Ž���
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 2007950 )		
end

--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x808077_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--���ʱ��
--**********************************
function x808077_CheckRightTime()
	--local DayTime = GetDayTime()
	--PrintNum(DayTime)
	--if DayTime < x808077_g_ActiveStartTime then
	--	x808077_g_SportsPrize_Active = 0
	--	return 0    --��ǰ�ǻʱ��
	--end

--if DayTime > x808077_g_ActiveEndTime then
--	x808077_g_SportsPrize_Active = 0
--	return 0    --�˺��Ѿ�����
--end

	x808077_g_SportsPrize_Active = 1
	return 1
end

--**********************************
--�о��¼�
--**********************************
function x808077_OnEnumerate( sceneId, selfId, targetId )
    x808077_CheckRightTime()
	  if 1 == x808077_g_SportsPrize_Active then
			AddNumText(sceneId, x808077_g_ScriptId, "#{CB_XUBAO_LINGQU_1}", 1, 1 )
    end
end

--**********************************
--������ں���
--**********************************
function x808077_OnDefaultEvent( sceneId, selfId, targetId )
	x808077_CheckRightTime()
	if 1 ~= x808077_g_SportsPrize_Active then
		return
	end

	local TextNum = GetNumText()

	if TextNum == 1 then
		x808077_SportsCard( sceneId, selfId, targetId )
	end
end
