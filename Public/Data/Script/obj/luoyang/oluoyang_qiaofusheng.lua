--L�c D߽ngNPC
--�Ǹ�ʢ
--��ͨ
x000109_g_scriptId=000109

--**********************************
--�¼��������
--**********************************
function x000109_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  C� mu�n t� m� ti�m l�m �ng ch� kh�ng? Ta c� th� d�y ng߽i")
		AddNumText(sceneId,x000109_g_scriptId,"Ki�m tra t�t c� th߽ng �i�m",6,2)
		if IsShutout( sceneId, selfId, ONOFF_T_PSHOP ) == 0 then
			AddNumText(sceneId,x000109_g_scriptId,"X�y d�ng th߽ng �i�m ri�ng",6,0)
		else
			AddNumText(sceneId,x000109_g_scriptId,"H�y gian h�ng c�a ta",6,7)
		end
		AddNumText(sceneId,x000109_g_scriptId,"Qu�n l� th߽ng �i�m ri�ng",6,1)
		AddNumText(sceneId,x000109_g_scriptId,"Ki�m tra ti�m �ang chu�n b� b�n",6,3)
		AddNumText(sceneId,x000109_g_scriptId,"Gi�i thi�u th߽ng ti�m ng߶i ch�i",11,6)
		AddNumText(sceneId,x000109_g_scriptId,"Li�n quan thu mua nguy�n li�u",11,10)

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************

--�¼��б�ѡ��m�t ��

--**********************************

function x000109_OnEventRequest( sceneId, selfId, targetId, eventId )

--0.X�y d�ng th߽ng �i�m ri�ng->��ʾ��������->�ɿͻ������󽨵�
		if	GetNumText()==0	then

			BeginEvent(sceneId)

				AddText(sceneId,"#{PS_OPEN_SHOP_NOTICE}")

			EndEvent(sceneId)

			DispatchMissionDemandInfo(sceneId,selfId,targetId,x000109_g_scriptId,0,1)


		--1.�����Լ�����
		elseif	GetNumText()==1	then

			--1.0ͨ�����������ж���ng��˵��Ѿ���
			strShop0Name = LuaFnGetShopName(sceneId, selfId, 0)
			strShop1Name = LuaFnGetShopName(sceneId, selfId, 1)

			--1.1û����ֱ�ӷ�������ʾ
			if((strShop0Name == "")and(strShop1Name == "")) then
				BeginEvent(sceneId)

					strText = "Xin l�i, ng߽i h�nh nh� kh�ng c� ti�m!"

					AddText(sceneId,strText);

				EndEvent(sceneId)

				DispatchMissionTips(sceneId,selfId)

			--1.2�е��̸��ݲ�ͬ�����ͬ����
			else
				--1.2.1����c�i����,�ȴ���m�t ��ѡ��
				if((strShop0Name ~= "") and (strShop1Name ~= "")) then
						BeginEvent(sceneId)

							AddText(sceneId,"H� h�, t� ra tr߷ng qu�y t�i r�i, xin h�i c�c h� mu�n t�i xem gian ti�m n�o?")

							if GetPlayerShopFrezeType(sceneId, selfId, 0) == 1 then
								AddNumText(sceneId,x000109_g_scriptId,"#cCCCCCCTi�m 1  "..strShop0Name,-1,4)
							else
								AddNumText(sceneId,x000109_g_scriptId,"Ti�m 1  "..strShop0Name,-1,4)
							end
							if GetPlayerShopFrezeType(sceneId, selfId, 1) == 1 then
								AddNumText(sceneId,x000109_g_scriptId,"#cCCCCCCTi�m 2  "..strShop1Name,-1,5)
							else
								AddNumText(sceneId,x000109_g_scriptId,"Ti�m 2  "..strShop1Name,-1,5)
							end

						EndEvent(sceneId)
						DispatchEventList(sceneId,selfId,targetId)

				--1.2.2ֻ��m�t c�iֱ�Ӵ�C�i n�y 
				elseif(strShop0Name ~= "") then
						LuaFnOpenPlayerShop(sceneId, selfId, targetId, 0)

				--1.2.3ֻ��m�t c�iֱ�Ӵ�C�i n�y 
				elseif(strShop1Name ~= "") then
						LuaFnOpenPlayerShop(sceneId, selfId, targetId, 1)
				end

			end

		--2.�쿴�����̵�to� � �б�

		elseif	GetNumText()==2	then

			DispatchPlayerShopList( sceneId, selfId, targetId )

		--3.�쿴�����̳��̵�to� � �б�
		elseif	GetNumText()==3	then

			DispatchPlayerShopSaleOutList( sceneId, selfId, targetId )

		--4.�쿴�Լ�����to� � ָ���̵�
		elseif	GetNumText()==4	then

			LuaFnOpenPlayerShop(sceneId, selfId, targetId, 0)

		--5.�쿴�Լ�����to� � ָ���̵�
		elseif	GetNumText()==5	then

			LuaFnOpenPlayerShop(sceneId, selfId, targetId, 1)
		
		--6.Gi�i thi�u th߽ng ti�m ng߶i ch�i
		elseif	GetNumText()==6	then

			BeginEvent(sceneId)
				AddText( sceneId, "#{function_help_048}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)

		--7.�ٴ�ȷ����ng��ɾ��
		elseif	GetNumText()==7	then
	
			--1.0ͨ�����������ж���ng��˵��Ѿ���
			local strShop0Name = LuaFnGetShopName(sceneId, selfId, 0)
			local strShop1Name = LuaFnGetShopName(sceneId, selfId, 1)

			--1.1û����ֱ�ӷ�������ʾ
			if((strShop0Name == "")and(strShop1Name == "")) then
				BeginEvent(sceneId)
					strText = "C�c h� �t nh�t ph�i c� 1 gian h�ng"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
			else
				BeginEvent(sceneId)
					AddText(sceneId,"#{UnregisterShopHelp}")
					AddNumText(sceneId,x000109_g_scriptId,"Duy�t",6,8)
					AddNumText(sceneId,x000109_g_scriptId,"R�i kh�i",6,9)
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end

		--7.ɾ!
		elseif	GetNumText()==8	then
			local canErase = CanErasePlayerShop(sceneId, selfId)
			if(canErase == 1) then
				BeginUICommand(sceneId)
				EndUICommand(sceneId)
				DispatchUICommand(sceneId,selfId, 1000)
				ErasePlayerShop(sceneId,selfId)
				local msg = format("Ch�c m�ng c�c h� h�y b� th�nh c�ng, ti�n v�n trong gian h�ng �� ho�n tr� cho c�c h�, vui l�ng ki�m tra l�i.");
				BeginEvent( sceneId )
					AddText( sceneId, msg )
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, selfId )
				
				msg = format("���ѳɹ�ע��c�i���̵�");
				BeginEvent( sceneId )
					AddText( sceneId, msg )
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, selfId )
				
				BeginUICommand(sceneId)
				EndUICommand(sceneId)
				DispatchUICommand(sceneId,selfId, 19810222)
			elseif canErase == -1 then
				local msg = format("��to� � �̵��ѱ�����.");
				BeginEvent( sceneId )
					AddText( sceneId, msg )
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, selfId )
			else
				local msg = format("Th߽ng ti�m c�a c�c h� v�n c�n th߽ng ph�m, khi n�o tr�ng h�y �n t�m ta.");
				BeginEvent( sceneId )
					AddText( sceneId, msg )
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, selfId )
			end
		elseif	GetNumText()==9	then
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
		elseif	GetNumText()==10	then
			BeginEvent(sceneId)
				AddText( sceneId, "#{function_help_101}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end

end



--**********************************

--����

--**********************************

function x000109_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )

	ApplyPlayerShop( sceneId, selfId, targetId )

end
