--�������NPC
--�ε���
--��ͨ

x050112_g_ScriptId	= 050112

--������
x050112_g_Key				=
{
		["zhu"]					= 100,	--����ɾ�����е�����
		["itm"]					= 101,	--����ɾ���������
		["do"]					= 102,	--ȷ��ɾ�����е�����
}

-- ��Ҫ��ɾ�����������ʱ��ͬʱɾ����������Ʒ���б�
x050112_g_MisItemList = {	40004000,40004451,40004452,40004461,
		40004453,40004456,40004459,40004458,40004455,40004457,30505062,											
}

x050112_g_YinMoZhuList = {	40004455,40004456,40004457,40004458,40004459											
}

--******************************************************
--�¼��������
--******************************************************
function x050112_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "  N�u c�c h� c� nhi�u ��o c� nhi�m v� chi�m �i kh�ng gian h�nh nang, c� th� giao cho ta ti�u h�y" )
		AddNumText( sceneId, x050112_g_ScriptId, "Ta mu�n x�a D�n Ma Ch�u", 6, x050112_g_Key["zhu"] )
		AddNumText( sceneId, x050112_g_ScriptId, "Ta mu�n x�a ��o c� nhi�m v�", 6, x050112_g_Key["itm"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x050112_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	local	key	= GetNumText()

	if key == x050112_g_Key["zhu"]	then
		local iHave = 0;
		for i, nItemId in x050112_g_YinMoZhuList do
			-- ��������Ʒ������
			local nItemCount = GetItemCount(sceneId, selfId, nItemId)
			
			if nItemCount > 0  then
				iHave = 1
			end
		end
		
		if (iHave == 0) then
			BeginEvent( sceneId )
				AddText( sceneId, "  Tr�n ng߶i c�c h� kh�ng c� D�n Ma Ch�u n�n kh�ng th� x�a!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			BeginEvent( sceneId )
				AddText( sceneId, "  X�a b� t�t c� D�n ma ch�u, c�c h� c� ch�c mu�n b�?" )
				AddNumText( sceneId, x050112_g_ScriptId, "X�c nh�n", 6, x050112_g_Key["do"] )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end
	elseif key == x050112_g_Key["itm"]	then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 42 )

	elseif key == x050112_g_Key["do"]	then
		for i, nItemId in x050112_g_YinMoZhuList do
			-- ��������Ʒ������
			local nItemCount = GetItemCount(sceneId, selfId, nItemId)
			
			if nItemCount > 0  then
				DelItem(sceneId, selfId, nItemId, nItemCount)
			end
		end
		BeginEvent( sceneId )
		AddText( sceneId, "  X�a b� t�t c� D�n Ma Ch�u th�nh c�ng!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
end

--******************************************************
--����������Ʒ
--��Client\Interface\MissionObjDel\MissionObjDel.lua����
--******************************************************
function x050112_OnDestroy( sceneId, selfId, posItem )
	if posItem < 0 then
		return
	end

	EraseItem( sceneId, selfId, posItem )
end
