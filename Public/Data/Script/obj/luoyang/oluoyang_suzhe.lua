--L�c D߽ngNPC
--����
--��ͨ

x000000_g_scriptId=000000

--**********************************

--�¼��������

--**********************************

function x000000_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
		AddText(sceneId,"�oan v߽ng l� ng� � c�a �߽ng kim ho�ng �, ��ng �u trong c�c ho�ng th�n. M�c d� n�m nay ch� m�i 15 tu�i, nh�ng �� t� c� kh� � kh�c th߶ng")
		--AddText(sceneId,"�����ѡ���������Լ�to� � ����.")

		--AddNumText(sceneId,x000000_g_scriptId,"�����Լ�to� � �̵�",6,0)
		--AddNumText(sceneId,x000000_g_scriptId,"�����Լ�to� � �̵�",6,1)
		--AddNumText(sceneId,x000000_g_scriptId,"�鿴�����̵�",6,2)

		--AddNumText(sceneId,x000000_g_scriptId,"�鿴��׼���̳�to� � ��",6,3)

		--AddNumText(sceneId,x000000_g_scriptId,"������T�i ������to� � Th�nh ph� ",6,6)
		--AddNumText(sceneId,x000000_g_scriptId,"ɾ����T�i ������to� � Th�nh ph� ",6,7)

		--AddNumText(sceneId,x000000_g_scriptId,"���뱾��Th�nh ph� 1",9,8)

	EndEvent(sceneId)

	DispatchEventList(sceneId,selfId,targetId)

end



--**********************************

--�¼��б�ѡ��m�t ��

--**********************************

function x000000_OnEventRequest( sceneId, selfId, targetId, eventId )

		--0.�����Լ�to� � �̵�->��ʾ��������->�ɿͻ������󽨵�
		if	GetNumText()==0	then

			BeginEvent(sceneId)

				AddText(sceneId,"#{PS_OPEN_SHOP_NOTICE}")

			EndEvent(sceneId)

			DispatchMissionDemandInfo(sceneId,selfId,targetId,x000000_g_scriptId,0,1)


		--1.�����Լ�����
		elseif	GetNumText()==1	then

			--1.0ͨ�����������ж���ng��˵��Ѿ���
			strShop0Name = LuaFnGetShopName(sceneId, selfId, 0)
			strShop1Name = LuaFnGetShopName(sceneId, selfId, 1)

			--1.1û����ֱ�ӷ�������ʾ
			if((strShop0Name == "")and(strShop1Name == "")) then
				BeginEvent(sceneId)

					strText = "Xin l�i, ng߽i h�nh nh� kh�ng c� ti�m"

					AddText(sceneId,strText);

				EndEvent(sceneId)

				DispatchMissionTips(sceneId,selfId)

			--1.2�е��̸��ݲ�ͬ�����ͬ����
			else
				--1.2.1����c�i����,�ȴ���m�t ��ѡ��
				if((strShop0Name ~= "") and (strShop1Name ~= "")) then
						BeginEvent(sceneId)

							AddText(sceneId,"H� h�, t� ra tr߷ng qu�y t�i r�i, xin h�i c�c h� mu�n t�i xem gian ti�m n�o?")

							AddNumText(sceneId,x000000_g_scriptId,"Ti�m 1  "..strShop0Name,-1,4)
							AddNumText(sceneId,x000000_g_scriptId,"Ti�m 2  "..strShop1Name,-1,5)

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
		end

		--6.
		if GetNumText() == 6 then
			CityApply(sceneId, selfId)
			--CityCreate(sceneId, selfId, 205)
			BeginUICommand(sceneId)
				UICommand_AddInt(sceneId,targetId) --����Th�nh ph� ��������
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 101)

		--7.
		elseif GetNumText() == 7 then
			CityDelete(sceneId, selfId, 205, 0)

		--8.
		elseif GetNumText() == 8 then
			CityMoveTo(sceneId, selfId)
		end

end



--**********************************

--����

--**********************************

function x000000_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )

	ApplyPlayerShop( sceneId, selfId, targetId )

end

