--Minh Gi�oNPC
--������
--��ͨ

 x011011_g_ScriptId=011011
--447	����: ��
--448	����: ������
--449	����: ����
--450	����: ��
--451	����: ���
--452	����: ��ţ
--453	����: ¹
--454	����: ��
--455	����: ����
--456	����: �׻�
--457	����: �������
--458	����: ������
--459	����: �����
--460	����: ��׷�
--461	����: ����ţ
--462	����: ��¹
--463	����: �׵�
--464	����: ����
--561	����: ʨ��
--562	����: ��ʨ

--**********************************
--�¼��������
--**********************************
function  x011011_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta c� th� d�y � t� Minh Gi�o n�ng l�c c��i s� t�.")
		if	GetMenPai( sceneId, selfId) == 1 then
			if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 561))	then
				AddNumText(sceneId, x011011_g_ScriptId,"H�c k� thu�t: S� T�",12,40)
			end
			if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 562))	then
				AddNumText(sceneId, x011011_g_ScriptId,"H�c k� thu�t: B�ch S�",12,60)
			end
			
			if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 1086))	then
				AddNumText(sceneId, x011011_g_ScriptId,"H�c k� thu�t: Li�t Di�m S�",12,80)
			end
		end
		AddNumText( sceneId, x011011_g_ScriptId, "Gi�i thi�u k� thu�t", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function  x011011_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_013}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	if GetNumText() == 40 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{XXQS_01}" )
			AddNumText(sceneId, x011011_g_ScriptId,"��ng",-1,0)
      AddNumText(sceneId, x011011_g_ScriptId,"Sai",-1,999)			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	if GetNumText() == 60 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{XXQS_02}" )
			AddNumText(sceneId, x011011_g_ScriptId,"��ng",-1,1)
		AddNumText(sceneId, x011011_g_ScriptId,"Sai",-1,999)			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	if GetNumText() == 80 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{MPZQ_xml_XX(02)}#{MPZQ_xml_XX(05)}" )
			AddText( sceneId, "#{MPZQ_xml_XX(03)}" )
			AddNumText(sceneId, x011011_g_ScriptId,"��ng",-1,2)
		AddNumText(sceneId, x011011_g_ScriptId,"Sai",-1,999)			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	if GetNumText() == 999 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
	
	local level = GetLevel( sceneId, selfId)
	local skill = GetNumText()
	if skill == 0 or skill == 1 or skill == 2 then
	  CallScriptFunction((210299), "OnDefaultEvent",sceneId, selfId,targetId, level, skill)
	end
end
