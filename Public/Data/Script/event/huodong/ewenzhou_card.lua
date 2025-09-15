--�����
--������Ϸ�ƹ㿨Ƭ

x808069_g_ScriptId = 808069

function x808069_WenZhouCard(sceneId,selfId,targetId)
	--��ng���Ѿ�L�nh �������ƹ㽱��
	if GetMissionFlag( sceneId, selfId, MF_ActiveWenZhouCard ) == 1 then
		x808069_NotifyFailBox( sceneId, selfId, targetId, "    Ng߽i �� l�nh r�i, kh�ng th� l�nh ti�p." )
		return
	end
	
	--��ng�����20c�p
	--if GetLevel( sceneId, selfId ) < 20 then
	--	x808069_NotifyFailBox( sceneId, selfId, targetId, "    ����to� � ��c�p����20c�p������L�nh �����." )
	--	return
	--end
	
	--��鱳���ռ�
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then
		x808069_NotifyFailBox( sceneId, selfId, targetId, "    Th�c xin l�i, ng�i c�ng kh�ng �� kh�ng gian � th� lan, th�nh s�a sang l�i sau l�i �n l�nh." )
		return
	end

	--�����뿨�Ž���
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 2007 )		
end

--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x808069_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�о��¼�
--**********************************
function x808069_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId, x808069_g_ScriptId, "L�nh th��ng m� r�ng �n Ch�u", 1, 1 )
end

--**********************************
--������ں���
--**********************************
function x808069_OnDefaultEvent( sceneId, selfId, targetId )
	local TextNum = GetNumText()

	if TextNum == 1 then
		x808069_WenZhouCard( sceneId, selfId, targetId )
	end
end
