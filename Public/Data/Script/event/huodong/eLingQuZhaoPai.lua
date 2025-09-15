--------------------------------------------
--��m�t L�nh Chi�u b�i��ű�
--Created By �ŵ·�
--------------------------------------------

--�ű���
x808090_g_ScriptId = 808090

--�������ҵ�c�p����
x808090_g_LowerLimitLevel = 30

--���ͻ֪ͨ�ʼ�ʱ����
x808090_g_MailStartDayTime = 8121		--�����ʼ���ʼʱ�� 2008-05-01
x808090_g_MailEndDayTime = 8127			--�����ʼ�����ʱ�� 2008-05-07

--Chi�u b�iID��
x808090_g_ZhaoPaiIDT = {
													{30008021,	"Chi�u b�i: Ngh� h�ng ��ng"},
													{30008022,	"Chi�u b�i: �ao ki�m tranh phong"},
													{30008023,	"Chi�u b�i: Thi�t gi�p �ng b�ch"},
													{30008024,	"Chi�u b�i: Tr�n c�m d� th�"},
													{30008025,	"Chi�u b�i: Kim t� chi�u b�i"}
												}

--�ɹ�L�nh Chi�u b�i����
x808090_g_ZhaoPaiType = 5												

--ÿ��L�nh Chi�u b�ito� � ����
x808090_g_ZhaoPaiCount = 1

--L�nh Chi�u b�iʱ��Ч��ID(��Ч��������Ч)
x808090_g_GetZhaoPaiImpactID = 49


--**********************************
--������ں���
--**********************************
function x808090_OnDefaultEvent( sceneId, selfId, targetId )
	local ItemID = GetNumText()
	if(ItemID == 10) then	--���m�t ������̯
		BeginEvent(sceneId)
			AddText(sceneId,"#{LQZP_INTRO}")
			AddNumText( sceneId, x808090_g_ScriptId, "L�nh Chi�u b�i", 6, 12 )
			AddNumText( sceneId, x808090_g_ScriptId, "Hu� b�", 6, 13 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)		
	elseif(ItemID == 11) then	--����
		BeginEvent(sceneId)
			AddText(sceneId,"#{LQZP_HELP}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif(ItemID == 12) then
		--����Chi�u b�i
		x808090_GeiZhaoPai(sceneId, selfId, targetId)
	elseif(ItemID == 13) then	--"��������"
		--�رս���
		DispatchUICommand(sceneId, selfId, 1000)
	end	
end

--**********************************
--�о��¼�
--**********************************
function x808090_OnEnumerate( sceneId, selfId, targetId )
	if x808090_CheckRightTime() == 1 then	--��ȷto� � �ʱ��
		AddNumText(sceneId, x808090_g_ScriptId, "M�i ng߶i c�ng �n b�y b�n", 6, 10 )
		AddNumText(sceneId, x808090_g_ScriptId, "V� ho�t �ng M�i ng߶i c�ng �n b�y b�n", 11, 11 )
	end
end

--**********************************
--��⵱ǰ��ng����ng�ʱ��
--**********************************
function x808090_CheckRightTime()
	if GetDayTime() >= x808090_g_MailStartDayTime then
		return 1
	else
		return 0
	end
end

--**********************************
--����Chi�u b�i
--**********************************
function x808090_GeiZhaoPai(sceneId, selfId, targetId)	
	--����c�p��ng��ﵽҪ��
	if GetLevel( sceneId, selfId ) < x808090_g_LowerLimitLevel then
		BeginEvent( sceneId )
			AddText( sceneId, "#{LQZP_LOWERLIMITLEVEL}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )		
		return
	end
	
	--��⵱����ng��L�nh ��"Chi�u b�i":ÿ��ֻ����1��.	
	local LastDayValue = GetMissionData(sceneId, selfId, MD_LINGQUZHAOPAI_LASTDATE)--�ϴ�L�nh to� � ����ֵ(����Ϊ��λ)
	local CurDayValue = GetDayTime()--��ǰʱ��ֵ(����Ϊ��λ)
	if(CurDayValue <= LastDayValue) then	--���m�t ����
		BeginEvent( sceneId )
			AddText( sceneId, "#{LQZP_ONCEPERDAY}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end	
	
	--��ⱳ����ng���еط�
	if (LuaFnGetPropertyBagSpace( sceneId, selfId ) < x808090_g_ZhaoPaiCount) then
		BeginEvent( sceneId )
			AddText( sceneId, "#{LQZP_BAGFULL}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )--������ʾ"�ռ䲻��"

		BeginEvent( sceneId )
			AddText( sceneId, "#{LQZP_BAGFULLTIP}" )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )	--��Ŀ��ʾ"�ռ䲻��"
		return
	end	
	
	--����ͨ��	
	--��¼L�nh to� � ʱ��,��֤m�t ��m�t ��
	SetMissionData(sceneId, selfId, MD_LINGQUZHAOPAI_LASTDATE, CurDayValue)
	
	--�������m�t c�i"Chi�u b�i"
	local randValue = random(x808090_g_ZhaoPaiType)							--�漴ֵ
	local randZhaoPaiID = x808090_g_ZhaoPaiIDT[randValue][1]		--�漴��ȡto� � Chi�u b�iID
	local randZhaoPaiName = x808090_g_ZhaoPaiIDT[randValue][2]	--�����ȡto� � Chi�u b�i����
	
	BeginAddItem(sceneId)
		AddItem(sceneId, randZhaoPaiID, x808090_g_ZhaoPaiCount)
	EndAddItem(sceneId, selfId)
	AddItemListToHuman(sceneId, selfId)--����Ʒ�����
	
	--��m�t c�i��������to� � ��Ч
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808090_g_GetZhaoPaiImpactID, 0 )
	
	--������,�½���:�������°�:)
	local str = format("    C�i n�y #G%s#W ng߽i nh�n l�y �i! Khi b�y b�n s� d�ng, s� c� hi�u qu� kh�ng t߷ng ���c!", randZhaoPaiName)
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )	
	
	--��Ŀ��ʾ
	str = format("�� ��t ���cm�t c�i%s.", randZhaoPaiName)	
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
	
	--��������Լ�
	BroadMsgByChatPipe( sceneId, selfId, str, MSG2PLAYER_PARA )
	
	--ͳ��"Chi�u b�i"L�nh �˴�
	AuditGeiZhaoPai(sceneId, selfId, tostring(randZhaoPaiName))
end

--**********************************
--������ҷ��ʼ�
--**********************************
function x808090_OnPlayerLogin( sceneId, selfId )
	local curDayTime = GetDayTime()	
	if curDayTime >= x808090_g_MailStartDayTime and curDayTime <= x808090_g_MailEndDayTime then	--T�i ���ʼ�ʱ��
	
		local HaveMail = GetMissionData(sceneId, selfId, MD_LINGQUZHAOPAI_HAVESENDMAIL)	--��ȡ��¼ֵ
		if(HaveMail == 0)then		--��֤���T�i ��m�t �ڼ��½,ֻ���յ�m�t ���ʼ�
			LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LQZP_HUODONGMAIL}" )
			SetMissionData(sceneId, selfId, MD_LINGQUZHAOPAI_HAVESENDMAIL, 1)	--��¼�յ����ʼ���
		end
	end	
end
