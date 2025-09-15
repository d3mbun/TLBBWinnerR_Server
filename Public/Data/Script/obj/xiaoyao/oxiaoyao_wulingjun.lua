--Ti�u DaoNPC
--�����
--��ͨ

 x014004_g_ScriptId=014004
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
--**********************************
--�¼��������
--**********************************
function  x014004_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta c� th� truy�n d�y cho � t� Ti�u Dao kh� n�ng �i�u khi�n Th�n L�c.")
		if	GetMenPai( sceneId, selfId) == 8 then
			if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 453))	then
				AddNumText(sceneId, x014004_g_ScriptId,"H�c k� thu�t: L�c",12,40)
			end
			if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 462))	then
				AddNumText(sceneId, x014004_g_ScriptId,"H�c k� thu�t: B�ch L�c",12,60)
			end
			if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 1091))	then
				AddNumText(sceneId, x014004_g_ScriptId,"H�c k� thu�t: Th�t Th�i L�c",12,80)
			end
		end
		AddNumText( sceneId, x014004_g_ScriptId, "Gi�i thi�u k� thu�t", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function  x014004_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_016}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
  
  if GetNumText() == 40 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{XXQS_09}" )
			AddNumText(sceneId, x014004_g_ScriptId,"H�c",-1,0)
		AddNumText(sceneId, x014004_g_ScriptId,"Kh�ng",-1,999)			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	if GetNumText() == 60 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{XXQS_10}" )
			AddNumText(sceneId, x014004_g_ScriptId,"H�c",-1,1)
		AddNumText(sceneId, x014004_g_ScriptId,"Kh�ng",-1,999)			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	if GetNumText() == 80 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{MPZQ_xml_XX(02)}#{MPZQ_xml_XX(12)}" )
			AddText( sceneId, "#{MPZQ_xml_XX(03)}" )
			AddNumText(sceneId, x014004_g_ScriptId,"H�c",-1,2)
		AddNumText(sceneId, x014004_g_ScriptId,"Kh�ng",-1,999)			
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
