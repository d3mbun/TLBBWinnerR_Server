-- ³èÎïÎòÐÔÌLinhý

-- ½Å±¾ºÅ
x800104_g_ScriptId = 800104

-- NPC Tên
x800104_g_Name = "Vân Phi Phi"

--**********************************
-- ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x800104_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	if GetName( sceneId, targetId ) ~= x800104_g_Name then		--ÅÐ¶Ï¸Ã npc Ðúng·ñÐúngÖ¸¶¨toÕ ðµ npc
		return
	end

	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 19820424 )
end

--**********************************
-- ÁÐ¾ÙÊÂ¼þ
--**********************************
function x800104_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x800104_g_Name then		--ÅÐ¶Ï¸Ã npc Ðúng·ñÐúngÖ¸¶¨toÕ ðµ npc
		return
	end

	AddNumText( sceneId, x800104_g_ScriptId, "Nâng cao ngµ tính trân thú" ,6,-1)
end


--**********************************
-- ³èÎïÎòÐÔÌLinhý
--**********************************
function x800104_PetSavvy( sceneId, selfId, mainPetGuidH, mainPetGuidL, assisPetGuidH, assisPetGuidL )
	--ÅÐ¶Ï¸ù¹Ç
	local gengu = LuaFnGetPetGenGuByGUID(sceneId, selfId, assisPetGuidH, assisPetGuidL)
	if gengu ==0 then
		BeginEvent( sceneId )
			AddText( sceneId, "Trân thú có cån c¯t b¢ng 0 không th¬ nâng cao ngµ tính cüa trân thú" )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
		return 0
	end
	local retDiff = IncreaceSavvyByCompound( sceneId, selfId, mainPetGuidH, mainPetGuidL, assisPetGuidH, assisPetGuidL )
	if retDiff and retDiff > 0 then
		--³É¹¦toÕ ðµ ¹âÐ§
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
	end
end

