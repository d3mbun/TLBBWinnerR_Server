--���޷�ֳ(ȡ����)
--�ű��� (�ĳ���ȷ�ű���)

x800102_g_scriptId = 800102

function x800102_OnDefaultEvent( sceneId, selfId, targetId )

	--��ȡ��ҵ�ǰto� � ���޷�ֳ��Ϣ
	local checkRet	= LuaFnCheckPetProcreateTakeOut( sceneId, selfId )
	if checkRet == 1 then
		LuaFnPetProcreateTakeOut( sceneId, selfId )
	end

end

function x800102_OnEnumerate( sceneId, selfId, targetId )

	--(1)��ֳ������,��ʾ��ֳ����
	--		C�a ng߽i ����AAA��BBBto� � ����CCC��T�i ����to� � ��Ϸ,�ٹ�D ph�t,���ܴ��Ŷ������޻ص������.
	--(2)��ֳ�ɹ���,L�nh ������
	AddNumText( sceneId, x800102_g_scriptId, "Nh�n tr�n th� v�a sinh s�n", 6, x800102_g_scriptId )

end

--ȡ����ֳ���ޡ�Lybin Oct.24 2006��
--�˺�����T�i Server���յ�WGPetProcreateQuestTakeOutResult��Ϣ����,����ִ��
--���������޸�
--function x800102_OnTakeOut( sceneId, selfId )
--
--	local	checkRet	= LuaFnCheckPetProcreateTakeOut( sceneId, selfId )
--	if checkRet == 1 then
--		LuaFnPetProcreateTakeOut( sceneId, selfId )
--	end
--end
