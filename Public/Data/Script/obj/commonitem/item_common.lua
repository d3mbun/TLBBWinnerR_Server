--ÎïÆ·¹«ÓÃ½Å±¾

x330000_g_scriptId = 330000;

--**********************************
--È¼·ÅÑÌ»¨toÕ ðµ Ê±ºòÍæ¼ÒÓÐ¼¸ÂÊ ðÕt ðßþcmµt ¿Å±¦Ê¯
--**********************************
x330000_g_yianHuaBaoshi_dropRate_cur = 25;		--Íæ¼ÒTÕi È¼·ÅÑÌ»¨toÕ ðµ Ê±ºò,ÓÐ2.5£¥toÕ ðµ ¼¸ÂÊ ðÕt ðßþcmµt ¿Å±¦Ê¯.
x330000_g_yianHuaBaoshi_dropRate_max = 1000;

x330000_g_yianHuaBaoshi_gems = {{gemId=50101001, rate=25},
							{gemId=50101002, rate=25},
							{gemId=50111001, rate=25},
							{gemId=50111002, rate=25}
						};

function x330000_YianhuaDuihuanBaoshi(sceneId, selfId)
	local randValue = random(x330000_g_yianHuaBaoshi_dropRate_max);
	if randValue <= x330000_g_yianHuaBaoshi_dropRate_cur then
		local gemTemp;
		local totalRate = 0;
		for _, gemTemp in x330000_g_yianHuaBaoshi_gems do
			totalRate = totalRate + gemTemp.rate;
		end
		
		local gemRandValue = random(totalRate);
		for _, gemTemp in x330000_g_yianHuaBaoshi_gems do
			if gemRandValue <= gemTemp.rate then
				BeginAddItem(sceneId);
				AddItem(sceneId, gemTemp.gemId, 1);
				ret = EndAddItem(sceneId, selfId);
				if ret > 0 then
					AddItemListToHuman(sceneId, selfId);
					
					-- ðÕt ðßþcÎïÆ·ÐÅÏ¢
	        local ItemInfo = GetItemTransfer(sceneId,selfId,0)

					local message;
					local randMessage = random(3);
					if randMessage == 1 then
						message = format("#W#{_INFOUSR%s}#cffffcc trong lúc b¡n pháo hoa, không c¦n th§n b¸ pháo hoa b¡n ra 1 viên #cB3DB35%s#cffffcc trúng vào m£t.", LuaFnGetName(sceneId, selfId), GetItemName(sceneId, gemTemp.gemId));
					elseif randMessage == 2 then
						message = format("#W#{_INFOUSR%s}#cffffcc ðã b¡n hªt pháo hoa nhßng trong lòng vçn chßa thöa mãn, trong lúc b½i xác pháo, b²ng nhiên phát hi®n 1 viên #cB3DB35%s#cffffcc. ", LuaFnGetName(sceneId, selfId), GetItemName(sceneId, gemTemp.gemId));
					else
						message = format("#W#{_INFOUSR%s}#cffffccphát hi®n 1 cái pháo hoa höng, chu¦n b¸ vÑt bö thì trong pháo hoa l°i ra 1 viên #cB3DB35%s#cffffcc. ", LuaFnGetName(sceneId, selfId), GetItemName(sceneId, gemTemp.gemId));
					end
					BroadMsgByChatPipe(sceneId, selfId, message, 4);
				end
				return
			end
			gemRandValue = gemRandValue - gemTemp.rate;
		end
	end
end
