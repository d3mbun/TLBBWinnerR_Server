--�̵�
--�����̵�
--Ti�u Dao ���Ŷݼ�

--�ű���
x701611_g_ScriptId = 701611

--�̵��
x701611_g_shoptableindex=57

--�̵�����
x701611_g_ShopName = "Mua ph߽ng th�c k� m�n"

--**********************************
--������ں���
--**********************************
function x701611_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	DispatchShopItem( sceneId, selfId,targetId, x701611_g_shoptableindex )
end

--**********************************
--�о��¼�
--**********************************
function x701611_OnEnumerate( sceneId, selfId, targetId )
	--�ж���ng����ng���ɵ���
	if GetMenPai(sceneId,selfId) == MP_XIAOYAO then
		AddNumText(sceneId,x701611_g_ScriptId,x701611_g_ShopName,7,-1)
    end
	return
end

--**********************************
--���Ti�p th�����
--**********************************
function x701611_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x701611_OnAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x701611_OnAbandon( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x701611_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--�����ng������ύ
--**********************************
function x701611_CheckSubmit( sceneId, selfId )
end

--**********************************
--�ύ
--**********************************
function x701611_OnSubmit( sceneId, selfId, targetId,selectRadioId )
end

--**********************************
--ɱ����������
--**********************************
function x701611_OnKillObject( sceneId, selfId, objdataId,objId)
end

--**********************************
--���������¼�
--**********************************
function x701611_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x701611_OnItemChanged( sceneId, selfId, itemdataId )
end
