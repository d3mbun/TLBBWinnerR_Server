--Tinh T�cNPC
--������
--��ͨ

--�ű���
x016006_g_ScriptId = 016006

x016006_g_xuanWuDaoId=400918 --[tx42913]

--������Ϣ(��������,SceneID,PosX,PosY,����ID)
x016006_g_mpInfo		= {}
x016006_g_mpInfo[0]	= { "Tinh T�c", 16,  96, 152, MP_XINGSU }
x016006_g_mpInfo[1]	= { "Ti�u Dao", 14,  67, 145, MP_XIAOYAO }
x016006_g_mpInfo[2]	= { "Thi�u L�m",  9,  95, 137, MP_SHAOLIN }
x016006_g_mpInfo[3]	= { "Thi�n S�n", 17,  95, 120, MP_TIANSHAN }
x016006_g_mpInfo[4]	= { "Thi�n Long", 13,  96, 120, MP_DALI }
x016006_g_mpInfo[5]	= { "Nga My", 15,  89, 144, MP_EMEI }
x016006_g_mpInfo[6]	= { "V� �ang", 12, 103, 140, MP_WUDANG }
x016006_g_mpInfo[7]	= { "Minh Gi�o", 11,  98, 167, MP_MINGJIAO }
x016006_g_mpInfo[8]	= { "C�i Bang", 10,  91, 116, MP_GAIBANG }



--**********************************
--�¼��������
--**********************************
function x016006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{OBJ_xingxiu_0002}")
		if	GetLevel( sceneId, selfId)>=10  then	
			AddNumText(sceneId,x016006_g_ScriptId,"L�c D߽ng",9,0)
			AddNumText(sceneId,x016006_g_ScriptId,"T� Ch�u",9,1)
			AddNumText( sceneId, x016006_g_ScriptId, "L�c D߽ng - C�u Ch�u - Th߽ng H�i", 9, 3 )
			AddNumText( sceneId, x016006_g_ScriptId, "T� Ch�u - Thi�t T߶ng Ph�", 9, 4 )
		end
		
		--add by WTT
		if	GetLevel( sceneId, selfId)>=20  then	
			AddNumText( sceneId, x016006_g_ScriptId, "Th�c h� C�ng Tr�n", 9, 6 )
		end
		
		if	GetLevel( sceneId, selfId)>=75  then	
			AddNumText( sceneId, x016006_g_ScriptId, "#{MPCSLL_80925_01}", 9, 5 )
		end
		AddNumText(sceneId,x016006_g_ScriptId,"��i L�",9,2)
		
		--[tx42913]
    CallScriptFunction( x016006_g_xuanWuDaoId, "OnEnumerate",sceneId, selfId, targetId )
		--[/tx42913]		
		
		AddNumText(sceneId,x016006_g_ScriptId,"Ъn ta �n nh�ng m�n ph�i kh�c",9,11)
		
		-- ����������ȥ��n Ho�ng��Tung S�n
		AddNumText( sceneId, x016006_g_ScriptId, "Ъn ��n Ho�ng v� Tung S�n?", 11, 2000 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x016006_OnEventRequest( sceneId, selfId, targetId, eventId )

------------------------------------------------------------------------------------------
--[tx42913]
	if eventId == x016006_g_xuanWuDaoId then --ȥ���䵺
		CallScriptFunction( x016006_g_xuanWuDaoId, "OnDefaultEvent",sceneId, selfId, targetId )
		return
	end
--[/tx42913]
	if GetNumText() == 2000 then		--
		BeginEvent( sceneId )
			AddText( sceneId, "#{GOTO_DUNHUANF_SONGSHAN}" ) 
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
		return
	end
  
    if  GetNumText() == 11 then
        
		BeginEvent(sceneId)
		    
		    for i=0, 8 do
				AddNumText( sceneId, x016006_g_ScriptId, "M�n ph�i - "..x016006_g_mpInfo[i][1], 9, i+12 )
			end			
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)	
		return 
    end
    
    num = GetNumText()

 	if num > 11 then
 		-- ������������ng����ng��113��BUFF
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 113) == 1   then
			BeginEvent( sceneId )
				AddText( sceneId, "  �ang l�m T�o v�n ho�c th߽ng nh�n th� kh�ng th� di chuy�n � ch� t�i h� ���c." ) 
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			
			return
 		end
 	
 	    i = num - 12
		CallScriptFunction( (400900), "TransferFuncFromNpc", sceneId, selfId, x016006_g_mpInfo[i][2], x016006_g_mpInfo[i][3], x016006_g_mpInfo[i][4] )
		return
	end
------------------------------------------------------------------------------------------ 
	if	GetNumText()==0	then
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 0,132,183, 10)
	elseif	GetNumText()==1	then
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 1,114,162, 10)
	elseif	GetNumText()==3	then
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 0,234,132, 10)
	elseif	GetNumText()==4	then
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 1,235,132, 10)
	elseif	GetNumText()==2	then
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 2,241,141)
	elseif  GetNumText()==5	then
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 186,288,136,75)
	end
	
	--add by WTT
	if GetNumText()== 6 then					--Th�c H� C� Tr�n		
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x016006_g_ScriptId);			
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShuHeGuZhen");
			UICommand_AddString(sceneId, "Th�c H� C� Tr�n l� n�i PK s� kh�ng b� s�t kh�. Xin ch� � an to�n. C�c h� c� x�c nh�n ti�n v�o kh�ng?");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end

end

--add by WTT
function x016006_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction((400900), "TransferFuncFromNpc", sceneId, selfId, 420, 200, 211, 20 );
	return
end
