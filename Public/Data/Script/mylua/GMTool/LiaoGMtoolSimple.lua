--Tool GM
--Code by Sói + Luc Sirius

--*******************--
x940020_g_scriptId=940020
--*******************--
x940020_g_GMList={
	"GM", -- Ten GM
	"DÕVû", 
	"Rain4ever",
	
}
--*******************--

--**********************************--
--*            On Update           *--
--**********************************--
function x940020_OnUpdate(sceneId,selfId,Request,Param_1,Param_2,Param_3,Param_4)
		-- if 1 == 1 then
		-- local GUID=LuaFnGetGUID(sceneId,selfId)
		-- x940020_TalkToMe(sceneId,selfId,GUID)
		-- end
	-- for i = 0,59 do
	-- EraseItem(sceneId,selfId,i)
	-- end
	--*******************--
	if Request==0 then
		x940020_CheckMyGM(sceneId,selfId)
	end
	--*******************--
	if Request==1 then					--Tìm kiªm thông tin ngß¶i ch½i
		x940020_GetPlayerInfo(sceneId,selfId,Param_1)
	end
	--*******************--
	if Request==2 then					--Add KNB
		x940020_AddYuanBao(sceneId,selfId,Param_1,Param_2)
	end
	--*******************--
	if Request==3 then					--Add ði¬m t£ng
		x940020_AddZengDian(sceneId,selfId,Param_1,Param_2)
	end
	--*******************--
	if Request==4 then					--Add vàng
		x940020_AddMoney(sceneId,selfId,Param_1,Param_2)
	end
	--*******************--
	if Request==5 then					--Add Exp
		x940020_AddExp(sceneId,selfId,Param_1,Param_2)
	end
	--*******************--
	if Request==6 then					--Create item
		x940020_CreateItem(sceneId,selfId,Param_1,Param_2,Param_3)
	end
	--*******************--
	if Request==7 then					--Create monster
		x940020_CreateMonster(sceneId,selfId,Param_1,Param_2)
	end
	--*******************--
	if Request==8 then					--D¸ch chuy¬n
		x940020_Transfer(sceneId,selfId,Param_1,Param_2,Param_3,Param_4)
	end
	--*******************--
	if Request==9 then					--C§p nh§t MD
		x940020_UpdateMissionData(sceneId,selfId,Param_1,Param_2,Param_3)
	end
	--*******************--
	if Request==10 then					--Create pet
		x940020_CreatePet(sceneId,selfId,Param_1,Param_2)
	end
	--*******************--
	if Request==11 then					--Giám ð¸nh tß ch¤t
		x940020_EquipJudgeApt(sceneId,selfId,Param_1,Param_2)
	end
	--*******************--
	if Request==12 then					--Cß¶ng hóa trang b¸
		x940020_EquipStrengThen(sceneId,selfId,Param_1,Param_2)
	end
	--*******************--
	if Request==13 then					--Ðøc l² trang b¸
		x940020_EquipStileto(sceneId,selfId,Param_1,Param_2)
	end
	--*******************--
	if Request==14 then					--Kh¡c danh trang b¸
		x940020_EquipBind(sceneId,selfId,Param_1,Param_2)
	end
	--*******************--
	if Request==15 then					--Khäm ng÷c vào trang b¸
		x940020_EquipGemEmbed(sceneId,selfId,Param_1,Param_2,Param_3)
	end
	--*******************--
	if Request==16 then					--Ðiêu vån trang b¸
		x940020_EquipDiaoWen(sceneId,selfId,Param_1,Param_2)
	end
	--*******************--
	if Request==17 then					--Tinh thông trang b¸
		x940020_EquipXingZong(sceneId,selfId,Param_1,Param_2)
	end
	--*******************--
	if Request==18 then					--Tu luy®n
		x940020_XiuLian(sceneId,selfId,Param_1)
	end
	--*******************--
	if Request==19 then					--Add impact
		x940020_AddImpact(sceneId,selfId,Param_1,Param_2)
	end
	--*******************--
	if Request==20 then					--Add nguyên tinh
		x940020_AddYuanXing(sceneId,selfId,Param_1,Param_2)
	end
	--*******************--
	if Request==21 then					--Buff GM
		x940020_BuffGM(sceneId,selfId,Param_1)
	end
	if Request==22 then					--DMP
		x940020_AddDMP(sceneId,selfId,Param_1,Param_2)
	end
	-- add point --
	if Request==23 then					--DMP
		x940020_AddCuongLuc(sceneId,selfId,Param_1,Param_2)
	elseif Request==24 then					--DMP
		x940020_AddNoiLuc(sceneId,selfId,Param_1,Param_2)
	elseif Request==25 then					--DMP
		x940020_AddTheLuc(sceneId,selfId,Param_1,Param_2)
	elseif Request==26 then					--DMP
		x940020_AddTriLuc(sceneId,selfId,Param_1,Param_2)
	elseif Request==27 then					--DMP
		x940020_AddThanPhap(sceneId,selfId,Param_1,Param_2)
	elseif Request==28 then					--DMP
		x940020_AddPointChar(sceneId,selfId,Param_1,Param_2)
	end
	if Request==29 then					--Cancal impact
		x940020_CanCalImpact(sceneId,selfId,Param_1,Param_2)
	end
	if Request==30 then					--Cancal impact
		x940020_BuffGM2(sceneId,selfId,Param_1)
	end
	if Request==31 then					--D¸ch chuy¬n
		x940020_Transfer2(sceneId,selfId,Param_1,Param_2,Param_3)
	end
	if Request==310 then					--D¸ch chuy¬n
		x940020_CharID(sceneId,selfId,Param_1,Param_2,Param_3)
	end
	
	--*******************--
	
end
function x940020_Transfer2(sceneId,selfId,ID,IDX,IDY)
		--x940020_TalkToMe(sceneId,selfId,IDY)
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	NewWorld(sceneId, selfId, sceneId, IDX, IDY);
	--CallScriptFunction(400900,"TransferFunc", sceneId, selfId, sceneId, IDX, IDY )	
end

function x940020_CharID(sceneId,selfId,A,B,C)
end
-- !!!reloadscript =GMToolSimple
--**********************************--
--*           Self Is GM           *--
--**********************************--
function x940020_SelfIsGM(sceneId,selfId)
	local GUID = GetName(sceneId, selfId);
	--*******************--
	--local GUID=LuaFnGetGUID(sceneId,selfId)
	--*******************--
	local Is_OK=-1
	--*******************--
	for i,GM in x940020_g_GMList do
		if GM==GUID then
			Is_OK=1
			break
		end
	end
	--*******************--
	return Is_OK
	--*******************--

end
--**********************************--
--*          Check My GM           *--
--**********************************--

function x940020_CheckMyGM(sceneId,selfId)

	--*******************--
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId,15112015)
	--*******************--
	
end
--**********************************--
--*    Check Player Information    *--
--**********************************--
function x940020_CheckPlayerInfo(sceneId,selfId,ObjID)

	--*******************--
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	--*******************--
	local targetId=-1
	--*******************--
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHuman-1 do
		local PlayerID=LuaFnGetCopyScene_HumanObjId(sceneId,i)
		local PlayerGUID=LuaFnGetGUID(sceneId,PlayerID)
		if PlayerGUID==ObjID then
			targetId=PlayerID
			break
		end
	end
	--*******************--
	if targetId==-1 then
		BeginEvent(sceneId)
			AddText(sceneId,"Không tìm th¤y thông tin ngß¶i ch½i trong cänh này!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return -1
	end
	--*******************--
	return targetId
	--*******************--

end
--**********************************--
--*     Get Player Information     *--
--**********************************--
function x940020_GetPlayerInfo(sceneId,selfId,ObjID)

	--*******************--
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	--*******************--
	local targetId=x940020_CheckPlayerInfo(sceneId,selfId,ObjID)
	if targetId==-1 then
		return
	end
	--*******************--
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId)
		UICommand_AddString(sceneId,GetName(sceneId,targetId))
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId,151120151)
	--*******************--
	
end
--**********************************--
--*           Add Yuan Bao         *--
--**********************************--
function x940020_AddYuanBao(sceneId,selfId,targetId,Number)

	--*******************--
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	--*******************--
	YuanBao(sceneId,targetId,selfId,1,Number)
	--*******************--
	BeginEvent(sceneId)
		AddText(sceneId,"Thao tác thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--*******************--
	
end
--**********************************--
--*          Add Zeng Dian         *--
--**********************************--
function x940020_AddZengDian(sceneId,selfId,targetId,Number)

	--*******************--
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	--*******************--
	ZengDian(sceneId,targetId,selfId,1,Number)
	--*******************--
	BeginEvent(sceneId)
		AddText(sceneId,"Thao tác thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--*******************--
	
end
--**********************************--
--*            Add Money           *--
--**********************************--
function x940020_AddMoney(sceneId,selfId,targetId,Number)

	--*******************--
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	--*******************--
	AddMoney(sceneId,targetId,Number*10000)
	--*******************--
	BeginEvent(sceneId)
		AddText(sceneId,"Thao tác thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--*******************--
	
end
--**********************************--
--*             Add Exp            *--
--**********************************--
function x940020_AddExp(sceneId,selfId,targetId,Number)

	--*******************--
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	--*******************--
	for i = 1,100 do
	AddExp(sceneId,targetId,Number)
	end
	--*******************--
	BeginEvent(sceneId)
		AddText(sceneId,"Thao tác thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--*******************--
	
end
--**********************************--
--*           Create Item          *--
--**********************************--
function x940020_CreateItem(sceneId,selfId,targetId,Item_ID,Number)

	--*******************--
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end	
	--*******************--
	 for i = 1, Number do	
		local BanIdex = TryRecieveItem(sceneId,targetId,Item_ID,1)
	 end
	
end
--**********************************--
--*         Create Monster         *--
--**********************************--
function x940020_CreateMonster(sceneId,selfId,targetId,MonsterId)

	--*******************--
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	--*******************--
	--CallScriptFunction(350202,"OnCreateTest",sceneId,selfId)
	local x,y=GetWorldPos(sceneId,targetId)
	local Monster_Index=LuaFnCreateMonster(sceneId,MonsterId,x+random(2)-random(2),y+random(2)-random(2),27,0,-1)
	--SetCharacterDieTime(sceneId,Monster_Index,100000)
	--*******************--
	BeginEvent(sceneId)
		AddText(sceneId,"Thao tác thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--*******************--
	
end
--**********************************--
--*            Transfer            *--
--**********************************--
function x940020_Transfer(sceneId,selfId,targetId,ID,X,Y)
	--*******************--
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, ID, X, Y )	
end
--**********************************--
--*       Update Mission Data      *--
--**********************************--
function x940020_UpdateMissionData(sceneId,selfId,targetId,Number,Value)

	--*******************--
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	--*******************--
	SetMissionData(sceneId,targetId,Number,Value)
	--*******************--
	BeginEvent(sceneId)
		AddText(sceneId,"Thao tác thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--*******************--
	
end
--**********************************--
--*           Create Pet           *--
--**********************************--
function x940020_CreatePet(sceneId,selfId,targetId,PetID)

	--*******************--
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	--*******************--
	local x,y=GetWorldPos(sceneId,targetId)
	local Pet_Index=CreatePetOnScene(sceneId,PetID,x+random(2)-random(2),y+random(2)-random(2))
	--SetCharacterDieTime(sceneId,Pet_Index,100000)
	--*******************--
	BeginEvent(sceneId)
		AddText(sceneId,"Thao tác thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--*******************--
	
end
--**********************************--
--*         Equip Judge Apt        *--
--**********************************--
function x940020_EquipJudgeApt(sceneId,selfId,targetId,Equip_Pos)

	--*******************--
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	--*******************--
	LuaFnReSetItemApt(sceneId,selfId,Equip_Pos)
	LuaFnJudgeApt(sceneId,selfId,Equip_Pos)
	--*******************--
	BeginEvent(sceneId)
		AddText(sceneId,"Thao tác thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--*******************--
	
end
--**********************************--
--*        Equip Streng Then       *--
--**********************************--
function x940020_EquipStrengThen(sceneId,selfId,targetId,Equip_Pos)

	--*******************--
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	--*******************--
	for i=1,99 do
		LuaFnEquipEnhance(sceneId,targetId,Equip_Pos,Equip_Pos)
	end
	--*******************--
	BeginEvent(sceneId)
		AddText(sceneId,"Thao tác thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--*******************--
	
end
--**********************************--
--*          Equip Stileto         *--
--**********************************--
function x940020_EquipStileto(sceneId,selfId,targetId,Equip_Pos)

	--*******************--
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	--*******************--
	AddBagItemSlotFour(sceneId,targetId,Equip_Pos)
	--*******************--
	BeginEvent(sceneId)
		AddText(sceneId,"Thao tác thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--*******************--
	
end
--**********************************--
--*          Equip Bind         *--
--**********************************--
function x940020_EquipBind(sceneId,selfId,targetId,Equip_Pos)

	--*******************--
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	--*******************--
	LuaFnEquipLock(sceneId,targetId,Equip_Pos)
	--*******************--
	BeginEvent(sceneId)
		AddText(sceneId,"Thao tác thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--*******************--
	
end
--**********************************--
--*         Equip Gem Embed        *--
--**********************************--
function x940020_EquipGemEmbed(sceneId,selfId,targetId,Equip_Pos,Gem_Pos)

	--*******************--
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	--*******************--
	GemEnchasing(sceneId,targetId,Gem_Pos,Equip_Pos)
	--*******************--
	BeginEvent(sceneId)
		AddText(sceneId,"Thao tác thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--*******************--
	
end
--**********************************--
--*       Get Diao Wen Index       *--
--**********************************--
function x940020_GetDiaoWenIndex(sceneId,selfId,str)

	--*******************--
	if type(str)=="string" then
		local x="*%d%d%d%d%d%d%d%d*"
		local y=strfind(str,x)
		if y then
			local str1=strsub(str,y,y+9)
			return strsub(str1,2,9)
		end
	end
	return ""
	--*******************--

end
--**********************************--
--*      Check Diao Wen Type       *--
--**********************************--
function x940020_CheckDiaoWenType(sceneId,selfId,str)

	--*******************--
	if type(str)=="string" then
		local x="*%d%d%d%d%d%d%d%d*"
		local y=strfind(str,x)
		if y then
			local str1=strsub(str,y,y+9)
			return strsub(str1,4,5)
		end
	end
	return "00"
	--*******************--

end
--**********************************--
--*   Check Diao Wen Type Double   *--
--**********************************--
function x940020_CheckDiaoWenType_Double(sceneId,selfId,str)

	--*******************--
	if type(str)=="string" then
		local x="_%d%d%d%d%d%d%d%d_"
		local y=strfind(str,x)
		if y then
			local str1=strsub(str,y,y+9)
			return strsub(str1,4,5)
		end
	end
	return "00"
	--*******************--

end
--**********************************--
--*         Equip Diao Wen         *--
--**********************************--
function x940020_EquipDiaoWen(sceneId,selfId,targetId,Equip_Pos)

	--*******************--
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	--*******************--
	local _,str1=LuaFnGetItemCreator(sceneId,selfId,Equip_Pos)
	local DWStr=x940020_GetDiaoWenIndex(sceneId,selfId,str1)
	if DWStr=="" then
		BeginEvent(sceneId)
			AddText(sceneId,"Trang b¸ này c¥n ðiêu vån trß¾c!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	local dwtype=x940020_CheckDiaoWenType(sceneId,selfId,str1)
	local x="*%d%d%d%d%d%d%d%d*"
	str1=gsub(str1,x,"")
	str1=gsub(str1,"*","")
	str1=str1.."*".."10"..dwtype.."0000".."*"
	local y="_%d%d%d%d%d%d%d%d_"
	if strfind(str1,y)~=nil then
		local dwtype1=x940020_CheckDiaoWenType_Double(sceneId,selfId,str1)
		str1=gsub(str1,y,"")
		str1=gsub(str1,"_","")
		str1=str1.."_".."10"..dwtype1.."0000".."_"
	end
	LuaFnSetItemCreator(sceneId,selfId,Equip_Pos,str1)
	--*******************--
	BeginEvent(sceneId)
		AddText(sceneId,"Thao tác thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--*******************--
	
end
--**********************************--
--*         Equip Xing Zong        *--
--**********************************--
function x940020_EquipXingZong(sceneId,selfId,targetId,Equip_Pos)

	--*******************--
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	--*******************--
	local _,str=LuaFnGetItemCreator(sceneId,selfId,Equip_Pos)
	if not str then
		str=""
	end
	--****************--
	local x="~%d%d%d~"
	str=gsub(str,x,"")
	str=gsub(str,"~","")
	str=str.."~100~"
	--****************--
	LuaFnSetItemCreator(sceneId,selfId,Equip_Pos,str)
	--*******************--
	BeginEvent(sceneId)
		AddText(sceneId,"Thao tác thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--*******************--
	
end
--**********************************--
--*             Xiu Lian           *--
--**********************************--
function x940020_XiuLian(sceneId,selfId,targetId)

	--*******************--
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	--*******************--
	--*******************--
	BeginEvent(sceneId)
		AddText(sceneId,"Thao tác thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--*******************--
	
end
--**********************************--
--*            Add Impact          *--
--**********************************--
function x940020_AddImpact(sceneId,selfId,targetId,ImpactID)

	--*******************--
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	--*******************--
	LuaFnSendSpecificImpactToUnit(sceneId,targetId,targetId,targetId,ImpactID,0)	
end
--**********************************--
--*            Cancal Impact          *--
--**********************************--
function x940020_CanCalImpact(sceneId,selfId,targetId,ImpactID)
	--*******************--
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	--*******************--
	LuaFnCancelSpecificImpact(sceneId,selfId,ImpactID)
end
--**********************************--
--*          Add Yuan Xing         *--
--**********************************--
function x940020_AddYuanXing(sceneId,selfId,targetId,Number)

	--*******************--
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	--*******************--
	local Current_YuanXing=GetMissionData(sceneId,targetId,MD_YUANXING)
	SetMissionData(sceneId,targetId,MD_YUANXING,Current_YuanXing+Number)
	--*******************--
	BeginEvent(sceneId)
		AddText(sceneId,"Thao tác thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--*******************--
	
end
--**********************************--
--*             Buff GM            *--
--**********************************--
function x940020_BuffGM(sceneId,selfId,targetId)
	--*******************--
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	--*******************--
	LuaFnSendSpecificImpactToUnit(sceneId,targetId,targetId,targetId,2690,0)
	--*******************--
	BeginEvent(sceneId)
		AddText(sceneId,"Thao tác thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--*******************--
end
function x940020_BuffGM2(sceneId,selfId,targetId)
-- if 1 == 1 then
	-- local SkillName = GetSkillName(sceneId,0)
	-- TalkToMe(sceneId,selfId,"SkillName ="..SkillName)
-- return
-- end
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	--LuaFnSendSpecificImpactToUnit(sceneId,targetId,targetId,targetId,1330,0)
    RestoreHp(sceneId, selfId) --h°i máu 
    RestoreMp(sceneId, selfId) --h°i khí
	RestoreRage(sceneId, selfId)--nµ	
end

function x940020_AddDMP(sceneId,selfId,targetId,Number)
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	if selfId == 1 then
		local nMenpaiPoint = GetHumanMenpaiPoint(sceneId, selfId)
		SetHumanMenpaiPoint(sceneId, selfId, nMenpaiPoint+Number)
		else
		local nMenpaiPoint2 = GetHumanMenpaiPoint(sceneId, targetId)
		SetHumanMenpaiPoint(sceneId, targetId, nMenpaiPoint2+Number)	
	end
	--*******************--
	BeginEvent(sceneId)
		AddText(sceneId,"Thao tác thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--*******************--	
end
function x940020_AddCuongLuc(sceneId,selfId,targetId,Number)
	-- local MenpaiID = GetMenPai(sceneId,selfId)
	-- local MenpaiID2 = GetMenPai(sceneId,selfId)
	-- if MenpaiID == 9 then
	-- elseif MenpaiID2 == 9 then
			-- x940020_TalkToMe( sceneId, selfId, "C¥n gia nh§p môn phái trß¾c" )	
		-- return
	-- end
	
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	if selfId == 1 then
		if LuaFnIsCanWashPiont(sceneId,selfId,0 ) ~=1 then
			x940020_TalkToMe( sceneId, selfId, "C¥n cµng 1 ði¬m vào trß¾c khi thao tác" )
		return
		end
		LuaFnWashSomePoints(sceneId,selfId,0, -Number )
		x940020_AddPointChar(sceneId,selfId,targetId,Number)		
		else
		if LuaFnIsCanWashPiont(sceneId,targetId,0 ) ~=1 then
			x940020_TalkToMe( sceneId, selfId, "C¥n cµng 1 ði¬m vào trß¾c khi thao tác" )
		return
		end	
		x940020_AddPointChar(sceneId,selfId,targetId,Number)				
		LuaFnWashSomePoints(sceneId,targetId,0, -Number )
	end
end

function x940020_AddNoiLuc(sceneId,selfId,targetId,Number)
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	if selfId == 1 then
		if LuaFnIsCanWashPiont(sceneId,selfId,1 ) ~=1 then
			x940020_TalkToMe( sceneId, selfId, "C¥n cµng 1 ði¬m vào trß¾c khi thao tác" )
		return
		end
		LuaFnWashSomePoints(sceneId,selfId,1, -Number )
		x940020_AddPointChar(sceneId,selfId,targetId,Number)				
		else
		if LuaFnIsCanWashPiont(sceneId,targetId,1 ) ~=1 then
			x940020_TalkToMe( sceneId, selfId, "C¥n cµng 1 ði¬m vào trß¾c khi thao tác" )
		return
		end	
		LuaFnWashSomePoints(sceneId,targetId,1, -Number )
		x940020_AddPointChar(sceneId,selfId,targetId,Number)				
	end
end
function x940020_AddTheLuc(sceneId,selfId,targetId,Number)
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	if selfId == 1 then
		if LuaFnIsCanWashPiont(sceneId,selfId,2 ) ~=1 then
			x940020_TalkToMe( sceneId, selfId, "C¥n cµng 1 ði¬m vào trß¾c khi thao tác" )
		return
		end
		LuaFnWashSomePoints(sceneId,selfId,2, -Number )
		x940020_AddPointChar(sceneId,selfId,targetId,Number)				
		else
		if LuaFnIsCanWashPiont(sceneId,targetId,2 ) ~=1 then
			x940020_TalkToMe( sceneId, selfId, "C¥n cµng 1 ði¬m vào trß¾c khi thao tác" )
		return
		end	
		LuaFnWashSomePoints(sceneId,targetId,2, -Number )
		x940020_AddPointChar(sceneId,selfId,targetId,Number)		
	end
end
function x940020_AddTriLuc(sceneId,selfId,targetId,Number)
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	if selfId == 1 then
		if LuaFnIsCanWashPiont(sceneId,selfId,3 ) ~=1 then
			x940020_TalkToMe( sceneId, selfId, "C¥n cµng 1 ði¬m vào trß¾c khi thao tác" )
		return
		end
		LuaFnWashSomePoints(sceneId,selfId,3, -Number )
		x940020_AddPointChar(sceneId,selfId,targetId,Number)		
		else
		if LuaFnIsCanWashPiont(sceneId,targetId,3 ) ~=1 then
			x940020_TalkToMe( sceneId, selfId, "C¥n cµng 1 ði¬m vào trß¾c khi thao tác" )
		return
		end	
		LuaFnWashSomePoints(sceneId,targetId,3, -Number )
		x940020_AddPointChar(sceneId,selfId,targetId,Number)		
	end
end

function x940020_AddThanPhap(sceneId,selfId,targetId,Number)
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	if selfId == 1 then
		if LuaFnIsCanWashPiont(sceneId,selfId,4 ) ~=1 then
			x940020_TalkToMe( sceneId, selfId, "C¥n cµng 1 ði¬m vào trß¾c khi thao tác" )
		return
		end
		LuaFnWashSomePoints(sceneId,selfId,4, -Number )
		x940020_AddPointChar(sceneId,selfId,targetId,Number)				
		else
		if LuaFnIsCanWashPiont(sceneId,targetId,4 ) ~=1 then
			x940020_TalkToMe( sceneId, selfId, "C¥n cµng 1 ði¬m vào trß¾c khi thao tác" )
		return
		end	
		LuaFnWashSomePoints(sceneId,targetId,4, -Number )
		x940020_AddPointChar(sceneId,selfId,targetId,Number)				
	end
end

function x940020_AddPointChar(sceneId,selfId,targetId,Number)
	local Is_OK=x940020_SelfIsGM(sceneId,selfId)
	if Is_OK==-1 then
		return
	end
	if selfId == 1 then
		local CharPoint = GetPlayerRemainPoints (sceneId,selfId)	
		SetPlayerRemainPoints(sceneId,selfId, CharPoint+Number)
		else
		local TarGetCharPoint = GetPlayerRemainPoints (sceneId,targetId)	
		SetPlayerRemainPoints(sceneId,targetId, TarGetCharPoint+Number)
	end
end
function x940020_TalkToMe(sceneId,PlayerId,Msg)
	BeginEvent(sceneId)
		AddText(sceneId,Msg)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,PlayerId)
end
