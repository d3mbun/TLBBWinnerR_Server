--��Ϸ�Ż

--�ű���
x808005_g_ScriptId			= 808005
x808005_g_ScriptId_Ctrl	= 808006	--�ص��ű�

x808005_g_PrizeBase			= 8000		-- ��t ���c��to� � ���ʻ���
x808005_g_PrizeMoney		= 1000		--��Ǯ����
x808005_g_Prize0				= 10141041--����
x808005_g_Prize1				= 30308024--����
x808005_g_RoundMax			= 50			--m�t ���п���L�nh to� � �����

--������
x808005_g_Key	=
{
	["chg"]			= 100,		--�ύ����,�m�t �����
	["inf"]			= 101,		--����
}

--�ִ���
x808005_g_Str	=
{
	--������ת���ַ�to� � �ִ�
	["inf2"]		= "  #Wngo�i ra ch� c�n ��a ra tr�n th� b�o b�o l� ���c, c�n th�c �n Nhu� T� s� tu� ch�n m�t th� trong th�c �n ch� �nh c�c h� mang theo tr�n ng߶i .",
	["ful"]			= "  Th�t ng�i qu�, h�m nay � c�c h� t�m th�c �n v� tr�n th� nhi�u th� n�y, b�n t�i h� g�n nh� �� ��. Hoan ngh�nh l�n sau �n t�m t�i h�.",
	["bty1"]		= "  #W�a t� c�c h� cung c�p th�c �n cho tr�n th�, ��y l� m�t ch�t l�ng th�nh c�a t�i h�, xin c�c h� nh�n l�y.",
	["bty2"]		= "  #W�a t� c�c h� �� l�m nhi�u chuy�n v� t�i h�. � ��y c� m�t con voi v� m�t quy�n s�ch d�y c�c h� c�ch c��i voi, xin t�ng c�c h�. Voi n߾c ch�ng t�i r�t qu�, xin c�c h� h�y ch�m s�c n� t� t�. #r #GTr߾c khi c��i voi nh�t thi�t ph�i h�c ph߽ng ph�p c��i#W.",

	--����ת���ַ�to� � �ִ�
	["inf1"]		= "  #WTh� 2 v� th� 6 h�ng tu�n �em th�c �n v� tr�n th� b�o b�o �n t�m Nhu� T�. M�i l�n giao tr�n th� b�o b�o Nhu� T� c�ng l�y m�t lo�i trong c�c th�c �n c�c h� mang theo. M�i l�n giao m�t Tr�n th� v� m�t lo�i th�c �n s� nh�n ���c #{_MONEY"..x808005_g_PrizeMoney.."}, ngo�i ra c� x�c su�t nh�t �nh s� nh�n ���c Voi#G 2 ng߶i c��i #W.",
	["inf_pet"]	= "  #WTr�n th� b�o b�o Nhu� T� thu mua c�: #r#G%s#W.",
	["inf_itm"]	= "  #WNgo�i ra h�y nh�, khi mang tr�n th� b�o b�o �n nh� mang theo m�t lo�i th�c �n b�t k�, n�u kh�ng Nhu� T� s� t� ch�i nh�n tr�n th� b�o b�o. #r#WTh�c �n Nhu� T� c�n c�: #r#G%s#W.",
	["ned_pet"]	= "  #Wt�i h� ch� c�n nh�ng tr�n th� b�o b�o sau: #r#G%s#W.",
	["ned_itm"]	= "  #WTr�n th� c�c h� ��a cho t�i h� l� ��ng r�i, nh�ng t�i h� c�n c�n m�t lo�i th�c �n b�t k� sau: #r#G%s#W.",
	["msg_bty"]	= "#R#{_INFOUSR%s} mang tr�n th� b�o b�o v� th�c �n �n cho s� gi� �o�n xi�c � �ng ta xem, l�m ph�n th߷ng, ��a cho �ng ta #{_INFOUSR%s} m�t #{_INFOMSG%s} v� m�t quy�n s�ch k� n�ng c��i th�.",
}

--���޼�
x808005_g_Pet	=
{
	[1]	= { id = 3099, name = "T�ch D�ch B�o B�o " },
	[2]	= { id = 3129, name = "Ng�c Ng� B�o B�o " },
	[3]	= { id = 3109, name = "Bi�n B�c B�o B�o " },
	[4]	= { id = 3119, name = "�߶ng Lang B�o B�o " },
	[5]	= { id = 3139, name = "Mi�u Хu �ng B�o B�o " },
	[6]	= { id = 3149, name = "Ch�n B�o B�o " },
	[7]	= { id = 3159, name = "H� B�o B�o " },
	[8]	= { id = 3169, name = "D� Tr� B�o B�o " },
}

--��Ʒ��
x808005_g_Itm	=
{
	[1]	= { id = 30101064, name = "H�nh Nh�n T�" },
	[2]	= { id = 30101054, name = "B�nh khoai" },
	[3]	= { id = 30101065, name = "Thanh Minh Ba" },
	[4]	= { id = 30101055, name = "Nhu M� Cao" },
	[5]	= { id = 30101066, name = "Ba Ti�u Ham Ph�n" },
	[6]	= { id = 30101056, name = "H߽ng C� Th�i Bao" },
	[7]	= { id = 30101084, name = "Quan Thang Bao" },
	[8]	= { id = 30101074, name = "Ki�u Ch�p Ng� Phi�n" },
	[9]	= { id = 30101085, name = "L�p Thi�u H߽ng Loa" },
	[10]= { id = 30101075, name = "M� Ngh�a Th��ng Th�" },
	[11]= { id = 30101086, name = "Ph�n Ch�ng �p Nh�c" },
	[12]= { id = 30101076, name = "B�t Tr�n Thu�n K� Thang" },
}

--**********************************
--������ں���
--**********************************
function x808005_OnDefaultEvent( sceneId, selfId, targetId )

	--ѡ��ť
	local	key	= GetNumText()

	--�ύ���޺�ʳ��
	if key == x808005_g_Key["chg"] then
		if CallScriptFunction( x808005_g_ScriptId_Ctrl, "IsActivityDoing", sceneId ) == 1 then
			--�����޽���
			str_1	= format( "  #WT�i h� ch� c�n nh�ng tr�n th� b�o b�o sau: #r #G%s#W.", x808005_MyGetBuyList( 0 ) )
			str_2	= format( "  #Wv� nh�ng th�c �n sau: #r #G%s#W.", x808005_MyGetBuyList( 1 ) )
			BeginEvent( sceneId )
				AddText( sceneId, str_1 )
				AddText( sceneId, str_2 )
			EndEvent( sceneId )
			DispatchMissionDemandInfo( sceneId, selfId, targetId, x808005_g_ScriptId, -1, 2 )
		else
			x808005_MyNotifyTip( sceneId, selfId, "B�y gi� kh�ng ph�i l� th�i gian ho�t �ng!" )
		end

	--����
	elseif key == x808005_g_Key["inf"] then
		str_1	= format( x808005_g_Str["inf_pet"], x808005_MyGetBuyList( 0 ) )
		str_2	= format( x808005_g_Str["inf_itm"], x808005_MyGetBuyList( 1 ) )
		BeginEvent( sceneId )
			AddText( sceneId, x808005_g_Str["inf1"] )
			if str_1 ~= nil then
				AddText( sceneId, str_1 )
			end
			if str_2 ~= nil then
				AddText( sceneId, str_2 )
			end
			AddText( sceneId, x808005_g_Str["inf2"] )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end

end

--**********************************
--�о��¼�
--**********************************
function x808005_OnEnumerate( sceneId, selfId, targetId )

	if CallScriptFunction( x808005_g_ScriptId_Ctrl, "IsActivityDoing", sceneId ) == 1 then
		AddNumText( sceneId, x808005_g_ScriptId, "� ch� t�i h� c� tr�n th� b�o b�o c�c h� c�n.", 6, x808005_g_Key["chg"] )
	end
	AddNumText( sceneId, x808005_g_ScriptId, "C�c ho�t �ng c�a �o�n xi�c", 11, x808005_g_Key["inf"] )

end

--**********************************
--�����
--**********************************
function x808005_MyOnBounty( sceneId, selfId, targetId, indexitm, indexpet )

	local	num_chg	= 0
	local	num_bty	= 0
	
	--����to� � ��������
	--100000to� � ������ng��ǰ���to� � ����,С��100000to� � ����ngʱ��
	--begin modified by zhangguoxin 090207
	local iDayCount	= GetMissionData( sceneId, selfId, MD_CIRCUS_DAYCOUNT )
	if iDayCount == nil or iDayCount < 0 then
		iDayCount			= 0
	end
	local iTime			= iDayCount - floor( iDayCount/100000 ) * 100000
	--local iDayTime	= floor( iTime/100 )									--��m�t �ν����������to� � ʱ��(����)
	local iDayTime	= iTime																	--��m�t �ν����������to� � ʱ��(����)
	--local iQuaTime	= iTime - floor( iTime/100 ) * 100			--��m�t �ν����������to� � ʱ��(��)
	local iDayHuan	= floor( iDayCount/100000 )							--���������to� � S� l�n nhi�m v� 
	--local CurTime		= GetHourTime()													--��ǰʱ��
	--local CurDaytime= floor( CurTime/100 )									--��ǰʱ��(��)
	local CurDaytime = GetDayTime()														--��ǰʱ��(��)
	--local CurQuaTime = CurTime - floor( CurTime/100 ) * 100	--��ǰʱ��(��)
	
	--�ϴ�Ho�n t�t nhi�m v���ngͬm�t ����
	if CurDaytime == iDayTime then
		iDayHuan			= iDayHuan + 1
		--iQuarterTime	= CurQuaTime
	--�ϴ�Ho�n t�t nhi�m v���T�i ͬm�t ��,����
	else
		iDayTime			= CurDaytime
		iQuarterTime	= 0
		iDayHuan			= 0
	end
	if iDayHuan > x808005_g_RoundMax then
		x808005_MyMsgBox( sceneId, selfId, targetId, x808005_g_Str["ful"] )
		return 0
	else
		--iDayCount			= iDayHuan * 100000 + iDayTime * 100 + iQuarterTime
		iDayCount			= iDayHuan * 100000 + iDayTime;
	end
	--end modified by zhangguoxin 090207
	
	--ҪT�i ��֤���ޡ���Ʒ�ύ����ȷto� � ������,�ٽ�����m�t ɾ��
	if indexpet < 0 or indexpet >= 255 or LuaFnIsPetAvailable( sceneId, selfId, indexpet ) ~= 1 then
		x808005_MyNotifyTip( sceneId, selfId, "V� hi�u tr�n th�!" )
		return 0
	end
	if indexitm < 0 or indexitm >= 255 or LuaFnIsItemAvailable( sceneId, selfId, indexitm ) ~= 1 then
		x808005_MyNotifyTip( sceneId, selfId, "V� hi�u th�c �n!" )
		return 0
	end
	--�����ng����ng��������
	local	pet_id		= LuaFnGetPet_DataID( sceneId, selfId, indexpet )
	local	pet_ret		= 0
	local	pet_unt
	for i = 1, getn( x808005_g_Pet ) do
		pet_unt				= x808005_g_Pet[ i ]
		if pet_id == pet_unt.id then
			pet_ret			= 1
			break
		end
	end
	if pet_ret ~= 1 then
		str	= format( x808005_g_Str["ned_pet"], x808005_MyGetBuyList( 0 ) )
		x808005_MyMsgBox( sceneId, selfId, targetId, str )
		return 0
	end
	--�����ng����ng������Ʒ
	local	itm_id		= LuaFnGetItemTableIndexByIndex( sceneId, selfId, indexitm )
	local	itm_ret		= 0
	local	itm_unt
	for i = 1, getn( x808005_g_Itm ) do
		itm_unt				= x808005_g_Itm[ i ]
		if itm_id == itm_unt.id then
			itm_ret			= 1
			break
		end
	end
	if itm_ret ~= 1 then
		str	= format( x808005_g_Str["ned_itm"], x808005_MyGetBuyList( 1 ) )
		x808005_MyMsgBox( sceneId, selfId, targetId, str )
		return 0
	end

	--�����ύ
	if LuaFnDeletePet( sceneId, selfId, indexpet, 1 ) > 0 then
		x808005_MyNotifyTip( sceneId, selfId, "C�c h� ��a m�t con "..pet_unt.name.."." )
	else
		return 0
	end
	--��Ʒ�ύ
	if HaveItemInBag( sceneId, selfId, itm_id ) > 0 and
		LuaFnGetAvailableItemCount( sceneId, selfId, itm_id ) >= 1 and
		DelItem( sceneId, selfId, itm_id, 1 ) > 0 then
		x808005_MyNotifyTip( sceneId, selfId, "C�c h� ��a m�t lo�i "..itm_unt.name.."." )
	else
		return 0
	end

	if pet_ret == 1 and itm_ret == 1 then
		--�ɹ��m�t �m�t ��,����������
		num_chg			= CallScriptFunction( x808005_g_ScriptId_Ctrl, "OnSuccChange", sceneId )
		--Ǯ����
		AddMoney( sceneId, selfId, x808005_g_PrizeMoney )
		--�ɹ��ͳ�
		x808005_MyMsgBox( sceneId, selfId, targetId, x808005_g_Str["bty1"] )
		--�ɹ��ͳ������û���
		SetMissionData( sceneId, selfId, MD_CIRCUS_DAYCOUNT, iDayCount )
		--Add Log
		LogInfo			= format( "[CIRCUS]: x808005_MyOnBounty( sceneId=%d, GUID=%0X ), pet=%d, itm=%d, num_chg=%d, num_bty=%d, PRIZE_MONEY(%d)",
			sceneId,
			LuaFnObjId2Guid( sceneId, selfId ),
			pet_id, itm_id, num_chg, num_bty, x808005_g_PrizeMoney )
		MissionLog( sceneId, LogInfo )
	else
		return 0
	end

	--�����ʽ���
	if random( x808005_g_PrizeBase ) == 1 and LuaFnGetPropertyBagSpace( sceneId, selfId ) >= 2 then
		--�ɹ���m�t ��,����������
		num_bty			= CallScriptFunction( x808005_g_ScriptId_Ctrl, "OnSuccPrize", sceneId )
		if num_bty > 0 then
			local	idBag0	= LuaFnTryRecieveItem( sceneId, selfId, x808005_g_Prize0, 1 )	--����
			local	idBag1	= LuaFnTryRecieveItem( sceneId, selfId, x808005_g_Prize1, 1 )	--����
			local	szTran
			if idBag0 >= 0 and idBag1 >= 0 then
				szTran			= GetBagItemTransfer( sceneId, selfId, idBag0 )
				--�ɹ��ͳ�
				x808005_MyMsgBox( sceneId, selfId, targetId, x808005_g_Str["bty2"] )
				if szTran ~= nil then
					str				= format( x808005_g_Str["msg_bty"], GetName( sceneId, selfId ), GetName( sceneId, selfId ), szTran )
					x808005_MyGlobalNews( sceneId, str )
				end
				--Add Log
				LogInfo			= format( "[CIRCUS]: x808005_MyOnBounty( sceneId=%d, GUID=%0X ), pet=%d, itm=%d, num_chg=%d, num_bty=%d, PRIZE_ITEM(%d,%d)",
					sceneId,
					LuaFnObjId2Guid( sceneId, selfId ),
					pet_id, itm_id, num_chg, num_bty, x808005_g_Prize0, x808005_g_Prize1 )
				MissionLog( sceneId, LogInfo )
			end
		end
	end
	return 1

end

--**********************************
--����ύ���޺�to� � �ص�����
--**********************************
function x808005_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )

	if indexpet >= 255 then
		--����ֵTr� v�255��ʾ��,û�ύ����
		x808005_MyNotifyTip( sceneId, selfId, "H�y k�o tr�n th� v�o trong c�a s�!" )
	elseif index1 < 0 or index1 >= 255 then
		x808005_MyNotifyTip( sceneId, selfId, "H�y k�o th�c �n v�o � v�t ph�m �u ti�n!" )
	else
		x808005_MyOnBounty( sceneId, selfId, npcid, index1, indexpet )
	end

end

--**********************************
--��ȡ�չ��б�
--**********************************
function x808005_MyGetBuyList( type )

	local	str	= ""
	local	lst
	if type == 0 then
		lst			= x808005_g_Pet
	else
		lst			= x808005_g_Itm
	end

	for i = 1, getn( lst ) do
		if i ~= 1 then
			str		= str..", "
		end
		str		= str..lst[i].name
	end
	return str

end

--**********************************
--�Ի�����ʾ
--**********************************
function x808005_MyMsgBox( sceneId, selfId, targetId, str )

	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--��Ŀ��ʾ
--**********************************
function x808005_MyNotifyTip( sceneId, selfId, str )

	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--**********************************
--ȫ�򹫸�
--**********************************
function x808005_MyGlobalNews( sceneId, str )

	if str == nil then
		return
	end
	AddGlobalCountNews( sceneId, str )

end
