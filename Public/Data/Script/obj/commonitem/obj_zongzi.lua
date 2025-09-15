--µÀ¾ß: ÃÀÎ¶toÕ ðµ ôÕ×Ó<ID:30505196>
--½Å±¾ºÅ 335139

x335139_g_scriptId = 335139
x335139_g_ImpactId = 2965

--½±ÀøKinh nghi®m±í
x335139_g_Exp = {
	[10]=1516,[11]=1596,[12]=1672,[13]=1749,[14]=1829,
	[15]=1906,[16]=1983,[17]=2063,[18]=2140,[19]=2220,
	[20]=3002,[21]=3124,[22]=3250,[23]=3376,[24]=3502,
	[25]=3625,[26]=3751,[27]=3877,[28]=4003,[29]=4125,
	[30]=5137,[31]=5289,[32]=5441,[33]=5589,[34]=5742,
	[35]=5894,[36]=6046,[37]=6194,[38]=6346,[39]=6498,
	[40]=9700,[41]=9922,[42]=10139,[43]=10361,[44]=10583,
	[45]=10801,[46]=11022,[47]=11244,[48]=11462,[49]=11684,
	[50]=11905,[51]=12123,[52]=12345,[53]=12567,[54]=12789,
	[55]=13006,[56]=13228,[57]=13450,[58]=13667,[59]=13889,
	[60]=14111,[61]=14328,[62]=14550,[63]=14772,[64]=14990,
	[65]=15211,[66]=15433,[67]=15651,[68]=15873,[69]=16095,
	[70]=16316,[71]=16534,[72]=16756,[73]=16978,[74]=17195,
	[75]=17417,[76]=17639,[77]=17856,[78]=18078,[79]=18300,
	[80]=18517,[81]=18739,[82]=18961,[83]=19183,[84]=19401,
	[85]=19622,[86]=19844,[87]=20062,[88]=20284,[89]=20505,
	[90]=20723,[91]=20945,[92]=21167,[93]=21384,[94]=21606,
	[95]=21828,[96]=22045,[97]=22267,[98]=22489,[99]=22711,
	[100]=22928,[101]=23146,[102]=23368,[103]=23590,[104]=23807,
	[105]=24029,[106]=24251,[107]=24468,[108]=24690,[109]=24912,
	[110]=25129,[111]=25351,[112]=25573,[113]=25791,[114]=26013,
	[115]=26234,[116]=26452,[117]=26674,[118]=26896,[119]=27113,
	[120]=27335,[121]=27557,[122]=27774,[123]=27996,[124]=28218,
	[125]=28435,[126]=28657,[127]=28879,[128]=29101,[129]=29319,
	[130]=29540,[131]=29762,[132]=29980,[133]=30202,[134]=30423,
	[135]=30641,[136]=30863,[137]=31085,[138]=31302,[139]=31524,
	[140]=31746,[141]=31963,[142]=32185,[143]=32407,[144]=32625,
	[145]=32846,[146]=33068,[147]=33286,[148]=33508,[149]=33729,
	[150]=33947
	}

x335139_g_RadomList = {
	{rad = 50,   id = -1,			num = -1},--1Kinh nghi®m-
	{rad = 80,   id = 30505195,		num = 1},--ÃÀÎ¶toÕ ðµ ôÕ×Ó  
	{rad = 95,   id = 30505195,		num = 2},--
	{rad = 100,   id = 30505195,	num = 3}--
}
	
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x335139_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êý
end

--**********************************
--Cái này ÎïÆ·toÕ ðµ Ê¹ÓÃ¹ý³ÌÐúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ÐÐ¿ªÊ¼Ê±¼ì²âCái này º¯ÊýtoÕ ðµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ðµ ÀàËÆ¼¼ÄÜtoÕ ðµ Ö´ÐÐ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ðµ ÎïÆ·,¿ÉÒÔ¼ÌÐøÀàËÆ¼¼ÄÜtoÕ ðµ Ö´ÐÐ£»Tr· v«0: ºöÂÔºóÃætoÕ ðµ ²Ù×÷.
--**********************************
function x335139_IsSkillLikeScript( sceneId, selfId )
	return 1; --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓHuÖ böÐ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾ÝCái này º¯ÊýtoÕ ðµ Tr· v«ÖµXác nh§nÒÔºótoÕ ðµ Á÷³ÌÐúng·ñÖ´ÐÐ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ð§¹û,²»ÔÙÖ´ÐÐºóÐø²Ù×÷£»Tr· v«0: Ã»ÓÐ¼ì²âµ½Ïà¹ØÐ§¹û,¼ÌÐøÖ´ÐÐ.
--**********************************
function x335139_CancelImpacts( sceneId, selfId )
	return 0; --²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êý,²¢ÇÒÊ¼ÖÕTr· v«0.
end

--**********************************
--Ìõ¼þ¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ðµ Ê±¼ä ði¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾ÝCái này º¯ÊýtoÕ ðµ Tr· v«ÖµXác nh§nÒÔºótoÕ ðµ Á÷³ÌÐúng·ñÖ´ÐÐ.
--Tr· v«1: Ìõ¼þ¼ì²âÍ¨¹ý,¿ÉÒÔ¼ÌÐøÖ´ÐÐ£»Tr· v«0: Ìõ¼þ¼ì²âth¤t bÕi,ÖÐ¶ÏºóÐøÖ´ÐÐ.
--**********************************
function x335139_OnConditionCheck( sceneId, selfId )
	--Ð£ÑéÊ¹ÓÃtoÕ ðµ ÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then
		local strNotice = "#{ZXP_90511_2}"
		x335139_ShowNotice( sceneId, selfId, strNotice)
		return 0
	end

			
	return 1; --²»C¥n ÈÎºÎÌõ¼þ,²¢ÇÒÊ¼ÖÕTr· v«1.
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜÏûºÄtoÕ ðµ Ê±¼ä ði¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾ÝCái này º¯ÊýtoÕ ðµ Tr· v«ÖµXác nh§nÒÔºótoÕ ðµ Á÷³ÌÐúng·ñÖ´ÐÐ.
--Tr· v«1: ÏûºÄ´¦ÀíÍ¨¹ý,¿ÉÒÔ¼ÌÐøÖ´ÐÐ£»Tr· v«0: ÏûºÄ¼ì²âth¤t bÕi,ÖÐ¶ÏºóÐøÖ´ÐÐ.
--×¢Òâ: Õâ²»¹â¸ºÔðÏûºÄtoÕ ðµ ¼ì²âÒ²¸ºÔðÏûºÄtoÕ ðµ Ö´ÐÐ.
--**********************************
function x335139_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		local guid = LuaFnObjId2Guid(sceneId, selfId);
		ScriptGlobal_AuditGeneralLog(LUAAUDIT_USE_MWZONGZI, guid)	
		return 1;
	end

	return 0;
end

--**********************************
--Ö»»áÖ´ÐÐmµt ´ÎÈë¿Ú: 
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼þ¶¼Thöa mãntoÕ ðµ Ê±ºò),¶øÒýµ¼
--¼¼ÄÜÒ²»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¼¼ÄÜtoÕ ðµ mµt ¿ªÊ¼,ÏûºÄ³É¹¦Ö´ÐÐÖ®ºó).
--Tr· v«1: ´¦Àí³É¹¦£»Tr· v«0: ´¦Àíth¤t bÕi.
--×¢: ÕâÀïÐúng¼¼ÄÜÉúÐ§mµt ´ÎtoÕ ðµ Èë¿Ú
--**********************************
function x335139_OnActivateOnce( sceneId, selfId )
		
	--Ëæ»ú·Å³ö½±Àø
	local rdRlt = random(x335139_g_RadomList[getn(x335139_g_RadomList)].rad)
	local itemId = -1
	local itemIdx = -1
	local itemNum = -1
	local guid = LuaFnObjId2Guid(sceneId, selfId);
	for i = 1, getn(x335139_g_RadomList) do 
		if rdRlt <= x335139_g_RadomList[i].rad then
		  itemId = x335139_g_RadomList[i].id
		  itemNum = x335139_g_RadomList[i].num
		  itemIdx = i
		  break
		end
	end	
	if itemId == -1 then
		--·Å³öKinh nghi®m½±Àø
		local nLevel = GetLevel(sceneId,selfId)
		local nExp = x335139_g_Exp[nLevel]
		AddExp(sceneId,selfId,nExp)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x335139_g_ImpactId, 0)
		local log = format("exp:%d", nExp)
		ScriptGlobal_AuditGeneralLog(LUAAUDIT_MWZONGZI_PRIZE, guid, log);
		--x808125_MsgBox( sceneId, selfId, targetId, "#{ZXP_90511_6}" )
		return 1
	end

	BeginAddItem(sceneId)
		AddItem( sceneId,itemId,itemNum )
	ret = EndAddItem(sceneId,selfId)
	if ret <= 0 then
		local strNotice = "#{ZXP_90511_2}"
		x335139_ShowNotice( sceneId, selfId, strNotice)	
		return 1
	end
	-- Ç¿ÖÆ°ó¶¨	
	--LuaFnItemBind( sceneId, selfId, nBagIndex )
	
	AddItemListToHuman(sceneId,selfId)
	local msg = ""
	if itemNum == 1 then
		msg = "#{ZXP_90511_3}"
	elseif itemNum == 2 then
		msg = "#{ZXP_90511_4}"
	elseif itemNum == 3 then
		msg = "#{ZXP_90511_5}"
	end
	x335139_ShowNotice( sceneId, selfId, msg)
	
	
	local log = format("%d,%d", itemId,itemNum)
	ScriptGlobal_AuditGeneralLog(LUAAUDIT_MWZONGZI_PRIZE, guid, log);
	
	--ÌØÐ§
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x335139_g_ImpactId, 0)	
 
	return 1;
end

--**********************************
--Òýµ¼ÐÄÌø´¦ÀíÈë¿Ú: 
--Òýµ¼¼¼ÄÜ»áTÕi Ã¿´ÎÐÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌÐøÏÂ´ÎÐÄÌø£»0: ÖÐ¶ÏÒýµ¼.
--×¢: ÕâÀïÐúng¼¼ÄÜÉúÐ§mµt ´ÎtoÕ ðµ Èë¿Ú
--**********************************
function x335139_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ÐúngÒýµ¼ÐÔ½Å±¾, Ö»±£Áô¿Õº¯Êý.
end

function x335139_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end
