--½Å±¾ºÅ
x210250_g_ScriptId = 210250


x210250_g_Warning1 = "Tài khoän cüa các hÕ hi®n không ðång ký bäo lßu kinh nghi®m"
x210250_g_Warning2 = "Ði¬m kinh nghi®m ðßþc chuy¬n vào phòng lßu træ!"
x210250_g_Warning3 = "Th¶i gian online th¤p h½n 1 tiªng, các hÕ chßa th¬ nh§n ðßþc kinh nghi®m ðã lßu træ!"
x210250_g_Warning4 = "Hôm nay các hÕ ðã 3 l¥n nh§n ði¬m kinh nghi®m lßu træ, các hÕ không th¬ nh§n thêm!"

x210250_g_HuodongName = "Nh§n ði¬m kinh nghi®m lßu træ"




--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x210250_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	local bSuccess = LuaFnGetFromIncomePool( sceneId, selfId, 1, 3600, 7200, 10800 )
	if bSuccess == 1 then					--ÕÊºÅ²»ÊÜ·À³ÁÃÔÓ°Ïì
		BeginEvent(sceneId)
		AddText( sceneId, x210250_g_Warning1 )
		EndEvent( )
		DispatchEventList( sceneId, selfId, targetId )       
	elseif bSuccess == 2 then			--ÊÕÒæ³ØÎª¿Õ
		BeginEvent(sceneId)
		AddText( sceneId, x210250_g_Warning2 )
		EndEvent( )
		DispatchEventList( sceneId, selfId, targetId )   
	elseif bSuccess == 3 then			--TÕi ÏßÊ±¼äÐ¡ÓÚ1Ð¡Ê±,²» ði¬mLînh 
		BeginEvent(sceneId)
		AddText( sceneId, x210250_g_Warning3 )
		EndEvent( )
		DispatchEventList( sceneId, selfId, targetId )  
	elseif bSuccess == 4 then			--½ñÌìÒÑ¾­Lînh ¹ý3´Î,²» ði¬mÔÙ´ÎLînh ÁË
		BeginEvent(sceneId)
		AddText( sceneId, x210250_g_Warning4 )
		EndEvent( )
		DispatchEventList( sceneId, selfId, targetId )    
	elseif bSuccess == 0 then			--Lînh ³É¹¦
		--¹Ø±Õ½çÃæ
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	end
	
end



--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x210250_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x210250_g_ScriptId,x210250_g_HuodongName,1,-1);
end



--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x210250_CheckAccept( sceneId, selfId )

end

--**********************************
--Tiªp thø
--**********************************
function x210250_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x210250_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x210250_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x210250_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x210250_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210250_OnKillObject( sceneId, selfId, objdataId ,objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x210250_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210250_OnItemChanged( sceneId, selfId, itemdataId )
end


