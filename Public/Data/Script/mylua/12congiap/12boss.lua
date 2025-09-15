

x000195_g_ScriptId	= 000195

x000195_g_FuBenScriptId = 000196

--x000195_Skill			=	1317
--x000195_Buff			= 10520

x000195_IDX_CombatTime		= 1
--x000195_IDX_UseSkillIndex	= 2
x000195_IDX_CombatFlag 			= 1

x000195_g_tyle_drop = 60 --ty le rot sinh tieu
x000195_g_tyle_item_vip = 10 --ty le item vip
x000195_g_tyle_list2 = 20 --ty le list2 yeu quyet vs thoi trang
x000195_g_tyle_thu_vip = 30 --ty le thu cuoi vip
x000195_g_tyle_TL3 = 0 --ty le trung lau 3 ngay
x000195_g_tyle_TL7 = 1 --ty le trung lau 7 ngay
x000195_g_tyle_TL15 = 1 --ty le trung lau 15 ngay

x000195_ItemList={													
10160121,
10160131,
10160161,
10160181,
10160171,
10160201,
10160331,
10161331,
}
x000195_Gem={											
50301001,
50301002,
50313002,
50313003,
50313005,
50311001,
50311002,
50313001,
50313006,
50413001,
50413002,
50413005,
}
x000195_Skill_Pet={				
30402045,
30402047,
30402055,
30402057,
30402061,
30402075,

}




function x000195_OnInit(sceneId, selfId)
	x000195_ResetMyAI( sceneId, selfId )
end


function x000195_OnHeartBeat(sceneId, selfId, nTick)

	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x000195_IDX_CombatFlag ) then
		return
	end
	local bossindex = 0
	for i=1,12 do
		if GetName(sceneId, selfId) == x000196_g_NPCList[i].name then
			bossindex = i
			break
		end
	end
	if bossindex == 0 then
		return
	end
	local CombatTime = MonsterAI_GetIntParamByIndex( sceneId, selfId, x000195_IDX_CombatTime )
	--local NextSkillIndex = MonsterAI_GetIntParamByIndex( sceneId, selfId, x000195_IDX_UseSkillIndex )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000195_IDX_CombatTime, CombatTime + nTick )
	--if NextSkillIndex < 1 then
	--	return
	--end
	local Timer = CombatTime+nTick
	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent < 0.2 then
		if Timer >=15000 and Timer <=16000 then
			LuaFnNpcChat(sceneId, selfId, 0, x000196_g_NPCList[bossindex].chat2)
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x000195_IDX_CombatTime, 0 )
		end

		elseif Timer >=15000 and Timer <=16000 then
			LuaFnNpcChat(sceneId, selfId, 0, x000196_g_NPCList[bossindex].chat1)

		local x,z = GetWorldPos( sceneId, selfId )
		local bossindex = 0
		for i=1,12 do
			if GetName(sceneId, selfId) == x000196_g_NPCList[i].name then
				bossindex = i
				break
			end
		end
		if bossindex == 0 then
			return
		end
		LuaFnUnitUseSkill( sceneId, selfId, x000196_g_NPCList[bossindex].skill, selfId, x, z, 0, 0 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000195_IDX_CombatTime, 0 )
	end
end
function x000195_OnEnterCombat(sceneId, selfId, enmeyId)
	local bossindex = 0
	for i=1,12 do
		if GetName(sceneId, selfId) == x000196_g_NPCList[i].name then
			bossindex = i
			break
		end
	end
	if bossindex == 0 then
		return
	end
	LuaFnNpcChat ( sceneId, selfId, 0, ""..x000196_g_NPCList[bossindex].name .. " xin ðßþc lînh giáo")
	x000195_ResetMyAI( sceneId, selfId )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000195_IDX_CombatFlag, 1 )
end

function x000195_OnLeaveCombat(sceneId, selfId)
	x000195_ResetMyAI( sceneId, selfId )
	--LuaFnDeleteMonster( sceneId, selfId )
end

function x000195_OnKillCharacter(sceneId, selfId, targetId)

end

function x000195_OnDie( sceneId, selfId, killerId )
	
	x000195_ResetMyAI( sceneId, selfId )

	local bossindex =0;
	for i=1,12 do
		if GetName(sceneId, selfId) == x000196_g_NPCList[i].name then
			bossindex = i
			break
		end
	end
	if bossindex == 0 then
		return
	end
	AddMoneyJZ(sceneId,killerId,50000)
	local nRan =random(100) 
	if nRan < 30 then
			AddMonsterDropItem( sceneId, selfId, killerId, x000195_ItemList[ random(getn(x000195_ItemList))])
	end
	local nRan =random(100) 
	if nRan <=1 then
		local CurDayTime = GetDayTime()
		local nNum = 0
		local abc = 0
		local lastDay =0
			local handle = openfile("../Public/Data/Script/mylua/12congiap/SaveNum.txt", "a+")	
			if nil ~= handle then
					 nNum = read(handle, "*n")					
					if nNum then
						 local lastDay = floor(tonumber(nNum)/10)
						 abc = mod(tonumber(nNum),10) + 1
						 if tonumber(CurDayTime) ~= lastDay then
							closefile(handle)
							local handle1 = openfile("../Public/Data/Script/mylua/12congiap/SaveNum.txt", "w+");
							write(handle1,CurDayTime.."1")			
							closefile(handle1)	
						else
							closefile(handle)
							local handle1 = openfile("../Public/Data/Script/mylua/12congiap/SaveNum.txt", "w+");
							write(handle1,CurDayTime..abc)			
							closefile(handle1)	
						end

					else
						write(handle,CurDayTime.."1")
						closefile(handle)				
					end
			else
					write(handle,CurDayTime.."1")
					closefile(handle)			
			end
			if abc <=3 then
			local idItem = x000195_Gem[ random(getn(x000195_Gem))] 
					str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Sinh Tiêu Lôi Ðài] #cff99cc  chiªn th¡ng #Y%s #cff99ccðã ðánh r¾t #Y#{_ITEM"..idItem.."}", GetName(sceneId,killerId),GetName(sceneId,selfId))
					BroadMsgByChatPipe(sceneId, killerId, str, 4)
				AddMonsterDropItem( sceneId, selfId, killerId, idItem)
			end
	end
	local nRan =random(100) 
	if nRan <=5 then
			AddMonsterDropItem( sceneId, selfId, killerId, x000195_Skill_Pet[ random(getn(x000195_Skill_Pet))] )
	end	
	SetCharacterDieTime( sceneId, selfId, 3000 )
	local soboss =LuaFnGetCopySceneData_Param(sceneId, x000196_g_selectBoss)
	if soboss ==12 then 
		LuaFnSetCopySceneData_Param( sceneId, x000196_g_IDX_FuBenLifeStep, 11)
		LuaFnSetCopySceneData_Param( sceneId, 7, 0 )
	end 
end

function x000195_ResetMyAI( sceneId, selfId )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000195_IDX_CombatTime, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000195_IDX_CombatFlag, 0 )
end

function x000195_NotifyTip( sceneId, selfId, Tip )

	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end


function x000195_TipAllHuman( sceneId, Str )

	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
			BeginEvent(sceneId)
				AddText(sceneId, Str)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId, PlayerId)
		end
	end

end
