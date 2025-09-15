--װ��ǿ��
--�ű���
x809262_g_ScriptId = 809262

x809262_g_QianghualuId = 30900045

x809262_g_QianghualuTime = 11
gem_index = 30900045
--װ��ǿ��UI 1002

--**********************************
--�о��¼�
--**********************************
function x809262_OnEnumerate( sceneId, selfId, targetId )

end


--**********************************
--װ��ǿ�����
--**********************************
function x809262_FinishEnhance( sceneId, selfId, itemidx1, itemidx2 )
	local ret = LuaFnIsItemLocked( sceneId, selfId, itemidx1 )
	
	if ret ~= 0 then
		BeginEvent(sceneId)
		AddText(sceneId,"Kh�ng d�ng ���c trang b� n�y");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	ret = LuaFnIsItemAvailable( sceneId, selfId, itemidx2 )
	if ret ~= 1 then
		BeginEvent(sceneId)
		--AddText(sceneId,"��ǿ�����������á�");
		AddText(sceneId,"C�n c߶ng h�a tinh hoa kh�ng th� d�ng.");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	equip_level = GetBagItemLevel( sceneId, selfId, itemidx1 )
	gem_index = LuaFnGetItemTableIndexByIndex( sceneId, selfId, itemidx2 )
	if equip_level < 40 then
	
		if gem_index ~= 30900005 then
			--�ͼ�ǿ������
			str	= format( "Mu�n c߶ng h�a trang b� c�n %s.", GetItemName( sceneId, 30900005 ) )
			BeginEvent(sceneId)
			AddText(sceneId,str);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
	else

		if gem_index ~= 30900006 and gem_index ~= x809262_g_QianghualuId then
			--�߼�ǿ������
			str	= format( "Mu�n c߶ng h�a trang b� c�n %s ho�c %s.", GetItemName( sceneId, 30900006 ), GetItemName( sceneId, x809262_g_QianghualuId ) )
			BeginEvent(sceneId)
			AddText(sceneId,str);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
	end

	--����Ƿ��ܹ�ǿ�� 
	ret, arg0 = LuaFnEquipEnhanceCheck( sceneId, selfId, itemidx1, itemidx2 )
	local text="Trang b� c߶ng h�a th�nh c�ng!"
	-- zchw
	equip_index = tonumber(LuaFnGetItemTableIndexByIndex( sceneId, selfId, itemidx1 )); 
	if (equip_index == 10420088) or (equip_index == 10420092) or (equip_index == 10420093) then --��¥����¥��
		if tonumber(gem_index) == 30900006 then --ǿ������
			bindStatus = tonumber(LuaFnGetItemBindStatus(sceneId, selfId, itemidx2));
			if bindStatus == 1 then --��
				text = "C߶ng h�a trang b� kh�ng th�nh c�ng! Do v�t ph�m c� th� b� kh�a.";
				BeginEvent(sceneId);
				AddText(sceneId,text);
				EndEvent(sceneId);
				DispatchMissionTips(sceneId,selfId);
				return
			end
		end
	end
	
	if ret == 0 then
		--ǿ�����ļ��ɹ�
		x809262_DoFinishEnhance( sceneId, selfId, itemidx1*1000+itemidx2)
		return
	end
	
	if ret == -1 then
		text="L�i kh�ng x�c �nh"
	end
	
	if ret == -2 then
		text="Kh�ng d�ng ���c trang b� n�y"
	end
	
	if ret == -3 then
		--text="ǿ�����������á�"
		text="C߶ng h�a tinh hoa kh�ng th� d�ng."
	end
	
	if ret == -4 then
		text="��ng c�p C߶ng h�a c�a trang b� n�y �� l�n nh�t"
	end

	if ret == -5 then
		text="C߶ng h�a trang b� c�n #{_EXCHG%d}, ng�n l��ng tr�n ng߶i c�c h� kh�ng ��." --zchw
		text=format( text, arg0 )
	end
	
	if ret == -7 then
		text="Trang b� n�y kh�ng C߶ng h�a ���c"
	end

	if ret == -6 then
		x809262_DoFinishEnhance( sceneId, selfId, itemidx1*1000+itemidx2)
		return
	end
	
	BeginEvent(sceneId)
	AddText(sceneId,text)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end

--**********************************
--װ��ǿ��
--**********************************
function x809262_DoFinishEnhance( sceneId, selfId, index )
	local itemidx1 = floor(index / 1000)
	local itemidx2 = mod(index , 1000)
	local text="C߶ng h�a trang b� th�nh c�ng!"

	--ǿ��
	-- local LuckySuccess	= {7500,6000,5000,4500,1500,2000,1000,0100,0050}
	local LuckySuccess	= {7500,7000,6500,6000,5500,5000,4500,4000,3500}
	local MoneyNeed 	= {100 ,115, 132, 151, 173, 199, 228, 261, 300}
	local CHLevel = LuaFnIsMarkOrEnhance(sceneId, selfId, itemidx1, 2)
	local Rand = random(1,10000)

	local ret  = 0;
	local arg0 = 0;
	if LuckySuccess[CHLevel+1] >= Rand then --Thanh Cong
		ret,arg0 = LuaFnEquipEnhance( sceneId, selfId, itemidx1, itemidx2 )
	else --That Bai
		LuaFnCostMoneyWithPriority(sceneId, selfId, MoneyNeed[CHLevel+1])
		ret = -6
	end
	
	if ret == 0 then
		if arg0 >= 2 then
			local	szTranItm1	= GetBagItemTransfer( sceneId, selfId, itemidx1 )
			local	szTranItm2	= GetBagItemTransfer( sceneId, selfId, itemidx2 )
			local	szMsg				= format( "#W#{_INFOUSR%s}#{EQ_1}#{_INFOMSG%s}#{EQ_2}%d#{EQ_3} #{_INFOMSG%s}#{EQ_4}",
														LuaFnGetName( sceneId, selfId ), szTranItm2, arg0, szTranItm1 )
			--���澫��С��5����ǿ������������
			if (arg0 >= 7) then
				-- AddGlobalCountNews( sceneId, szMsg )
			end
		end
		
		gem_index = LuaFnGetItemTableIndexByIndex( sceneId, selfId, itemidx2 )
		
		if x809262_g_QianghualuId == gem_index then
			local r, t = LuaFnEraseItemTimes( sceneId, selfId, itemidx2, x809262_g_QianghualuTime )
			--PrintNum(r);
			--PrintNum(t)
			
			BeginEvent(sceneId)
			--local str = "���ǿ��¶ʣ��ʹ�ô���%d"
			local	szMsg				= format( "S� l�n d�ng Thi�n cang c߶ng h�a l�: %d/%d",
														tonumber(t), tonumber(x809262_g_QianghualuTime) );
			AddText(sceneId,szMsg);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		else
			LuaFnEraseItem( sceneId, selfId, itemidx2 )
		end
		
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0);
	end

	if ret == -1 then
		text="L�i kh�ng x�c �nh"
	end
	
	if ret == -2 then
		text="Kh�ng d�ng ���c trang b� n�y"
	end
	
	if ret == -3 then
		text="C߶ng h�a tinh hoa kh�ng th� d�ng."
	end
	
	if ret == -4 then
		text="��ng c�p C߶ng h�a c�a trang b� n�y �� l�n nh�t"
	end

	if ret == -5 then
		text="C߶ng h�a trang b� c�n #{_MONEY%d}, ng�n l��ng tr�n ng߶i c�c h� kh�ng ��"
		text=format( text, arg0 )
	end

	if ret == -6 then
		text="��ng ti�c, c߶ng h�a th�t b�i"
		
		if x809262_g_QianghualuId == gem_index then
			local r, t = LuaFnEraseItemTimes( sceneId, selfId, itemidx2, x809262_g_QianghualuTime )
			--PrintNum(r);
			--PrintNum(t)
			
			BeginEvent(sceneId)
			local	szMsg				= format( "S� l�n d�ng Thi�n cang c߶ng h�a l�: %d/%d",
														tonumber(t), tonumber(x809262_g_QianghualuTime) );
			AddText(sceneId,szMsg);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
	
		else
			LuaFnEraseItem( sceneId, selfId, itemidx2 )
		end
		--LuaFnEraseItem( sceneId, selfId, itemidx2 )
	end

	BeginEvent(sceneId)
	AddText(sceneId,text);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end
