--ǮׯNPC
--ĪѰ
--��ͨ

x181004_g_ScriptId	= 181004



--**********************************
--�¼��������
--**********************************
function x181004_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, "    K� tr�n nguy�n li�u, c�c lo�i �� T�o а, xin kh�ch quan l�a ch�n!" )
		-- AddNumText( sceneId, x181004_g_ScriptId, "Mua �� t�o �", 2, 1 )
		AddNumText( sceneId, x181004_g_ScriptId, "Gi�i thi�u Kim Nguy�n B�o", 11, 2 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x181004_OnEventRequest( sceneId, selfId, targetId, eventId )

	local	key	= GetNumText()
	
	if key == 1 then
	--�µ�Ԫ���̵�
		-- BeginUICommand( sceneId )
			-- UICommand_AddInt( sceneId, targetId )
			-- UICommand_AddInt( sceneId, 8)
			-- UICommand_AddInt( sceneId, 1 )
		-- EndUICommand( sceneId )
		-- DispatchUICommand( sceneId, selfId, 888902)
	elseif key == 2 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{INTRO_YUANBAO}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end

end

--**********************************
--չ���̵�
--**********************************
function x181004_OnOpenShop( sceneId, selfId, targetId, lstShop )

--	BeginEvent( sceneId )
--		for i = 1, getn( lstShop ) do
--			AddNumText( sceneId, x181004_g_ScriptId, lstShop[i].name, 7, lstShop[i].key )
--		end
--		AddNumText( sceneId, x181004_g_ScriptId, "������һҳ", -1, x181004_g_Key["bak"] )
--	EndEvent( sceneId )
--	DispatchEventList( sceneId, selfId, targetId )

end
