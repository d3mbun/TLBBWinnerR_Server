--��������NPC
--����
--��ͨ

x077001_g_scriptId=077001

--**********************************
--�¼��������
--**********************************
function x077001_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ng߶i tr� tu�i, t�m bi�t! T�m bi�t t�c l� kh�ng g�p n�a, v� r�i m�i th� ph�i c�n th�n, ng߽i mu�n �i ��u?")
		
		if  GetLevel( sceneId, selfId)<10	then			
			AddNumText(sceneId,x077001_g_scriptId,"��i L�",9,2)
		end
		
		if	GetLevel( sceneId, selfId)>=10	then			
			AddNumText(sceneId,x077001_g_scriptId,"L�c D߽ng",9,0)
			AddNumText(sceneId,x077001_g_scriptId,"T� Ch�u",9,1)
			AddNumText(sceneId,x077001_g_scriptId,"��i L�",9,2)		
		end
		
		if	GetLevel( sceneId, selfId)>=20	then
			AddNumText(sceneId,x077001_g_scriptId,"Th�c H� C� Tr�n",9,4)
		end
		
		if	GetLevel( sceneId, selfId)>=75	then
			AddNumText(sceneId,x077001_g_scriptId,"L�u Lan",9,5)
		end
		
		AddNumText(sceneId,x077001_g_scriptId,"#{DFBZ_081016_01}",11,3)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x077001_OnEventRequest( sceneId, selfId, targetId, eventId )

	-- L�c D߽ng
	if	GetNumText()==0	then
		CallScriptFunction((400900), "TransferFunc", sceneId, selfId, 0,132,183, 10)
			
	-- T� Ch�u
	elseif	GetNumText()==1	then
		CallScriptFunction((400900), "TransferFunc", sceneId, selfId, 1,114,162, 10)
	
	-- ��i L�
	elseif	GetNumText()==2	then
		CallScriptFunction((400900), "TransferFunc", sceneId, selfId, 2,160,164)

	-- L�u Lan
	elseif	GetNumText()==5	then
		CallScriptFunction((400900), "TransferFunc", sceneId, selfId, 186, 288, 136, 75 )
	end
	
	if	GetNumText()==3	then
		BeginEvent(sceneId)
			AddText( sceneId, "#{DFBZ_081016_02}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return	
	end
	
	-- Th�c H� C� Tr�n
	if	GetNumText()==4	then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x077001_g_scriptId);			
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShuHeGuZhen");
			UICommand_AddString(sceneId, "Th�c H� C� Tr�n l� n�i PK s� kh�ng b� s�t kh�. Xin ch� � an to�n. C�c h� c� x�c nh�n ti�n v�o kh�ng?");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end
	
end

--**********************************
--������Th�c H� C� Tr�n
--**********************************
function x077001_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction((400900), "TransferFuncFromNpc", sceneId, selfId, 420, 200, 211, 20 );
	return
end

