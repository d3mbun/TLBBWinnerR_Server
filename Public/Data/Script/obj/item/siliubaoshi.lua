--�������

-- �ű���
x889060_g_ScriptId	= 889060
x889060_g_ItemId = 30505150
x889060_g_BaoShiId = {
50501001,
50501002,
50502001,
50502002,
50502003,
50502004,
50502005,
50502006,
50502007,
50502008,
50503001,
50504002,
50511001,
50511002,
50513001,
50513002,
50513003,
50513004,
50601001,
50601002,
50602001,
50602002,
50602003,
50602004,
50602005,
50602006,
50602007,
50602008,
50603001,
50604002,
50611001,
50611002,
50613001,
50613002,
50613003,
50613004,
50601001,
50601002,
50602001,
50602002,
50602003,
50602004,
50602005,
50602006,
50602007,
50602008,
50603001,
50604002,
50611001,
50611002,
50613001,
50613002,
50613003,
50613004,
}

--**********************************
-- �¼��������
--**********************************
function x889060_OnDefaultEvent( sceneId, selfId)
	local	nam	= LuaFnGetName( sceneId, selfId )

	 --�������Ƿ���λ��
	if LuaFnGetMaterialBagSpace( sceneId, selfId ) < 3 then
	BeginEvent(sceneId)
		AddText(sceneId,"#b#Y��Ĳ��ϱ����ռ䲻�㣬�޷��һ���������")
	EndEvent( sceneId )
        DispatchEventList( sceneId, selfId, -1 )
	return
        end

	local ret = LuaFnDelAvailableItem(sceneId,selfId,x889060_g_ItemId,1)
	if ret < 1 then
	return
	end	

	local GiftId = 0   --��ʯID
	local strtext
	
	for i=0,2 do
	--������ű�ʯ
local odds = random(1,520)
	  if( odds >= 1 and odds <= 10 ) then
	    GiftId = x889060_g_BaoShiId[1]
	    strtext = "è��ʯ(4��)"
	  elseif( odds >= 11 and odds <= 20 ) then
	    GiftId = x889060_g_BaoShiId[2]
	    strtext = "����ʯ(4��)"
	  elseif( odds >= 21 and odds <= 30 ) then
	    GiftId = x889060_g_BaoShiId[3]
	    strtext = "�ƾ�ʯ(4��)"
	  elseif( odds >= 31 and odds <= 40 ) then
	    GiftId = x889060_g_BaoShiId[4]
	    strtext = "����ʯ(4��)"
	  elseif( odds >= 41 and odds <= 50 ) then
	    GiftId = x889060_g_BaoShiId[5]
	    strtext = "�쾧ʯ(4��)"
	  elseif( odds >= 51 and odds <= 60 ) then
	    GiftId = x889060_g_BaoShiId[6]
	    strtext = "�̾�ʯ(4��)"
	  elseif( odds >= 61 and odds <= 70 ) then
	    GiftId = x889060_g_BaoShiId[7]
	    strtext = "�����ƾ�ʯ(4��)"
	  elseif( odds >= 71 and odds <= 80 ) then
	    GiftId = x889060_g_BaoShiId[8]
	    strtext = "��������ʯ(4��)"
	  elseif( odds >= 81 and odds <= 90 ) then
	    GiftId = x889060_g_BaoShiId[9]
	    strtext = "�����쾧ʯ(4��)"
	  elseif( odds >= 91 and odds <= 100 ) then
	    GiftId = x889060_g_BaoShiId[10]
	    strtext = "�����̾�ʯ(4��)"
	  elseif( odds >= 101 and odds <= 110 ) then
	    GiftId = x889060_g_BaoShiId[11]
	    strtext = "����(4��)"
	  elseif( odds >= 111 and odds <= 120 ) then
	    GiftId = x889060_g_BaoShiId[12]
	    strtext = "��ʯ(4��)"
	  elseif( odds >= 121 and odds <= 130 ) then
	    GiftId = x889060_g_BaoShiId[13]
	    strtext = "ʯ��ʯ(4��)"
	  elseif( odds >= 131 and odds <= 140 ) then
	    GiftId = x889060_g_BaoShiId[14]
	    strtext = "�⾧ʯ(4��)"
	  elseif( odds >= 141 and odds <= 150 ) then
	    GiftId = x889060_g_BaoShiId[15]
	    strtext = "è��ʯ(7��)"
	  elseif( odds >= 151 and odds <= 160 ) then
	    GiftId = x889060_g_BaoShiId[16]
	    strtext = "����ʯ(7��)"
	  elseif( odds >= 161 and odds <= 170 ) then
	    GiftId = x889060_g_BaoShiId[17]
	    strtext = "����(7��)"
	  elseif( odds >= 171 and odds <= 180 ) then
	    GiftId = x889060_g_BaoShiId[18]
	    strtext = "��ʯ(7��)"
	  elseif( odds >= 181 and odds <= 190 ) then
	    GiftId = x889060_g_BaoShiId[19]
	    strtext = "��������(4��)"
	  elseif( odds >= 191 and odds <= 200 ) then
	    GiftId = x889060_g_BaoShiId[20]
	    strtext = "�����ʯ(4��)"
	  elseif( odds >= 201 and odds <= 210 ) then
	    GiftId = x889060_g_BaoShiId[21]
	    strtext = "�����¹�ʯ(4��)"
	  elseif( odds >= 211 and odds <= 220 ) then
	    GiftId = x889060_g_BaoShiId[22]
	    strtext = "��������(4��)"
	  elseif( odds >= 221 and odds <= 230 ) then
	    GiftId = x889060_g_BaoShiId[23]
	    strtext = "�Ʊ�ʯ(4��)"
	  elseif( odds >= 231 and odds <= 240 ) then
	    GiftId = x889060_g_BaoShiId[24]
	    strtext = "����ʯ(4��)"
	  elseif( odds >= 241 and odds <= 250 ) then
	    GiftId = x889060_g_BaoShiId[25]
	    strtext = "�̱�ʯ(4��)"
	  elseif( odds >= 251 and odds <= 260 ) then
	    GiftId = x889060_g_BaoShiId[26]
	    strtext = "�챦ʯ(4��)"
	  elseif( odds >= 261 and odds <= 270 ) then
	    GiftId = x889060_g_BaoShiId[27]
	    strtext = "�ڱ�ʯ(4��)"
	  elseif( odds >= 271 and odds <= 280 ) then
	    GiftId = x889060_g_BaoShiId[28]
	    strtext = "Ѫ��ʯ(4��)"
	  elseif( odds >= 281 and odds <= 290 ) then
	    GiftId = x889060_g_BaoShiId[29]
	    strtext = "��ĸ��(4��)"
	  elseif( odds >= 291 and odds <= 300 ) then
	    GiftId = x889060_g_BaoShiId[30]
	    strtext = "��ĸ��(5��)"
	  elseif( odds >= 301 and odds <= 310 ) then
	    GiftId = x889060_g_BaoShiId[31]
	    strtext = "��ʯ(5��)"
	  elseif( odds >= 311 and odds <= 320 ) then
	    GiftId = x889060_g_BaoShiId[32]
	    strtext = "����(5��)"
	  elseif( odds >= 321 and odds <= 330 ) then
	    GiftId = x889060_g_BaoShiId[33]
	    strtext = "ʯ��ʯ(5��)"
	  elseif( odds >= 331 and odds <= 340 ) then
	    GiftId = x889060_g_BaoShiId[34]
	    strtext = "è��ʯ(5��)"
	  elseif( odds >= 341 and odds <= 350 ) then
	    GiftId = x889060_g_BaoShiId[35]
	    strtext = "����ʯ(5��)"
	  elseif( odds >= 351 and odds <= 360 ) then
	    GiftId = x889060_g_BaoShiId[36]
	    strtext = "�ƾ�ʯ(5��)"
	  elseif( odds >= 361 and odds <= 370 ) then
	    GiftId = x889060_g_BaoShiId[37]
	    strtext = "����ʯ(5��)"
	  elseif( odds >= 371 and odds <= 380 ) then
	    GiftId = x889060_g_BaoShiId[38]
	    strtext = "�쾧ʯ(5��)"
	  elseif( odds >= 381 and odds <= 390 ) then
	    GiftId = x889060_g_BaoShiId[39]
	  elseif( odds >= 391 and odds <= 400 ) then
	    GiftId = x889060_g_BaoShiId[40]
	  elseif( odds >= 401 and odds <= 410 ) then
	    GiftId = x889060_g_BaoShiId[41]
	  elseif( odds >= 411 and odds <= 420 ) then
	    GiftId = x889060_g_BaoShiId[42]
	  elseif( odds >= 421 and odds <= 430 ) then
	    GiftId = x889060_g_BaoShiId[43]
	  elseif( odds >= 431 and odds <= 440 ) then
	    GiftId = x889060_g_BaoShiId[44]
	  elseif( odds >= 441 and odds <= 450 ) then
	    GiftId = x889060_g_BaoShiId[45]
	  elseif( odds >= 451 and odds <= 460 ) then
	    GiftId = x889060_g_BaoShiId[46]
	  elseif( odds >= 461 and odds <= 470 ) then
	    GiftId = x889060_g_BaoShiId[47]
	  elseif( odds >= 471 and odds <= 480 ) then
	    GiftId = x889060_g_BaoShiId[48]
	  elseif( odds >= 481 and odds <= 490 ) then
	    GiftId = x889060_g_BaoShiId[49]
	  elseif( odds >= 491 and odds <= 500 ) then
	    GiftId = x889060_g_BaoShiId[50]
	  elseif( odds >= 501 and odds <= 510 ) then
	    GiftId = x889060_g_BaoShiId[51]
	  elseif( odds >= 511 and odds <= 520 ) then
	    GiftId = x889060_g_BaoShiId[52]
	  elseif( odds >= 521 and odds <= 530 ) then
	    GiftId = x889060_g_BaoShiId[53]
	  elseif( odds >= 531 and odds <= 540 ) then
	    GiftId = x889060_g_BaoShiId[54]
	  end

           BeginAddItem(sceneId)
		   AddItem( sceneId, GiftId, 1 )
	local Ret = EndAddItem(sceneId,selfId)
	if Ret > 0 then
	    AddItemListToHuman(sceneId,selfId)
           --LuaFnDelAvailableItem(sceneId,selfId,x889060_g_ItemId,1)
           local szItemTransfer = GetItemTransfer(sceneId,selfId,0)
		local str = ""
		local rand = random(7)
				
		if rand == 1  then
			str = format("#Y#{_INFOUSR%s}#effc9d8#cf30768���߲���Ŀ�Ĺ�â������ԭ���Ǳ�ʯ�����в���һ��#gffff00#{_INFOMSG%s}#gff00f0��", GetName(sceneId,selfId), szItemTransfer)
		elseif rand == 2  then
			str = format("#Y#{_INFOUSR%s}#b#e6f00c7#c00ffff����������˵�еı��У�����ͷ����һ��#{_INFOMSG%s}#gff00f0��", GetName(sceneId,selfId), szItemTransfer)
		elseif rand == 3  then
			str = format("#gff00f0���򵥰�!! #Y#{_INFOUSR%s}#gff00f0��#G��ʯ����#gff00f0�󣬾�Ȼ��һ��#gffff00#{_INFOMSG%s}#gff00f0��װ��ȥ��װ������ֵ���Ǵ�����Ӳ��ٰ�!", GetName(sceneId,selfId), szItemTransfer)
		elseif rand == 4  then
			str = format("#Y#{_INFOUSR%s}#e0ba4b6#c00ffff���е�#G��ʯ����#gff00f0���Ҷ�����������ɫ��â����������һ��#gffff00#{_INFOMSG%s}#gff00f0�����������С�", GetName(sceneId,selfId), szItemTransfer)
		elseif rand == 5  then
			str = format("#Y#{_INFOUSR%s}#b#gffff00������˾��µ�#G��ʯ����#gff00f0�����Ͳ�ס�Ĵ򿪣�ǿ�����Ϣӿ�����õ�һ��#gffff00#{_INFOMSG%s}#gff00f0��", GetName(sceneId,selfId), szItemTransfer)
		elseif rand == 6  then
			str = format("#G��ʯ����#e0e8de5#Y��������ǹ��ڿ�����ϣ�#Y#{_INFOUSR%s}#gff00f0�����Ǹ�#gffff00#{_INFOMSG%s}#gff00f0���鲻�Խ�����һץ����Ȼ�������ġ�", GetName(sceneId,selfId), szItemTransfer)
		else
			str = format("#Y#{_INFOUSR%s}#gff00f0С��������#G��ʯ����#gff00f0���ݵ�����һ��#gffff00#{_INFOMSG%s}#gff00f0����ҫ�ޱȵı�ʯ͸�Ź�������¶�����ֵ�Ƿ�!", GetName(sceneId,selfId), szItemTransfer)
		end
				
		BroadMsgByChatPipe(sceneId, selfId, str, 4)
	end
		
end

		BeginEvent(sceneId)
		AddText(sceneId,"#b#Y��ϲ���ɹ����������ñ�ʯ3����")
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )
end

--**********************************
-- 
--**********************************
function x889060_IsSkillLikeScript( sceneId, selfId)
	return 0
end
