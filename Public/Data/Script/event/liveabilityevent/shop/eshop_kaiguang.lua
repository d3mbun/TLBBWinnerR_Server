--�̵�
--�����̵�
--Thi�u L�m ����

--�ű���
x701605_g_ScriptId = 701605

--�̵��
x701605_g_shoptableindex=51

--�̵�����
x701605_g_ShopName = "Mua ph߽ng th�c ch� t�o khai kho�ng"

--**********************************
--������ں���
--**********************************
function x701605_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	DispatchShopItem( sceneId, selfId,targetId, x701605_g_shoptableindex )
end

--**********************************
--�о��¼�
--**********************************
function x701605_OnEnumerate( sceneId, selfId, targetId )
	--�ж���ng����ng���ɵ���
	if GetMenPai(sceneId,selfId) == MP_SHAOLIN then
		AddNumText(sceneId,x701605_g_ScriptId,x701605_g_ShopName,7,-1)
    end
	return
end

--**********************************
--���Ti�p th�����
--**********************************
function x701605_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x701605_OnAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x701605_OnAbandon( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x701605_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--�����ng������ύ
--**********************************
function x701605_CheckSubmit( sceneId, selfId )
end

--**********************************
--�ύ
--**********************************
function x701605_OnSubmit( sceneId, selfId, targetId,selectRadioId )
end

--**********************************
--ɱ����������
--**********************************
function x701605_OnKillObject( sceneId, selfId, objdataId,objId)
end

--**********************************
--���������¼�
--**********************************
function x701605_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x701605_OnItemChanged( sceneId, selfId, itemdataId )
end
