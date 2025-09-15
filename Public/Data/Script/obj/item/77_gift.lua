--===============================================
--	∆ﬂœ¶¿Ò∞¸ zhangqiang
--===============================================

x300103_g_scriptId = 300103

x300103_g_GiftInfo = {
			[30504119] = {	GiftList = {						--≤ ∑ÔÀ´∑…∫–
							{ItemId = 10141132, Count = 1},		--ª®≥µ
							{ItemId = 10124127, Count = 2},		-- ±◊∞
							{ItemId = 30309189, Count = 2}		--∏ﬂc§pªπÕØµ§
							},
					NeedLevel	=	10,
					OKStr		=	"#{QXLH_090806_2}",
					FailStr		=	"#{QXLH_090806_1}"
					},
			
			[30504120] = {	GiftList = {						--Linhœ¨mµt  i¨m∫–
							{ItemId = 10141115, Count = 1},		--±ÃÀÆΩæ¶ ﬁ
							{ItemId = 10124127, Count = 1},		-- ±◊∞
							{ItemId = 30309189, Count = 1}		--∏ﬂc§pªπÕØµ§
							},
					NeedLevel	=	10,
					OKStr		=	"#{QXLH_090806_4}",
					FailStr		=	"#{QXLH_090806_3}"
					}
			}
			
x300103_g_ImpactId = 49

--==================================
-- ¬º˛Ωªª•»Îø⁄
--==================================
function x300103_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ≤ªC•n C·i n‡y Ω”ø⁄,µ´“™±£¡Ùø’∫Ø ˝
end



function x300103_IsSkillLikeScript( sceneId, selfId)
	return 1; --C·i n‡y Ω≈±æC•n ∂Ø◊˜÷ß≥÷
end

--==================================
--÷±Ω”Hu÷ bˆ–ßπ˚: 
--HÆ thØngª·÷±Ω”µ˜”√C·i n‡y Ω”ø⁄,≤¢∏˘æ›C·i n‡y ∫Ø ˝to’ µ Tr∑ v´÷µX·c nhßn“‘∫Ûto’ µ ¡˜≥Ã–˙ng∑Ò÷¥––.
--Tr∑ v´1: “—æ≠Hu÷ bˆ∂‘”¶–ßπ˚,≤ª‘Ÿ÷¥––∫Û–¯≤Ÿ◊˜£ªTr∑ v´0: √ª”–ºÏ≤‚µΩœ‡πÿ–ßπ˚,ºÃ–¯÷¥––.
--==================================
function x300103_CancelImpacts( sceneId, selfId )
	return 0; --≤ªC•n C·i n‡y Ω”ø⁄,µ´“™±£¡Ùø’∫Ø ˝,≤¢«“ º÷’Tr∑ v´0.
end

--==================================
--“˝µº–ƒÃ¯¥¶¿Ì»Îø⁄: 
--Tr∑ v´: 1ºÃ–¯œ¬¥Œ–ƒÃ¯£ª0: ÷–∂œ“˝µº.
--==================================
function x300103_OnActivateEachTick( sceneId, selfId)
	return 1; 
end

--==================================
--÷ªª·÷¥––mµt ¥Œ»Îø⁄: 
--æ€∆¯∫ÕÀ≤∑¢ººƒ‹ª·T’i œ˚∫ƒÕÍ≥…∫Ûµ˜”√C·i n‡y Ω”ø⁄(æ€∆¯Ω· ¯≤¢«“∏˜÷÷Ãıº˛∂ºThˆa m„nto’ µ  ±∫Ú),∂¯“˝µº
--ººƒ‹“≤ª·T’i œ˚∫ƒÕÍ≥…∫Ûµ˜”√C·i n‡y Ω”ø⁄(ººƒ‹to’ µ mµt ø™ º,œ˚∫ƒ≥…π¶÷¥––÷Æ∫Û).
--Tr∑ v´1: ¥¶¿Ì≥…π¶£ªTr∑ v´0: ¥¶¿Ìth§t b’i.
--◊¢: ’‚¿Ô–˙ngººƒ‹…˙–ßmµt ¥Œto’ µ »Îø⁄
--==================================
function x300103_OnActivateOnce( sceneId, selfId )
	
	local ItemIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId )
	local GiftTable = x300103_g_GiftInfo[ItemIndex]
	if GiftTable == nil then
		return 0
	end

	BeginAddItem( sceneId )
	for i = 1, getn( GiftTable.GiftList ) do
		AddItem( sceneId, GiftTable.GiftList[i].ItemId, GiftTable.GiftList[i].Count )
	end
	local ret = EndAddItem( sceneId, selfId )
	
	if ret > 0 then
		AddItemListToHuman( sceneId, selfId )
	else
		return 0
	end
	x300103_NotifyTips( sceneId, selfId, GiftTable.OKStr )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x300103_g_ImpactId, 0 )

	local guid = LuaFnObjId2Guid( sceneId, selfId )
	if guid ~= nil then
		local szLog = format( "%d,%d", sceneId, ItemIndex )
		ScriptGlobal_AuditGeneralLog( LUAAUDIT_77_GIFTBAG, guid, szLog )
	end

	return 1
end

--==================================
--Ãıº˛ºÏ≤‚»Îø⁄
--==================================
function x300103_OnConditionCheck( sceneId, selfId )
	
	--–£—ÈItem–˙ng∑Ò”––ß
	if( 1 ~= LuaFnVerifyUsedItem( sceneId, selfId ) ) then
		return 0
	end

	--≤È’“¡–±Ì
	local ItemIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId )
	local GiftTable = x300103_g_GiftInfo[ItemIndex]
	if GiftTable == nil then
		return 0
	end
	
	--µ»c§pºÏ≤È
	local CurLevel = LuaFnGetLevel( sceneId, selfId )
	if CurLevel < GiftTable.NeedLevel then
		x300103_NotifyTips( sceneId, selfId, "#{GMTripperObj_Resource_Info_Level_Not_Enough}" )
		return 0
	end

	--ºÏ≤È±≥∞¸ø’º‰
	local nFreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	local nNeedSpace = 0
	for i = 1, getn( GiftTable.GiftList ) do
		nNeedSpace = nNeedSpace + GiftTable.GiftList[i].Count
	end
	nNeedSpace = nNeedSpace - 1		--¿Ò∞¸…æ»•∫Ûª·ø’≥ˆmµt ∏Ò,À˘“‘’‚¿Ôºı1
	if nFreeSpace < nNeedSpace then
		x300103_NotifyTips( sceneId, selfId, GiftTable.FailStr )
		return 0
	end

	return 1
end

--==================================
--œ˚∫ƒºÏ≤‚º∞¥¶¿Ì»Îø⁄: 
--==================================
function x300103_OnDeplete( sceneId, selfId )
	
	if( 0 < LuaFnDepletingUsedItem( sceneId, selfId ) ) then
		
		local ItemIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId )
		local GiftTable = x300103_g_GiftInfo[ItemIndex]
		if GiftTable == nil then
			return 0
		end
	
		return 1
	end
	return 0;
end

--**********************************
--–—ƒø–≈œ¢Ã· æ
--**********************************
function x300103_NotifyTips( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
