--»î¶¯toÕ ğµ È±Ê¡½Å±¾

--½Å±¾ºÅ
x402043_g_ScriptId	= 402043

--**********************************
--½Å±¾Èë¿Úº¯Êı
--**********************************
function x402043_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )
	
	-- Cái này »î¶¯Ö»TÕi Ã¿ÔÂtoÕ ğµ µÚmµt ºÍµÚÈıcáiÖÜÈÕM· ra ,
	local nToday = LuaFnGetDayOfThisMonth()
	if (nToday > 7 and nToday < 15) or (nToday > 21) then -- zchw
		return
	end

	--²ÎÊıË ği¬m÷: ³¡¾°ID,»î¶¯ID,Ê±¼ä¼ä¸ô,¹«¸æÀàĞÍ(¿ÉÒÔ²»´«,Ä¬ÈÏÆÕÍ¨¹«¸æÀàĞÍ)
	StartOneActivity( sceneId, actId, floor(60*1000), iNoticeType )
	
end

--**********************************
--ĞÄÌøº¯Êı
--**********************************
function x402043_OnTimer( sceneId, actId, uTime )

	--¼ì²â»î¶¯Ğúng·ñ¹ıÆÚ
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		StopOneActivity( sceneId, actId )
	end

end
