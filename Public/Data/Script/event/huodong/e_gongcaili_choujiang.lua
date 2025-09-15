--�
--�齱
--LuaFnGetAvailableItemCount(sceneId, selfId, itemId)


x808065_g_ScriptId = 808065;

--x808065_g_StartDayTime = 7285; --10.12
x808065_g_StartDayTime = 7304; --11.01
x808065_g_EndDayTime = 7325;   --11.22

x808065_g_ItemId   =
{
	["choujiang1"] = 40004431,
	["choujiang2"] = 30900006,
	["choujiangtudi"] = 40004433,
	["choujiangshifu"] = 40004432,
}

x808065_g_Key				=
{
	["choujiang1"]	=	101,			--�齱�1
	["choujiang2"]	= 102,			--�齱�2
	["choujiang3"]	= 103,			--�齱�3
	["choujianghuodong"]	= 104,			--�齱� �i�m�
	["choujiangshuoming1"] = 105,
	["choujiangshuoming2"] = 106,
	["choujiangshuoming3"] = 107,
}

function x808065_OnDefaultEvent( sceneId, selfId, targetId )

	local isTime = x808065_CheckRightTime();
	if 1 ~= isTime then
	
		return
		
	end
	
	local NumText = GetNumText();	
	local MyLevel = GetLevel( sceneId, selfId );
	if(NumText == x808065_g_Key["choujiang1"]) then
	
		if(MyLevel < 20) then
		
			x808065_Printf( sceneId,  selfId, targetId , ""..GetName( sceneId, selfId )..", ng߽i g�n ��y � tr�n giang h� c� ch�t vang d�i, nh�ng c�ch t�n binh �o�t b�o ti�u chu�n c�n c� m�t ch�t kho�ng c�ch. Ng߽i v�n ��i �n #Gc�p 20#W l�i �n t�m ta!");
			
		elseif(MyLevel >=20 and MyLevel < 40) then
		
			local Num = LuaFnGetAvailableItemCount(sceneId, selfId, x808065_g_ItemId["choujiang1"]);
			if(Num > 0) then
			
				x808065_Printf( sceneId, selfId, targetId,  ""..GetName( sceneId, selfId )..", c�a ng߽i x�c th�c th�t l� tr�n giang h� kh�ng th� b� qua  m�t c� t�n th� l�c. Nh�ng l� ng߽i kh�ng l�u ph�a tr߾c, �� mu�n � ta n�i n�y tr�u qu� khen l�p! Ng߽i xem, ng߽i tr�n ng߶i c�n mang theo v� x� s� ��u!");
				
			else
				
				if( x808065_AddJiangjuan( sceneId, selfId, x808065_g_ItemId["choujiang1"]) == 1) then
				
					x808065_Printf(sceneId , selfId, targetId ,""..GetName( sceneId, selfId )..", ng߽i �� mu�n th�nh c�ng ti�n h�nh r�i l�nh th߷ng, t�n c�a ng߽i �� ���c x�p v�o danh s�ch l�nh th߷ng. Th�nh ki�n nh�n ch� ��i th�ng tri, c� th� ho�t �ng n�i dung th�nh t�m ��c tr�n trang web Thi�n Long b�t b�.");
					
				end
			
			end
			
		end
	
	elseif(NumText == x808065_g_Key["choujiang2"] ) then
		
		if(MyLevel < 40) then
		
			x808065_Printf(sceneId, selfId, targetId, ""..GetName( sceneId, selfId )..", ng߽i g�n ��y � tr�n giang h� c� ch�t vang d�i, nh�ng ch� c� tr�n giang h� t�i h�a t�n th� l�c t�i n�ng l�nh si�u th�ch ��i l� bao ��u, ng߽i v�n ph�i ��t t�i #Gc�p 40#W l�i �n l�nh ��i l� bao �i!");
			
		elseif(MyLevel >=40 and MyLevel <=45) then
			
			if( GetMissionFlag( sceneId, selfId, MF_CHOUJIANGDALIBAO01 ) == 1) then
			--�Ѿ����
				x808065_Printf(sceneId, selfId, targetId, ""..GetName( sceneId, selfId )..", c�a ng߽i x�c th�c th�t l� tr�n giang h� m�t th� l�c m�i. Nh�ng l� ng߽i kh�ng l�u ph�a tr߾c, �� mu�n � ta n�i n�y l�nh ��i l� bao!");
			
			elseif( GetMissionFlag( sceneId, selfId, MF_CHOUJIANGDALIBAO01 ) == 0) then
			
				if( x808065_PutIntoPack( sceneId, selfId, targetId, x808065_g_ItemId["choujiang2"], QUALITY_MUST_BE_CHANGE, 1 , 1) == 1) then
				
					SetMissionFlag(sceneId, selfId, MF_CHOUJIANGDALIBAO01, 1);
					x808065_Printf(sceneId , selfId, targetId ,""..GetName( sceneId, selfId )..", ng߽i �� mu�n th�nh c�ng ��t ���c ��i l� bao. Nh�n xem b�c h�nh c�a ng߽i �i, b�n trong h�n l� h�n m�t ki�n cho ng߽i!");
					
				end
			
			end
		
		elseif(MyLevel > 45 and MyLevel < 50) then
		
			x808065_Printf(sceneId, selfId, targetId, ""..GetName( sceneId, selfId )..", ng߽i g�n ��y � tr�n giang h� c� ch�t vang d�i, nh�ng ch� c� tr�n giang h� t�i h�a t�n th� l�c t�i n�ng l�nh ��i l� bao ��u, ng߽i ph�i ��t t�i #Gc�p 50 #W l�i �n l�nh ��i l� bao �i!");
			
		elseif(MyLevel >= 50 and MyLevel <= 55) then
		
			if( GetMissionFlag( sceneId, selfId, MF_CHOUJIANGDALIBAO02 ) == 1) then
			--�Ѿ����
				x808065_Printf(sceneId, selfId, targetId, ""..GetName( sceneId, selfId )..", c�a ng߽i x�c th�c th�t l� tr�n giang h� m�t th� l�c m�i. Nh�ng l� ng߽i kh�ng l�u ph�a tr߾c, �� mu�n � ta n�i n�y l�nh ��i l� bao!");
			
			elseif( GetMissionFlag( sceneId, selfId, MF_CHOUJIANGDALIBAO02 ) == 0) then
			
				if( x808065_PutIntoPack( sceneId, selfId, targetId, x808065_g_ItemId["choujiang2"], QUALITY_MUST_BE_CHANGE, 2 , 1) == 1) then
				
					SetMissionFlag(sceneId, selfId, MF_CHOUJIANGDALIBAO02, 1);
					x808065_Printf(sceneId , selfId, targetId ,""..GetName( sceneId, selfId )..", ng߽i �� mu�n th�nh c�ng ��t ���c ��i l� bao. Nh�n xem b�c h�nh c�a ng߽i �i, b�n trong h�n l� h�n m�t ki�n cho ng߽i!");
					
				end
			
			end
				
		end
		
	elseif(NumText == x808065_g_Key["choujiang3"]) then
		x808065_ShiTuPrizeOption3(sceneId,selfId,targetId)
		return
		--local TeamFlag = LuaFnHasTeam( sceneId, selfId )
		--if( TeamFlag ~=1 ) then
		----û�����
		--	x808065_Printf(sceneId , selfId, targetId ,"Ng߽i c�n ��C�a ng߽i ʦ������ͽ����Ӳ������μ�ʦͽ�齱Ŷ�� ���.�m�t ����ngʦ�����ӳ�,ͽ����еi vi�n ����.���Ҷ����ﲻ����������Ŷ!");
		--	return
		--
		--end
		--
		--local TeamSize = LuaFnGetTeamSize( sceneId, selfId );
		--local NearTeamSize = GetNearTeamCount( sceneId, selfId )
		--if( TeamSize ~= NearTeamSize) then
		----���еi vi�n T�i ��T�i ����
		--	x808065_Printf(sceneId , selfId, targetId ,""..GetName( sceneId, selfId )..",���ж��Ѳ�T�i ������!");
		--	return
		--	
		--end
		--
		--if( TeamSize < 2 ) then
		--
		--	x808065_Printf(sceneId , selfId, targetId ,""..GetName( sceneId, selfId ).."��Ϊ�ӳ�,Ҫ���Լ�to� � ͽ����Ӳ���m�t �����μ�ʦͽ�齱��!");
		--	return		
		--
		--end
    --
		----������to� � ʦ����ϵ
		--local OkTeam = 1
		--local leaderID = GetTeamLeader( sceneId, selfId )
		--local otherPlayer
		--for i=0, NearTeamSize-1 do
		--	otherPlayer = GetNearTeamMember( sceneId, selfId, i )
		--	if leaderID ~= otherPlayer and LuaFnIsMaster(sceneId, otherPlayer, leaderID) ~= 1 then
		--		OkTeam = 0;
		--		break;
		--	end
		--end
		--if OkTeam == 0 then
		----��ӹ�ϵ����ȷ
		--	if(leaderID == selfId) then
		--	--����ng�ӳ�
		--		
		--		local PrenticeNum = LuaFnGetmasterLevel( sceneId, selfId );
		--		if( PrenticeNum == 0) then
		--			--ʦ�� �i�m
		--			x808065_Printf(sceneId , selfId, targetId ,""..GetName( sceneId, selfId )..",��Ϊ�ӳ�,���� �i�m�Լ���ngʦ������m�t �����μ�ʦͽ�齱��!");
		--			return
		--		
		--		end
		--		x808065_Printf(sceneId , selfId, targetId , ""..GetName( sceneId, selfId )..",��Ϊ�ӳ�,���������˲���ngC�a ng߽i ͽ����,�㻹��ng��C�a ng߽i ͽ��m�t ����L�nh ��!");
		--		return
		--		
		--	else
		--	--�Ҳ���ng�ӳ�
		--		if(LuaFnHaveMaster( sceneId, selfId ) == 0) then
		--		
		--			x808065_Printf(sceneId , selfId, targetId , ""..GetName( sceneId, selfId )..",��Ϊеi vi�n ,���� �i�m�Լ���ʦ������m�t �����μ�ʦͽ�齱��!");
		--			return
		--		
		--		end
		--		x808065_Printf(sceneId , selfId, targetId , ""..GetName( sceneId, selfId )..",��Ϊеi vi�n ,� gi�y�T�i ����to� � �ӳ�����ng����еi vi�n to� � ʦ���أ�Ҫȷ���ӳ���ng����еi vi�n to� � ʦ�����а.�");
		--		return
		--		
		--	end
		--end
		--
		----����c�p
		--OkTeam = 1;
		--leaderID = GetTeamLeader( sceneId, selfId );
		--otherPlayer = 0;
		--for i=0, NearTeamSize-1 do
		--	otherPlayer = GetNearTeamMember( sceneId, selfId, i );
		--	if( leaderID == otherPlayer ) then
		--	else
		--		if(GetLevel(sceneId, otherPlayer) < 30 or GetLevel(sceneId, otherPlayer) > 49 ) then
		--			OkTeam = 0;
		--			break;
		--		end
		--	end
		--end
		--if OkTeam == 0 then
		----���˵�c�p������Ҫ��
		--	if(leaderID == selfId) then
		--	--�ӳ�
		--		x808065_Printf(sceneId , selfId, targetId ,""..GetName( sceneId, selfId )..",��Ϊ�ӳ�,�μ�ʦͽ�齱to� � ������ng: �����to� � ͽ��to� � ��c�pT�i #G30c�p��49c�p#W֮��Ŷ,����m�t λͽ���Ѿ���T�i C�i n�y ��c�p��Χ������!");
		--		return
		--		
		--	else
		--	
		--		if(GetLevel(sceneId, selfId) < 30 or GetLevel(sceneId, selfId) > 49) then
		--		
		--			x808065_Printf(sceneId , selfId, targetId ,""..GetName( sceneId, selfId )..",��Ϊеi vi�n ,�μ�ʦͽ�齱to� � ������ng: C�a ng߽i ��c�pT�i #G30c�p��49c�p#W֮��Ŷ,���Ѿ���T�i C�i n�y ��c�p��Χ������!");
		--			return 
		--			
		--		else
		--	
		--			x808065_Printf(sceneId , selfId, targetId ,""..GetName( sceneId, selfId )..",��Ϊеi vi�n ,�μ�ʦͽ�齱to� � ������ng: ��ʦ�����to� � ͽ��to� � ��c�p��T�i #G30c�p��49c�p#W֮��Ŷ,C�a ng߽i m�t c�i�����Ѿ���T�i C�i n�y ��c�p��Χ������!");
		--			return
		--			
		--		end
		--		
		--	end
		--end
		--
		----ok ��������
		--if(leaderID == selfId) then
		----�ӳ�
		--	
		--	local Num = LuaFnGetAvailableItemCount(sceneId, selfId, x808065_g_ItemId["choujiangshifu"]);
		--	if(Num > 0) then
		--	
		--		x808065_Printf( sceneId, selfId, targetId,  ""..GetName( sceneId, selfId )..",��Ϊ�ӳ�,����to� � to� � ȷȷ��ng���������to� � m�t ��ʦͽ������.����ng�㲻��֮ǰ,�Ѿ�T�i ������μӹ�ʦͽ�齱�������㿴,�����ϻ����Ž�ȯ��!");
		--		
		--	else
		--		
		--		if( x808065_AddJiangjuan( sceneId, selfId, x808065_g_ItemId["choujiangshifu"]) == 1) then
		--		
		--			x808065_Printf(sceneId , selfId, targetId ,""..GetName( sceneId, selfId )..",��Ϊ�ӳ�,���Ѿ��ɹ��ؽ����˳齱,C�a ng߽i T�n�Ѿ�������齱����.�����ĵȴ�֪ͨ,�������������Thi�n Long�˲��ٷ���վ.");
		--			
		--		end
		--	
		--	end
		--	
		--else
		--
		--	local Num = LuaFnGetAvailableItemCount(sceneId, selfId, x808065_g_ItemId["choujiangtudi"]);
		--	if(Num > 0) then
		--	
		--		x808065_Printf( sceneId, selfId, targetId,  ""..GetName( sceneId, selfId )..",��Ϊеi vi�n ,����to� � to� � ȷȷ��ng���������to� � m�t ��ʦͽ������.����ng�㲻��֮ǰ,�Ѿ�T�i ������μӹ�ʦͽ�齱����!");
		--		
		--	else
		--		
		--		if( x808065_AddJiangjuan( sceneId, selfId, x808065_g_ItemId["choujiangtudi"]) == 1) then
		--		
		--			x808065_Printf(sceneId , selfId, targetId ,""..GetName( sceneId, selfId )..",��Ϊеi vi�n ,���Ѿ��ɹ��ؽ����˳齱,C�a ng߽i T�n�Ѿ�������齱����.�����ĵȴ�֪ͨ,�������������Thi�n Long�˲��ٷ���վ.");
		--			
		--		end
		--	
		--	end
		--
		--end
	
	elseif(NumText == x808065_g_Key["choujianghuodong"]) then
		
		BeginEvent( sceneId )
			AddText( sceneId, "#{XSCJ_20070919_001}");
			AddNumText( sceneId, x808065_g_ScriptId, "#{XSCJ_20070919_002}", 11, x808065_g_Key["choujiangshuoming1"] )
			AddNumText( sceneId, x808065_g_ScriptId, "#{XSCJ_20070919_004}", 11, x808065_g_Key["choujiangshuoming2"] )
			AddNumText( sceneId, x808065_g_ScriptId, "#{XSCJ_20070919_006}", 11, x808065_g_Key["choujiangshuoming3"] )	
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif(NumText == 333) then
		SetMissionData( sceneId, selfId, MD_SHITU_PRIZE_COUNT, 0)
		for i = 60,80 do
			EraseItem(sceneId, selfId,i)
		end
		x808065_MessageBox( sceneId, selfId, "M�t l�n n�a nh�n ph�n th߷ng danh s� th߷ng cho th�nh c�ng" )
	end
	
	x808065_OnEventRequest( sceneId, selfId, targetId )
	
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x808065_OnEventRequest( sceneId, selfId, targetId )

		local	key	= GetNumText()
		if(key == x808065_g_Key["choujiangshuoming1"]) then
		
			x808065_Printf(  sceneId, selfId, targetId, "#{XSCJ_20070919_003}" )
			
		elseif(key == x808065_g_Key["choujiangshuoming2"]) then
		
			x808065_Printf(  sceneId, selfId, targetId, "#{XSCJ_20070919_005}" )
			
		elseif(key == x808065_g_Key["choujiangshuoming3"]) then
		
			x808065_Printf(  sceneId, selfId, targetId, "#{XSCJ_20070919_007}" )
			
		end
end

function x808065_OnEnumerate( sceneId, selfId, targetId )

		--x808065_Printf(sceneId, selfId, targetId, GetDayTime());

    local isTime = x808065_CheckRightTime();
    local MyLevel = GetLevel( sceneId, selfId );
    if 1 == isTime then    	
    	
    	if( MyLevel <= 39) then
				AddNumText( sceneId, x808065_g_ScriptId, "T�n binh �o�t b�o: C� nh�n l�nh th߷ng", 6, x808065_g_Key["choujiang1"] )
			end
			if ( MyLevel <= 55) then
				AddNumText( sceneId, x808065_g_ScriptId, "T�n binh �o�t b�o: ��i l� bao", 6, x808065_g_Key["choujiang2"] )
			end
			AddNumText( sceneId, x808065_g_ScriptId, "�±��ᱦ: ��ʦ�齱", 6, x808065_g_Key["choujiang3"] )
			AddNumText( sceneId, x808065_g_ScriptId, "�齱� �i�m�", 11, x808065_g_Key["choujianghuodong"] )												
			--AddNumText(sceneId,x808065_g_ScriptId, "��������ʦ�齱",9,333)
    end

end

function x808065_SendMail( sceneId, selfId )
	--�齱�
	if(x808065_CheckRightTime() == 1) then
		LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{XSCJ_20070919_008}" )
		LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{XSCJ_20070919_007}" )
	end
end

--**********************************
--�����ng���ѽ���
--**********************************
function x808065_CheckRightTime()

	local curDayTime = GetDayTime()
	if curDayTime >= x808065_g_StartDayTime and curDayTime <= x808065_g_EndDayTime then
		return 1
	else
		return 0
	end

end

function x808065_CheckPacketSpace( sceneId, selfId, targetId, space )

	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < space then
	
		x808065_Printf(sceneId,selfId, targetId, ""..GetName( sceneId, selfId )..", b�c h�nh l� c�a ng߽i �� �y. �i r�a s�ch m�t ch�t b�c h�nh l� l�i �n �i, ta s� � ch� n�y ch� c�a ng߽i!");
			
		return 0
		
	else
		return 1
	end

end

function x808065_PutIntoPack(sceneId, selfId, targetId, itemId, flag, num, isBind)
	
	if(x808065_CheckPacketSpace(sceneId, selfId, targetId, num) == 1) then
	--�Ͷ���
		for i=0,num-1 do
			local bagIndex = TryRecieveItem( sceneId, selfId, itemId, QUALITY_MUST_BE_CHANGE );
			if(isBind == 1) then
				LuaFnItemBind( sceneId, selfId, bagIndex);
			end
		end
		return 1;
	else
		return 0;
	end
	
end

--����
function x808065_MessageBox( sceneId, selfId, str )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

function x808065_Printf(  sceneId, selfId, targetId, str )
		BeginEvent( sceneId );
			AddText(sceneId, str);
		EndEvent( sceneId );
		DispatchEventList( sceneId, selfId, targetId )		
end

function x808065_AddJiangjuan(sceneId, selfId, itemId)
		BeginAddItem( sceneId )
		AddItem( sceneId, itemId, 1 )
		ret = EndAddItem( sceneId, selfId )
		if ret > 0 then
			AddItemListToHuman(sceneId,selfId )
			--T�i �齱��־�м�¼....
			--��־���,���GUID,���T�n,��ȯ��ƷID
			local logstr = format("PL:%d,0x%X,%s,%d",
									 				PRIZE_LOG_XINSHOUSHITU,
									 				LuaFnGetGUID(sceneId,selfId),
									 				GetName(sceneId,selfId),
									 				itemId)
			LuaFnLogPrize(logstr)
			return 1;
		else
			return 0;
		end
end

--��ʦͽ�齱ѡ��3
function x808065_ShiTuPrizeOption3(sceneId,selfId,targetId)
	--local sname = GetName( sceneId, selfId )
	--0.�����ng����ʦ�����
	--local	nMlevel	= LuaFnGetmasterLevel( sceneId, selfId )
	--if nMlevel < 1 or nMlevel > 4 then
	--	x808065_Printf( sceneId, selfId, targetId, sname..",��Ҫ�μ���ʦ�齱�,����Ҫ��Ϊʦ�����а.�")
	--	return
	--end
	--1.�����ng����ͽ��
	--if LuaFnGetPrenticeCount( sceneId, selfId ) == 0 then
	--	x808065_Printf( sceneId, selfId, targetId, sname..",��Ҫ�μ���ʦ�齱�,���� �i�mҪ����ͽ�ܲ��а.�����ͽ��ҪT�i C�a ng߽i �̵�������40c�p��50c�pʱ������!")
	--	return 0
	--end
	--2.��ng���콱�����Ѿ��ﵽʮ����
	--����T�i ��ִ���ʼ�L�nh to� � ʱ���ж�
	--local ct = GetMissionData(sceneId, selfId, MD_SHITU_PRIZE_COUNT)
	--��ѯC�i n�y ʦ����ng����ng�н����ʼ�
	LuaFnAskNpcScriptMail(sceneId, selfId, MAIL_SHITUPRIZE)
end
