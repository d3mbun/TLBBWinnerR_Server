--ËÀÍö³¡¾°NPC
--ÃÏÆÅ
--ÆÕÍ¨

x077001_g_scriptId=077001

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x077001_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ngß¶i trë tu±i, tÕm bi®t! TÕm bi®t tÑc là không g£p næa, v« r°i m÷i thÑ phäi c¦n th§n, ngß½i mu¯n ði ðâu?")
		
		if  GetLevel( sceneId, selfId)<10	then			
			AddNumText(sceneId,x077001_g_scriptId,"ÐÕi Lý",9,2)
		end
		
		if	GetLevel( sceneId, selfId)>=10	then			
			AddNumText(sceneId,x077001_g_scriptId,"LÕc Dß½ng",9,0)
			AddNumText(sceneId,x077001_g_scriptId,"Tô Châu",9,1)
			AddNumText(sceneId,x077001_g_scriptId,"ÐÕi Lý",9,2)		
		end
		
		if	GetLevel( sceneId, selfId)>=20	then
			AddNumText(sceneId,x077001_g_scriptId,"Thúc Hà C± Tr¤n",9,4)
		end
		
		if	GetLevel( sceneId, selfId)>=75	then
			AddNumText(sceneId,x077001_g_scriptId,"Lâu Lan",9,5)
		end
		
		AddNumText(sceneId,x077001_g_scriptId,"#{DFBZ_081016_01}",11,3)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x077001_OnEventRequest( sceneId, selfId, targetId, eventId )

	-- LÕc Dß½ng
	if	GetNumText()==0	then
		CallScriptFunction((400900), "TransferFunc", sceneId, selfId, 0,132,183, 10)
			
	-- Tô Châu
	elseif	GetNumText()==1	then
		CallScriptFunction((400900), "TransferFunc", sceneId, selfId, 1,114,162, 10)
	
	-- ÐÕi Lý
	elseif	GetNumText()==2	then
		CallScriptFunction((400900), "TransferFunc", sceneId, selfId, 2,160,164)

	-- Lâu Lan
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
	
	-- Thúc Hà C± Tr¤n
	if	GetNumText()==4	then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x077001_g_scriptId);			
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShuHeGuZhen");
			UICommand_AddString(sceneId, "Thúc Hà C± Tr¤n là n½i PK s¨ không b¸ sát khí. Xin chú ý an toàn. Các hÕ có xác nh§n tiªn vào không?");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end
	
end

--**********************************
--´«ËÍÖÁThúc Hà C± Tr¤n
--**********************************
function x077001_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction((400900), "TransferFuncFromNpc", sceneId, selfId, 420, 200, 211, 20 );
	return
end

