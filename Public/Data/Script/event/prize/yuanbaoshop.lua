--�µ�Ԫ���̵�

x888902_g_scriptId = 888902
--Ԫ���̵��б� Ҫ��ͻ��˽����Ӧ
x888902_g_shoplist = {}
x888902_g_shoplist[1]	= {311, 312, 313, 314, 315, 316, 317, 318}				--������
x888902_g_shoplist[2]	= {149, 150, 178, 193}			--��ʯ�̳�,���"����ʯի--149",czf,2009.07.21
x888902_g_shoplist[3]	= {331, 332, 333, 135, 152, 195}			--�����̳�
x888902_g_shoplist[4]	= {136, 137, 144}				--�ϱ��ӻ�
x888902_g_shoplist[5]	= {351, 352, 353, 354, 355, 356, 357, 358}			--����㳡
x888902_g_shoplist[6]	= {190, 191, 192, 133} --{190, 191, 192, 133}				--�����˼�
x888902_g_shoplist[7]	= {146}						--�书�ؼ�
x888902_g_shoplist[8]	= {156, 157, 158, 159, 160, 161, 162, 163}	--����ͼ

-- x888902_g_shoplist[1]	= {188, 189, 197}				--������
-- x888902_g_shoplist[2]	= {149, 150, 198, 193}			--��ʯ�̳�,���"����ʯի--149",czf,2009.07.21 [178 ngoc 6]
-- x888902_g_shoplist[3]	= {194, 135, 152, 195}			--�����̳�
-- x888902_g_shoplist[4]	= {136, 137, 144}				--�ϱ��ӻ�
-- x888902_g_shoplist[5]	= {120, 181, 145, 182, 134, 208}			--����㳡
-- x888902_g_shoplist[6]	= {190, 191, 192, 133}				--�����˼�
-- x888902_g_shoplist[7]	= {146}						--�书�ؼ�
-- x888902_g_shoplist[8]	= {156, 157, 158, 159, 160, 161, 162, 163}	--����ͼ

--**********************************
-- ��������NPC�Ĺ���
-- op��������𣬱���1����Ԫ����ص������������
--**********************************
function x888902_CustomShop( sceneId, selfId, ShopID , Index )

	if ShopID == 1 then
		-- local StartDay = 20200321
		-- local LastDay = 20200323
		-- local CurDay = GetTime2Day()
		
		-- if CurDay == StartDay then
			-- if GetHour() <= 5 then
				-- x888902_NotifyFailTips(sceneId,selfId,"S� ki�n s� di�n ra sau b�o tr� h�ng ng�y!")
				-- return
			-- end
		-- end
		
		-- if CurDay < StartDay or CurDay > LastDay then
			-- x888902_NotifyFailTips(sceneId,selfId,"S� ki�n ch� di�n ra t� 2020-03-21 �n 2020-03-23.")
			-- return
		-- end
	
		-- if Index < 1 or Index > 3 then
			-- return
		-- end
	
		-- local nBuy = GetMissionData(sceneId,selfId,EVENT_PARAM2)
		
		-- if nBuy >= 3 then
			-- x888902_NotifyFailTips( sceneId, selfId, "M�i ng�y ch� c� th� mua 3 c�i Sinh Ti�u Th�nh Thi�p" )
			-- return
		-- end
		
		-- local ItemID = 30504189
		-- local ItemNum = 1
		-- local ItemPrice = 100
		
		-- if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
			-- x888902_NotifyFailTips( sceneId, selfId, "Kh�ng �� � tr�ng trong t�i ��o C�." )
			-- return
		-- end
		
		-- if YuanBao(sceneId,selfId,-1,3,0) < ItemPrice then
			-- x888902_NotifyFailTips(sceneId,selfId,"Kh�ng �� Nguy�n B�o.")
			-- return
		-- end
		
		-- YuanBao(sceneId,selfId,-1,2,ItemPrice)
		-- TryRecieveItem(sceneId,selfId,ItemID,1)
		
		-- nBuy = nBuy + 1;
		-- SetMissionData(sceneId,selfId,EVENT_PARAM2,nBuy)
		-- x888902_NotifyFailTips(sceneId,selfId,"C�c h� �� mua "..nBuy.."/3 c�i "..GetItemName(sceneId,ItemID)..".")
	end
end

function x888902_OpenYuanbaoShop( sceneId, selfId, targetId , shopA ,shopB )

	local bCheck = x888902_YuanbaoShopCheckOp(sceneId,selfId);
	
	if bCheck > 0 then
		if shopA > 0 and shopA < 9 and x888902_g_shoplist[shopA][shopB] ~= nil then
			--PrintStr(x888902_g_shoplist[shopA][shopB])
			if targetId == -1 then
				DispatchYuanbaoShopItem( sceneId, selfId, x888902_g_shoplist[shopA][shopB])
			else
				DispatchNpcYuanbaoShopItem( sceneId, selfId, targetId , x888902_g_shoplist[shopA][shopB])
			end
		end
	end
end

function x888902_YuanbaoShopCheckOp(sceneId,selfId)
	--�ظ�
	if sceneId == 77 then 
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:Trong иa Ph� kh�ng th� t�y ti�n s� d�ng c�ng n�ng", 0);
		return 0
	end
	--��Ӹ���
	local selfHasTeamFlag = LuaFnHasTeam(sceneId, selfId);
	if selfHasTeamFlag and selfHasTeamFlag == 1 then
		local teamFollowFlag = IsTeamFollow(sceneId,selfId);
		local teamLeaderFlag = LuaFnIsTeamLeader(sceneId,selfId);
		if not teamLeaderFlag or not teamFollowFlag then
			return 0
		end
		if teamFollowFlag ~= 0 and teamLeaderFlag ~= 1 then
			return 0
		end
	end
	--˫�����
	local selfHasDRideFlag = LuaFnGetDRideFlag(sceneId, selfId);
	if selfHasDRideFlag and selfHasDRideFlag == 1 then
		local selfIsDRideMountOwner = LuaFnIsDRideMountOwner(sceneId, selfId);
		if not selfIsDRideMountOwner or selfIsDRideMountOwner ~= 1 then
			--����˫�����״̬�����Ǳ����ģ�����������������
			return 0
		end
	end
	--15������
	local level = GetLevel(sceneId,selfId);
	if nil == level or level < 15 then
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:C�ng n�ng n�y ch� c� th� s� d�ng khi ��ng c�p c�a c�c h� l�n h�n ho�c b�ng 15 m�i c� th� s� d�ng", 0);
		return 0
	else
		return 1
	end
	return 0
end

function x888902_NotifyFailTips(sceneId,selfId,Tip)
	BeginEvent(sceneId)
		AddText(sceneId,Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end