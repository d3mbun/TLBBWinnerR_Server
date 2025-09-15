--»î¶¯toÕ ğµ È±Ê¡½Å±¾

--½Å±¾ºÅ
x402042_g_ScriptId	= 402042

x402042_g_NotifyDay = --09Äê¿ª·ÅÈÕ
{
	20090103,
	20090131,
	20090228,
	20090404,
	20090502,
	20090606,
	20090704,
	20090801,
	20090905,
	20091003,
	20091031,
	20091205,
}

--**********************************
--½Å±¾Èë¿Úº¯Êı
--**********************************
function x402042_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )
	
	-- Cái này »î¶¯Ö»TÕi Ã¿ÔÂtoÕ ğµ µÚmµt ºÍµÚÈıcáiÖÜÁùM· ra ,
	local nToday = GetTime2Day();
	for i, item in x402042_g_NotifyDay do
		if item == nToday then
			--²ÎÊıË ği¬m÷: ³¡¾°ID,»î¶¯ID,Ê±¼ä¼ä¸ô,¹«¸æÀàĞÍ(¿ÉÒÔ²»´«,Ä¬ÈÏÆÕÍ¨¹«¸æÀàĞÍ)
			StartOneActivity( sceneId, actId, floor(60*1000), iNoticeType )	
		end
	end
	
end

--**********************************
--ĞÄÌøº¯Êı
--**********************************
function x402042_OnTimer( sceneId, actId, uTime )

	--¼ì²â»î¶¯Ğúng·ñ¹ıÆÚ
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		StopOneActivity( sceneId, actId )
	end

end
