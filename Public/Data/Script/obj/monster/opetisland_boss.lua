--ĞşÎäµºBOSS°ó¶¨

--½Å±¾±àºÅ
x501999_g_ScriptId	= 501999

--**********************************
--Monster Timer
--**********************************
function x501999_OnCharacterTimer( sceneId, objId, dataId, uTime )
	--È«Çò¹«¸æ
	local	nam_mob	= GetName( sceneId, objId )
	if nam_mob ~= nil then
		str	= format( "#cff99ccÁc thú trên#G Huy«n Vû Ğäo #G%s#cff99cc ğã xu¤t hi®n, xin các v¸ ğÕi hi®p mau chóng ğªn Huy«n Vû Ğäo thu phøc, tránh gây hÕi cho bách tính.", nam_mob )
		AddGlobalCountNews( sceneId, str )
	end

	--HuÖ böÊ±ÖÓ
	SetCharacterTimer( sceneId, objId, 0 )
end

--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x501999_OnDie( sceneId, objId, killerId )

	--È«Çò¹«¸æ
	local	nam_mob	= GetName( sceneId, objId )
	local	nam_ply	= GetName( sceneId, killerId )
	
	--É±ËÀ¹ÖÎïtoÕ ğµ Ğúng³èÎïÔmµt ñÈ¡ÆäÖ÷ÈËtoÕ ğµ Tên....
	local playerID = killerId
	local objType = GetCharacterType( sceneId, killerId )
	if objType == 3 then
		playerID = GetPetCreator( sceneId, killerId )
		nam_ply = GetName( sceneId, playerID )
	end
	
	--Èç¹ûÍæ¼Ò×é¶ÓÁËÔmµt ñÈ¡¶Ó³¤toÕ ğµ Tên....
	local leaderID = GetTeamLeader( sceneId, playerID )
	if leaderID ~= -1 then
		nam_ply = GetName( sceneId, leaderID )
	end
	
	if nam_mob ~= nil and nam_ply ~= nil then
		str	= format( "#{_INFOUSR%s}#cff99cc cùng ngß¶i trong ğµi ngû träi qua 1 tr§n chiªn gian kh±, #G%s#cff99cccu¯i cûng cûng b¸ ğánh bÕi.", nam_ply, nam_mob )
		AddGlobalCountNews( sceneId, str )
	end
	
end
