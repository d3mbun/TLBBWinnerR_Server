--------------------------------------------
--Nguy®t LãoºùÂ«µÀ¾ß½Å±¾
--Created By ×ó´ºÎ°
--------------------------------------------

--½Å±¾ID
x335908_g_scriptId = 335908
-- ÊÕ¼¯Çé±¨ÈÎÎñºÅ
x335908_g_MissionId = 1144;

--³¡¾°ĞÅÏ¢±í
x335908_g_select_sceneId = 
{
	[1]=  {6, 	"Vô Lßşng S½n BÕch viên thÕch tr§n", 	53,264, },
	[2]=  {7, 	"Kiªm các Kiªm môn ği®p thúy",   	130,135, },
	[3]=  {8, 	"Ğôn Hoàng Hãn häi c¥u ph§t",			260,260, },
	[4]=  {5, 	"Kính h° Ng÷c ğái lâm phong",			39,261, },
	[5]=  {4, 	"Thái h° Vû tÕ ca ğài",			160,252, },
	[6]=  {3, 	"Tung s½n Giang s½n ğa ki«u",			275,85, },
	[7]=  {30, 	"Tây h° Nh¤t v÷ng h± bào",     170,235, },
	[8]=  {24, 	"Nhî häi Bách khä lßu tranh",     260,270, },
	[9]=  {18, 	"NhÕn Nam Phong ki«u t¸ch chiªu",     150,250, },
	[10]= {31, 	"Long Tuy«n Phi lßu trñc hÕ",     270,280, },
	[11]= {25, 	"Thß½ng S½n Tñ thüy niên hoa",     258,73, },
	[12]= {19, 	"NhÕn B¡c Bích l§p thiên nh§n",     283,179, },
	[13]= {32, 	"Võ Di Yên töa nh¸ ki«u",     54,182, },
	[14]= {26, 	"ThÕch Lâm Phong loan nh§p tø",     195,53, },
	[15]= {20, 	"Thäo Nguyên Lang Vß½ng thÕch tr§n",     143,254, },
	[16]= {33, 	"Mai Lînh Mai lînh ph§t quang",     284,82, },
	[17]= {27, 	"Ng÷c Khê Thanh mi nhß ğ§u",     268,116, },
	[18]= {21, 	"Liêu Tây Ngao bao tß½ng hµi",     277,117, },
	[19]= {34, 	"Nam Häi Thiên Nam nh¤t trø",     61,225, },
	[20]= {23,	"Hoàng Long Phü Thiên trì tuyªt cänh",   289,66, },
}

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x335908_OnDefaultEvent( sceneId, selfId, bagIndex )	
end

--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x335908_IsSkillLikeScript( sceneId, selfId)
	return 1
end

--**********************************
--Ö±½ÓHuÖ böĞ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
--**********************************
function x335908_CancelImpacts( sceneId, selfId )
	return 0;
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x335908_OnConditionCheck( sceneId, selfId )
	--Ğ£ÑéÊ¹ÓÃtoÕ ğµ ÎïÆ·
	if IsHaveMission(sceneId, selfId, x335908_g_MissionId) ==  1 then	
		if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
			return 0;
		end	
		local ret, msg = x335908_IsFitCondition(sceneId, selfId);
		if ret == 0 then
			x335908_MsgBox( sceneId, selfId, msg );
			return 0;
		end
		--pass
		return 1;
	end
	return 0;
end

--**********************************
--¾ÛÆø¼¼ÄÜ¿ªÊ¼»Øµ÷½Ó¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¿ªÊ¼toÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ´¦ÀíÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: th¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x335908_OnStartCharging( sceneId, selfId )	
	x335908_MsgBox(sceneId, selfId, "#{JZSJ_081119}");
	return 1;
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜÏûºÄtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÏûºÄ´¦ÀíÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: ÏûºÄ¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--×¢Òâ: Õâ²»¹â¸ºÔğÏûºÄtoÕ ğµ ¼ì²âÒ²¸ºÔğÏûºÄtoÕ ğµ Ö´ĞĞ.
--**********************************
function x335908_OnDeplete( sceneId, selfId )	
	return 1;
end

--**********************************
--Ö»»áÖ´ĞĞmµt ´ÎÈë¿Ú: 
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Thöa mãntoÕ ğµ Ê±ºò),¶øÒıµ¼
--¼¼ÄÜÒ²»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¼¼ÄÜtoÕ ğµ mµt ¿ªÊ¼,ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó).
--Tr· v«1: ´¦Àí³É¹¦£»Tr· v«0: ´¦Àíth¤t bÕi.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x335908_OnActivateOnce( sceneId, selfId )
	if IsHaveMission(sceneId, selfId, x335908_g_MissionId) == 1 then
		local misIndex = GetMissionIndexByID(sceneId, selfId, x335908_g_MissionId);
		local ringNum = GetMissionParam(sceneId, selfId, misIndex, 1) + 1;	
		SetMissionByIndex(sceneId, selfId, misIndex, 1, ringNum);  							--ÈÎÎñ»·Êı¼Ó1
		--Ö»C¥n ±£´æÇ°2cái´òÌ½¹ıtoÕ ğµ ³¡¾°ºÅ.ÈÎÎñµÚËÄÎ»×öÌØÊâÓÃÍ¾. x808010_g_StrForePart = 4
		if ringNum < 3 then
			SetMissionByIndex(sceneId, selfId, misIndex, ringNum+1, sceneId); 		--¸Ã³¡¾°ÒÑ´òÌ½¹ı	
		end		
		local msg = format("#{YHJZ_081007_35}Tiªn ğµ nhi®m vø: %d/3", ringNum);
		x335908_MsgBox(sceneId, selfId, msg);	 --ÊÕ¼¯³É¹¦,Ngß½i ğÕt ğßşc mµt Ğ©ÏÉLinhÖ®Æø.
		if ringNum >= 3 then 																										-- ÉèÖÃÈÎÎñÍê³É
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1);
			x335908_MsgBox(sceneId, selfId, "Hoàn t¤t nhi®m vø!");
		end
		return 1;
	end
	return 0;
end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú: 
--Òıµ¼¼¼ÄÜ»áTÕi Ã¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌĞøÏÂ´ÎĞÄÌø£»0: ÖĞ¶ÏÒıµ¼.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x335908_OnActivateEachTick( sceneId, selfId)
	return 1;
end

--**********************************
--ĞÅÏ¢ÌáÊ¾
--**********************************
function x335908_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
-- Ìõ¼ş¼ì²é 
-- ³É¹¦: 1  th¤t bÕi: 0
--**********************************
function x335908_IsFitCondition(sceneId, selfId)
 	--ÒÑÊÕ¼¯3´¦ÏÉÆø?
 	local misIndex = GetMissionIndexByID(sceneId, selfId, x335908_g_MissionId);
 	local ringNum = GetMissionParam(sceneId, selfId, misIndex, 1)
 	if ringNum >= 3 then
		return 0, "#{YHJZ_081007_31}" 		
 	end
 	--³¡¾°ÕıÈ·?
 	local param = {}; 	
 	param[1] = GetMissionParam(sceneId, selfId, misIndex, 5);
 	param[2] = GetMissionParam(sceneId, selfId, misIndex, 6);
 	param[3] = GetMissionParam(sceneId, selfId, misIndex, 7);
 	local bFlag = 0;
 	local index = 0;
 	for i=1, 3 do
 		if x335908_g_select_sceneId[param[i]+1][1] == sceneId then
 			index = param[i]+1;
 			bFlag = 1;
 			break
 		end
 	end 
 	if bFlag == 0 then
 		return 0, "#{YHJZ_081007_32}";
 	end
 	--ÒÑÊÕ¼¯¹ı?
 	for i=2, 3 do
 		if sceneId == GetMissionParam(sceneId, selfId, misIndex, i) then
 			return 0, "#{YHJZ_081007_33}";
 		end
 	end
 	--Î»ÖÃÕıÈ·?
 	local pos_x, pos_z = LuaFnGetWorldPos(sceneId, selfId);
 	local distance =
 	(x335908_g_select_sceneId[index][3]-pos_x) * (x335908_g_select_sceneId[index][3]-pos_x) + 
 	(x335908_g_select_sceneId[index][4]-pos_z) * (x335908_g_select_sceneId[index][4]-pos_z);	
 	if distance > 18 then
 		return 0, "Ngß½i cách ğ¸a ği¬m thu th§p quá xa!";
 	end
 	--·òÆŞ×é¶Ó?
 	--1.Ğúng·ñ×é¶Ó
	local teamId = GetTeamId(sceneId,selfId)
	if teamId<0 then
		return 0, "#{YHJZ_081007_34}";
	end	
	--2.Ğúng·ñÁ©ÈË
	if GetTeamSize(sceneId,selfId)~=2 then
		return 0, "#{YHJZ_081007_34}";
	end	
	--3.Ğúng·ñTÕi ¸½½ü
	if GetNearTeamCount(sceneId,selfId) ~= 2 then
		return 0, "#{YHJZ_081007_34}";
	end	
	--4.Ğúng·ñĞúng·òÆŞ
	local tid1 = GetNearTeamMember(sceneId,selfId,0)
	local tid2 = GetNearTeamMember(sceneId,selfId,1)
	if LuaFnIsMarried(sceneId,tid1)<=0 or LuaFnIsMarried(sceneId,tid2)<=0 then
		return 0, "#{YHJZ_081007_34}";
	else
		if LuaFnGetSpouseGUID(sceneId,tid1) ~= LuaFnGetGUID(sceneId,tid2) or LuaFnGetSpouseGUID(sceneId,tid2) ~= LuaFnGetGUID(sceneId,tid1) then
			return 0, "#{YHJZ_081007_34}";
		end
	end	
	-- OK
	return 1, "ok";
end
