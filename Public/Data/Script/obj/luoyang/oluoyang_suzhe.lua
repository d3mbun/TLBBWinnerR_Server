--LÕc Dß½ngNPC
--ËÕÕÞ
--ÆÕÍ¨

x000000_g_scriptId=000000

--**********************************

--ÊÂ¼þ½»»¥Èë¿Ú

--**********************************

function x000000_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
		AddText(sceneId,"Ðoan vß½ng là ngñ ð® cüa ðß½ng kim hoàng ðª, ðÑng ð¥u trong các hoàng thân. M£c dù nåm nay chï m¾i 15 tu±i, nhßng ðã tñ có khí ðµ khác thß¶ng")
		--AddText(sceneId,"Äã¿ÉÒÔÑ¡Ôñ½¨Á¢ÊôÓÚ×Ô¼ºtoÕ ðµ ÉÌÆÌ.")

		--AddNumText(sceneId,x000000_g_scriptId,"½¨Á¢×Ô¼ºtoÕ ðµ ÉÌµê",6,0)
		--AddNumText(sceneId,x000000_g_scriptId,"¹ÜÀí×Ô¼ºtoÕ ðµ ÉÌµê",6,1)
		--AddNumText(sceneId,x000000_g_scriptId,"²é¿´ËùÓÐÉÌµê",6,2)

		--AddNumText(sceneId,x000000_g_scriptId,"²é¿´Õý×¼±¸ÅÌ³ötoÕ ðµ µê",6,3)

		--AddNumText(sceneId,x000000_g_scriptId,"½¨Á¢¹ÒTÕi ³¡¾°ÉÏtoÕ ðµ Thành ph¯ ",6,6)
		--AddNumText(sceneId,x000000_g_scriptId,"É¾³ý¹ÒTÕi ³¡¾°ÉÏtoÕ ðµ Thành ph¯ ",6,7)

		--AddNumText(sceneId,x000000_g_scriptId,"½øÈë±¾°ïThành ph¯ 1",9,8)

	EndEvent(sceneId)

	DispatchEventList(sceneId,selfId,targetId)

end



--**********************************

--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî

--**********************************

function x000000_OnEventRequest( sceneId, selfId, targetId, eventId )

		--0.½¨Á¢×Ô¼ºtoÕ ðµ ÉÌµê->ÏÔÊ¾½¨µêÌõ¿î->ÓÉ¿Í»§¶ËÇëÇó½¨µê
		if	GetNumText()==0	then

			BeginEvent(sceneId)

				AddText(sceneId,"#{PS_OPEN_SHOP_NOTICE}")

			EndEvent(sceneId)

			DispatchMissionDemandInfo(sceneId,selfId,targetId,x000000_g_scriptId,0,1)


		--1.¹ÜÀí×Ô¼ºµêÆÌ
		elseif	GetNumText()==1	then

			--1.0Í¨¹ýµêÆÌÃûÀ´ÅÐ¶¨Ðúng·ñ´ËµêÒÑ¾­´ò¿ª
			strShop0Name = LuaFnGetShopName(sceneId, selfId, 0)
			strShop1Name = LuaFnGetShopName(sceneId, selfId, 1)

			--1.1Ã»µêÆÌÖ±½Ó·¢´íÎóÌáÊ¾
			if((strShop0Name == "")and(strShop1Name == "")) then
				BeginEvent(sceneId)

					strText = "Xin l²i, ngß½i hình nhß không có ti®m"

					AddText(sceneId,strText);

				EndEvent(sceneId)

				DispatchMissionTips(sceneId,selfId)

			--1.2ÓÐµêÆÌ¸ù¾Ý²»Í¬Çé¿ö²»Í¬´¦Àí
			else
				--1.2.1ÓÐÁ½cáiµêÆÌ,µÈ´ý½ømµt ²½Ñ¡Ôñ
				if((strShop0Name ~= "") and (strShop1Name ~= "")) then
						BeginEvent(sceneId)

							AddText(sceneId,"Hà hà, té ra trß·ng qu¥y t¾i r°i, xin höi các hÕ mu¯n t¾i xem gian ti®m nào?")

							AddNumText(sceneId,x000000_g_scriptId,"Ti®m 1  "..strShop0Name,-1,4)
							AddNumText(sceneId,x000000_g_scriptId,"Ti®m 2  "..strShop1Name,-1,5)

				EndEvent(sceneId)
						DispatchEventList(sceneId,selfId,targetId)

				--1.2.2Ö»ÓÐmµt cáiÖ±½Ó´ò¿ªCái này 
				elseif(strShop0Name ~= "") then
						LuaFnOpenPlayerShop(sceneId, selfId, targetId, 0)

				--1.2.3Ö»ÓÐmµt cáiÖ±½Ó´ò¿ªCái này 
				elseif(strShop1Name ~= "") then
						LuaFnOpenPlayerShop(sceneId, selfId, targetId, 1)
				end

			end

		--2.²ì¿´ËùÓÐÉÌµêtoÕ ðµ ÁÐ±í

		elseif	GetNumText()==2	then

			DispatchPlayerShopList( sceneId, selfId, targetId )

		--3.²ì¿´ËùÓÐÅÌ³öÉÌµêtoÕ ðµ ÁÐ±í
		elseif	GetNumText()==3	then

			DispatchPlayerShopSaleOutList( sceneId, selfId, targetId )

		--4.²ì¿´×Ô¼ºÉíÉÏtoÕ ðµ Ö¸¶¨ÉÌµê
		elseif	GetNumText()==4	then

			LuaFnOpenPlayerShop(sceneId, selfId, targetId, 0)

		--5.²ì¿´×Ô¼ºÉíÉÏtoÕ ðµ Ö¸¶¨ÉÌµê
		elseif	GetNumText()==5	then

			LuaFnOpenPlayerShop(sceneId, selfId, targetId, 1)
		end

		--6.
		if GetNumText() == 6 then
			CityApply(sceneId, selfId)
			--CityCreate(sceneId, selfId, 205)
			BeginUICommand(sceneId)
				UICommand_AddInt(sceneId,targetId) --µ÷ÓÃThành ph¯ Èë¿Ú×é½çÃæ
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

--¼ÌÐø

--**********************************

function x000000_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )

	ApplyPlayerShop( sceneId, selfId, targetId )

end

