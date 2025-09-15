--×¢Òâ: 

--ÎïÆ·¼¼ÄÜtoÕ ğµ Âß¼­Ö»ÄÜÊ¹ÓÃ»ù´¡¼¼ÄÜºÍ½Å±¾À´ÊµÏÖ

--½Å±¾ºÅ
x300020_g_ScriptId = 300020

--ÈÎÎñºÅ
x300020_g_MissionId = 1060

x300020_g_Impact = 213

x300020_g_TreasureAddress = {{scene=9,x1=84,x2=108,z1=64,z2=86},
						{scene=9,x1=122,x2=146,z1=132,z2=159},
						{scene=9,x1=89,x2=102,z1=110,z2=137},
						{scene=9,x1=54,x2=83,z1=52,z2=71}}

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x300020_OnDefaultEvent( sceneId, selfId, bagIndex )
--É¨Öã
end

--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x300020_IsSkillLikeScript( sceneId, selfId)
	return 1; --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓHuÖ böĞ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
--**********************************
function x300020_CancelImpacts( sceneId, selfId )
	return 0;
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x300020_OnConditionCheck( sceneId, selfId )
	local x,z = GetWorldPos( sceneId, selfId)
	local misIndex = GetMissionIndexByID(sceneId,selfId,x300020_g_MissionId)
	if	sceneId ~= x300020_g_TreasureAddress[1].scene  then
		Msg2Player( sceneId,selfId,"B¯i cänh này không th¬ tiªn hành d÷n d©p",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
		return 0
	elseif	IsHaveMission(sceneId,selfId,x300020_g_MissionId) > 0	 then
		if	GetMissionParam( sceneId, selfId, misIndex,4) == 1  then
			if	x>x300020_g_TreasureAddress[1].x1  and  x<x300020_g_TreasureAddress[1].x2  and  z>x300020_g_TreasureAddress[1].z1  and  z<x300020_g_TreasureAddress[1].z2  then
				if	GetMissionParam( sceneId, selfId, misIndex,0) >= 1  then
					Msg2Player( sceneId,selfId,"ĞÕi ği®n ğã ğßşc d÷n d©p sÕch s¨ r°i",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
					return 0
				else
					Msg2Player( sceneId,selfId,"Các hÕ b¡t ğ¥u d÷n d©p ğÕi ği®n...",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
					return 1
				end
			else
				Msg2Player( sceneId,selfId,"C¥n: ĞÕi ği®n",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
				return 0
			end
		elseif	GetMissionParam( sceneId, selfId, misIndex,4) == 2  then
			if  x>x300020_g_TreasureAddress[2].x1  and  x<x300020_g_TreasureAddress[2].x2  and  z>x300020_g_TreasureAddress[2].z1  and  z<x300020_g_TreasureAddress[2].z2  then
				if	GetMissionParam( sceneId, selfId, misIndex,0) >= 1  then
					Msg2Player( sceneId,selfId,"Tàng Kinh Các ğã ğßşc d÷n d©p sÕch s¨ r°i",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
					return 0
				else
					Msg2Player( sceneId,selfId,"Các hÕ b¡t ğ¥u d÷n d©p Tàng Kinh Các...",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
					return 1
				end
			else
				Msg2Player( sceneId,selfId,"C¥n:Tàng Kinh Các",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
				return 0
			end
		elseif	GetMissionParam( sceneId, selfId, misIndex,4) == 3  then
			if  x>x300020_g_TreasureAddress[3].x1  and  x<x300020_g_TreasureAddress[3].x2  and  z>x300020_g_TreasureAddress[3].z1  and  z<x300020_g_TreasureAddress[3].z2  then
				if	GetMissionParam( sceneId, selfId, misIndex,0) >=1  then
					Msg2Player( sceneId,selfId,"S½n Môn ğã ğßşc d÷n d©p sÕch s¨ r°i",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
					return 0
				else
					Msg2Player( sceneId,selfId,"Các hÕ b¡t ğ¥u d÷n d©p S½n Môn...",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
					return 1
				end
			else
				Msg2Player( sceneId,selfId,"C¥n: S½n Môn",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
				return 0
			end		
		elseif	GetMissionParam( sceneId, selfId, misIndex,4) == 4  then
			if  x>x300020_g_TreasureAddress[4].x1  and  x<x300020_g_TreasureAddress[4].x2  and  z>x300020_g_TreasureAddress[4].z1  and  z<x300020_g_TreasureAddress[4].z2  then
				if	GetMissionParam( sceneId, selfId, misIndex,0) >= 1  then
					Msg2Player( sceneId,selfId,"Tháp ğ°ng h° ğã ğßşc d÷n d©p sÕch s¨ r°i.",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
					return 0
				else
					Msg2Player( sceneId,selfId,"Các hÕ b¡t ğ¥u d÷n d©p tháp ğ°ng h°...",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
					return 1
				end
			else
				Msg2Player( sceneId,selfId,"C¥n: tháp ğ°ng h°",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
				return 0
			end
		end
	else
		return 0
	end
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜÏûºÄtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÏûºÄ´¦ÀíÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: ÏûºÄ¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--×¢Òâ: Õâ²»¹â¸ºÔğÏûºÄtoÕ ğµ ¼ì²âÒ²¸ºÔğÏûºÄtoÕ ğµ Ö´ĞĞ.
--**********************************
function x300020_OnDeplete( sceneId, selfId )
	return 1; --²»ÏûºÄ
end

--**********************************
--Ö»»áÖ´ĞĞmµt ´ÎÈë¿Ú: 
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Thöa mãntoÕ ğµ Ê±ºò),¶øÒıµ¼
--¼¼ÄÜÒ²»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¼¼ÄÜtoÕ ğµ mµt ¿ªÊ¼,ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó).
--Tr· v«1: ´¦Àí³É¹¦£»Tr· v«0: ´¦Àíth¤t bÕi.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x300020_OnActivateOnce( sceneId, selfId )
	local misIndex = GetMissionIndexByID(sceneId,selfId,x300020_g_MissionId)
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 5900, 0);
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	BeginEvent(sceneId)
		AddText(sceneId,"Quét d÷n xong, nhi®m vø ğã hoàn thành!")
	EndEvent( )
	DispatchMissionTips(sceneId,selfId)
	Msg2Player( sceneId,selfId,"D÷n dep sÕch s¨ r°i, nhi®m vø hoàn thành",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
	return 1;
end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú: 
--Òıµ¼¼¼ÄÜ»áTÕi Ã¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌĞøÏÂ´ÎĞÄÌø£»0: ÖĞ¶ÏÒıµ¼.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x300020_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ĞúngÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end
