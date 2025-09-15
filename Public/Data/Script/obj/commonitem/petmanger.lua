--petmanger.lua
------------------------------------------------------------------------------------------
--m�t ����Ʒto� � Ĭ�Ͻű�
--����
--�ű���
x335805_g_ScriptId	= 335805

--Ч��to� � ID
x335805_g_Impact		= -1	--ʹ��m�t c�i�ض�to� � ��Ч���

--Ӧ�õ�Ԫ
x335805_g_UseMax		= 4
x335805_g_UseUnit		=
{
	[30509500]				= 1,	--����1c�p
	[30509501]				= 2,	--����2c�p
	[30509502]				= 3,	--����3c�p
	[30509503]				= 4,	--����4c�p
}

--**********************************
--�¼��������
--**********************************
function x335805_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x335805_IsSkillLikeScript( sceneId, selfId )
	return 1	 --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x335805_CancelImpacts( sceneId, selfId )
	return 0	 --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x335805_OnConditionCheck( sceneId, selfId )
	--������to� � λ��
	local	bagId			= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	local	numExtra	= x335805_g_UseUnit[ GetItemTableIndexByIndex( sceneId, selfId, bagId ) ]
	if numExtra == nil then
		return 0
	end

	--�����Ʒ��ng�����
	if LuaFnLockCheck( sceneId, selfId, bagId, 0 ) < 0 then
		x335805_MsgBox( sceneId, selfId, "V�t ph�m n�y �� b� kh�a!" )
		return 0
	end

	--У��ʹ��to� � ��Ʒ
	if( 1 ~= LuaFnVerifyUsedItem( sceneId, selfId ) ) then
		return 0
	end

	--�ж������T�i ʹ������to� � ���
	if GetPetNumExtra( sceneId, selfId ) >= x335805_g_UseMax then
		x335805_MsgBox( sceneId, selfId, "Kh�ng gian � Tr�n th� �� ��t th��ng h�n, kh�ng th� gia t�ng kh�ng gian." )
		return 0
	end
	
	--modify by xindefeng
	--modify by dun.liu 2008-04-11
	local curShouLanLevel = GetPetNumExtra( sceneId, selfId )
	if curShouLanLevel ~= (numExtra - 1) then
		local szMsg = format("Ng߽i �� s� d�ng th� lan c�p %d, n�u mu�n gia t�ng s� l��ng Tr�n th� mang theo, th�nh s� d�ng Th� lan c�p %d.", curShouLanLevel, curShouLanLevel+1)
		x335805_MsgBox( sceneId, selfId, szMsg)
		return 0
	end
	
	return 1
end

--**********************************
--���ļ�⼰�������: 
--H� th�ng��T�i ��������to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--ע��: �ⲻ�⸺������to� � ���Ҳ��������to� � ִ��.
--**********************************
function x335805_OnDeplete( sceneId, selfId )
--if( 0 < LuaFnDepletingUsedItem( sceneId, selfId ) ) then
--	return 1
--end
--return 0

	return 1
end

--**********************************
--ֻ��ִ��m�t �����: 
--������˲�����ܻ�T�i ������ɺ����C�i n�y �ӿ�(�����������Ҹ���������Th�a m�nto� � ʱ��),������
--����Ҳ��T�i ������ɺ����C�i n�y �ӿ�(����to� � m�t ��ʼ,���ĳɹ�ִ��֮��).
--Tr� v�1: ����ɹ���Tr� v�0: ����th�t b�i.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x335805_OnActivateOnce( sceneId, selfId )
	if( -1 ~= x335805_g_Impact ) then
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x335805_g_Impact, 0 )
	end

	local	nBagIndex	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	local	numExtra	= x335805_g_UseUnit[ GetItemTableIndexByIndex( sceneId, selfId, nBagIndex ) ]
	local	szTran		= GetBagItemTransfer( sceneId, selfId, nBagIndex )
	if numExtra ~= nil and EraseItem( sceneId, selfId, nBagIndex ) == 1 then
		if SetPetNumExtra( sceneId, selfId, numExtra ) == 1 then
			if numExtra == 1 then	--modify by xindefeng
				x335805_MsgBox( sceneId, selfId, "Kh�ng gian Tr�n th� mang theo gia t�ng l�n "..GetPetNumMax(sceneId, selfId)..", n�u mu�n gia t�ng th�m kh�ng gian c�n s� d�ng th� lan cao c�p h�n." )	--modify by xindefeng
				strMsg = format("#W#{_INFOUSR%s}#HS� d�ng #W#{_INFOMSG%s}#H, #Hc�i thi�n kh�ng gian tr�n th�, #Hkh� n�ng mang theo tr�n th� s� l��ng ��t t�i #W%d#H.", LuaFnGetName(sceneId, selfId), szTran, GetPetNumMax(sceneId, selfId))
			elseif numExtra == 2 then
				x335805_MsgBox( sceneId, selfId, "Kh�ng gian Tr�n th� mang theo gia t�ng l�n "..GetPetNumMax(sceneId, selfId)..", n�u mu�n gia t�ng th�m kh�ng gian c�n s� d�ng th� lan cao c�p h�n." )	--modify by xindefeng
				strMsg = format("#W#{_INFOUSR%s}#HS� d�ng #W#{_INFOMSG%s}#H, #Hc�i thi�n kh�ng gian tr�n th�, #Hkh� n�ng mang theo tr�n th� s� l��ng ��t t�i #W%d#H.", LuaFnGetName(sceneId, selfId), szTran, GetPetNumMax(sceneId, selfId))
			elseif numExtra == 3 then
				x335805_MsgBox( sceneId, selfId, "Kh�ng gian Tr�n th� mang theo gia t�ng l�n "..GetPetNumMax(sceneId, selfId)..", n�u mu�n gia t�ng th�m kh�ng gian c�n s� d�ng th� lan cao c�p h�n." )	--modify by xindefeng
				strMsg = format("#W#{_INFOUSR%s}#HS� d�ng #W#{_INFOMSG%s}#H, #Hc�i thi�n kh�ng gian tr�n th�, #Hkh� n�ng mang theo tr�n th� s� l��ng ��t t�i #W%d#H.", LuaFnGetName(sceneId, selfId), szTran, GetPetNumMax(sceneId, selfId))
			elseif numExtra == 4 then
				x335805_MsgBox( sceneId, selfId, "Kh�ng gian Tr�n th� mang theo gia t�ng l�n "..GetPetNumMax(sceneId, selfId)..", s� l߽ng kh�ng gian �� ��t �n th��ng h�n." )	--modify by xindefeng
				strMsg = format("#W#{_INFOUSR%s}#HS� d�ng #W#{_INFOMSG%s}#H, #Hc�i thi�n kh�ng gian tr�n th�, #Hkh� n�ng mang theo tr�n th� s� l��ng ��t t�i #W%d#H.", LuaFnGetName(sceneId, selfId), szTran, GetPetNumMax(sceneId, selfId))
			end
			-- AddGlobalCountNews( sceneId, strMsg )	--��H� th�ng����
		end
	end
	
	return 1
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x335805_OnActivateEachTick( sceneId, selfId )
	return 1	 --����ng�����Խű�, ֻ�����պ���.
end

--**********************************
--��Ϣ��ʾ
--**********************************
function x335805_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
