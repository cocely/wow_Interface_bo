local E, L, V, P, G, _ = unpack(ElvUI)
local AS = E:GetModule('AddOnSkins')

local format, gsub, pairs, ipairs, select, tinsert, tonumber = format, gsub, pairs, ipairs, select, tinsert, tonumber

local SkadaWindows = {}
local EmbedSystem_MainWindow = CreateFrame('Frame', 'EmbedSystem_MainWindow', UIParent)
local EmbedSystem_LeftWindow = CreateFrame('Frame', 'EmbedSystem_LeftWindow', EmbedSystem_MainWindow)
local EmbedSystem_RightWindow = CreateFrame('Frame', 'EmbedSystem_RightWindow', EmbedSystem_MainWindow)

function AS:Embed_Show()
	EmbedSystem_MainWindow:Show()
	if EmbedSystem_MainWindow.FrameName ~= nil then
		EmbedSystem_MainWindow.FrameName:Show()
	end
	if AS:CheckOption('EmbedSystemDual') then
		EmbedSystem_LeftWindow:Show()
		EmbedSystem_RightWindow:Show()
		if EmbedSystem_LeftWindow.FrameName ~= nil then
			EmbedSystem_LeftWindow.FrameName:Show()
		end
		if EmbedSystem_RightWindow.FrameName ~= nil then
			EmbedSystem_RightWindow.FrameName:Show()
		end
	end
end

function AS:Embed_Hide()
	EmbedSystem_MainWindow:Hide()
	EmbedSystem_LeftWindow:Hide()
	EmbedSystem_RightWindow:Hide()
	if EmbedSystem_MainWindow.FrameName ~= nil then
		EmbedSystem_MainWindow.FrameName:Hide()
	end
	if EmbedSystem_LeftWindow.FrameName ~= nil then
		EmbedSystem_LeftWindow.FrameName:Hide()
	end
	if EmbedSystem_RightWindow.FrameName ~= nil then
		EmbedSystem_RightWindow.FrameName:Hide()
	end
end

function AS:EmbedSystem_WindowResize()
	local DataTextSize = E.db.datatexts.rightChatPanel and 22 or 0
	local ChatTabSize = AS:CheckOption('EmbedBelowTop') and 22 or 0
	local Width = E.PixelMode and 6 or 10
	local Height = E.PixelMode and 2 or 4
	local Spacing = E.PixelMode and 3 or 7
	local Total = AS.SLE and (Spacing + ChatTabSize) or ((E.PixelMode and 6 or 12) + ChatTabSize + DataTextSize)

	EmbedSystem_MainWindow:SetSize(RightChatPanel:GetWidth() - Width, RightChatPanel:GetHeight() - Total)
	EmbedSystem_LeftWindow:SetSize(AS:CheckOption('EmbedLeftWidth') + (E.PixelMode and 1 or 0), EmbedSystem_MainWindow:GetHeight() - Height)
	EmbedSystem_RightWindow:SetSize((EmbedSystem_MainWindow:GetWidth() - AS:CheckOption('EmbedLeftWidth')) - 1, EmbedSystem_MainWindow:GetHeight() - Height)

	EmbedSystem_LeftWindow:SetPoint('RIGHT', EmbedSystem_RightWindow, 'LEFT', (E.PixelMode and 0 or -1), 0)
	EmbedSystem_RightWindow:SetPoint('RIGHT', EmbedSystem_MainWindow, 'RIGHT', 0, 0)
	EmbedSystem_MainWindow:SetPoint('BOTTOM', RightChatPanel, 'BOTTOM', 0, (AS.SLE and (Spacing - 1) or (Spacing + DataTextSize)))

	-- Dynamic Range
	if IsAddOnLoaded("ElvUI_Config") then
		E.Options.args.addonskins.args.embed.args.EmbedLeftWidth.min = floor(EmbedSystem_MainWindow:GetWidth() * .25)
		E.Options.args.addonskins.args.embed.args.EmbedLeftWidth.max = floor(EmbedSystem_MainWindow:GetWidth() * .75)
	end
end

function AS:Embed_Check(Login, NoMessage)
	if not (AS:CheckOption('EmbedSystem') or AS:CheckOption('EmbedSystemDual')) then return end
	AS:Embed_Toggle(Login, NoMessage)
	if AS:CheckOption('EmbedOmen', 'Omen') then AS:Embed_Omen() end
	if AS:CheckOption('EmbedSkada', 'Skada') then
		AS:Embed_Skada()
		if Login then
			hooksecurefunc(Skada, 'CreateWindow', AS.Embed_Skada)
			hooksecurefunc(Skada, 'DeleteWindow', AS.Embed_Skada)
			hooksecurefunc(Skada, 'UpdateDisplay', AS.Embed_Skada)
		end
	end
	if AS:CheckOption('EmbedTinyDPS', 'TinyDPS') then AS:Embed_TinyDPS() end
	if AS:CheckOption('EmbedRecount', 'Recount') then AS:Embed_Recount() end
	if AS:CheckOption('EmbedalDamageMeter', 'alDamageMeter') then AS:Embed_alDamageMeter() end
end

function AS:Embed_Toggle(Login, NoMessage)
	local MainEmbed, LeftEmbed, RightEmbed = 'NONE', 'NONE', 'NONE'
	EmbedSystem_MainWindow.FrameName = nil
	EmbedSystem_LeftWindow.FrameName = nil
	EmbedSystem_RightWindow.FrameName = nil
	if AS:CheckOption('EmbedSystem') then
		MainEmbed = AS:CheckOption('EmbedMain')
		if MainEmbed ~= 'Skada' and MainEmbed ~= 'Omen' and MainEmbed ~= 'Recount' and MainEmbed ~= 'TinyDPS' and MainEmbed ~= 'alDamageMeter' then
			EmbedSystem_MainWindow.FrameName = MainEmbed
		end
	end
	if AS:CheckOption('EmbedSystemDual') then
		LeftEmbed, RightEmbed = AS:CheckOption('EmbedLeft'), AS:CheckOption('EmbedRight')
		if LeftEmbed ~= 'Skada' and LeftEmbed ~= 'Omen' and LeftEmbed ~= 'Recount' and LeftEmbed ~= 'TinyDPS' and LeftEmbed ~= 'alDamageMeter' then
			EmbedSystem_LeftWindow.FrameName = LeftEmbed
		end
		if RightEmbed ~= 'Skada' and RightEmbed ~= 'Omen' and RightEmbed ~= 'Recount' and RightEmbed ~= 'TinyDPS' and RightEmbed ~= 'alDamageMeter' then
			EmbedSystem_RightWindow.FrameName = RightEmbed
		end
	end
	AS:DisableOption('EmbedalDamageMeter')
	AS:DisableOption('EmbedOmen')
	AS:DisableOption('EmbedRecount')
	AS:DisableOption('EmbedTinyDPS')
	AS:DisableOption('EmbedSkada')
	local Frame = nil
	if EmbedSystem_MainWindow.FrameName ~= nil then
		Frame = _G[EmbedSystem_MainWindow.FrameName]
		if Frame and Frame:IsObjectType('Frame') and not Frame:IsProtected() then
			Frame:ClearAllPoints()
			Frame:SetInside(EmbedSystem_MainWindow, 0, 0)
		end
	end
	if EmbedSystem_LeftWindow.FrameName ~= nil then
		Frame = _G[EmbedSystem_LeftWindow.FrameName]
		if Frame and Frame:IsObjectType('Frame') and not Frame:IsProtected() then
			Frame:ClearAllPoints()
			Frame:SetInside(EmbedSystem_LeftWindow, 0, 0)
		end
	end
	if EmbedSystem_RightWindow.FrameName ~= nil then
		Frame = _G[EmbedSystem_RightWindow.FrameName]
		if Frame and Frame:IsObjectType('Frame') and not Frame:IsProtected() then
			Frame:ClearAllPoints()
			Frame:SetInside(EmbedSystem_RightWindow, 0, 0)
		end
	end
	if MainEmbed == 'Skada' or LeftEmbed == 'Skada' or RightEmbed == 'Skada' then
		AS:EnableOption('EmbedSkada')
	end
	if MainEmbed == 'Omen' or LeftEmbed == 'Omen' or RightEmbed == 'Omen' then
		AS:EnableOption('EmbedOmen')
	end
	if MainEmbed == 'Recount' or LeftEmbed == 'Recount' or RightEmbed == 'Recount' then
		AS:EnableOption('EmbedRecount')
	end
	if MainEmbed == 'TinyDPS' or LeftEmbed  == 'TinyDPS' or RightEmbed == 'TinyDPS' then
		AS:EnableOption('EmbedTinyDPS')
	end
	if MainEmbed == 'alDamageMeter' or LeftEmbed  == 'alDamageMeter' or RightEmbed == 'alDamageMeter' then
		AS:EnableOption('EmbedalDamageMeter')
	end
	if Login or not NoMessage then
		local Message = format("Main: '%s'", AS:CheckOption('EmbedMain'))
		if AS:CheckOption('EmbedSystemDual') then Message = format("Left: '%s' | Right: '%s'", AS:CheckOption('EmbedLeft'), AS:CheckOption('EmbedRight')) end
		AS:Print(format("Embed System: - %s", Message))
	end
end

function AS:Embed_Recount()
	local EmbedParent = EmbedSystem_MainWindow
	if AS:CheckOption('EmbedSystemDual') then EmbedParent = AS:CheckOption('EmbedRight') == 'Recount' and EmbedSystem_RightWindow or EmbedSystem_LeftWindow end
	EmbedParent.FrameName = Recount_MainWindow

	Recount_MainWindow:SetParent(EmbedParent)
	Recount_MainWindow:ClearAllPoints()
	Recount_MainWindow:SetPoint('TOPLEFT', EmbedParent, 'TOPLEFT', 0, 6)
	Recount_MainWindow:SetPoint('BOTTOMRIGHT', EmbedParent, 'BOTTOMRIGHT', 0, 0)
	if Recount.MainWindow.backdrop then Recount.MainWindow.backdrop:SetTemplate(AS:CheckOption('TransparentEmbed') and 'Transparent' or 'Default') end
	if not AS:CheckOption('RecountBackdrop') then Recount.MainWindow.backdrop:Hide() end

	Recount.db.profile.Locked = true
	Recount.db.profile.Scaling = 1
	Recount.db.profile.ClampToScreen = true
	Recount.db.profile.FrameStrata = '2-LOW'
	Recount:SetStrataAndClamp()
	Recount:LockWindows(true)
	Recount:ResizeMainWindow()
end

function AS:Embed_Omen()
	local EmbedParent = EmbedSystem_MainWindow
	if AS:CheckOption('EmbedSystemDual') then EmbedParent = AS:CheckOption('EmbedRight') == 'Omen' and EmbedSystem_RightWindow or EmbedSystem_LeftWindow end
	EmbedParent.FrameName = OmenAnchor

	local db = Omen.db
	db.profile.Scale = 1
	db.profile.Bar.Spacing = 1
	db.profile.Background.EdgeSize = 2
	db.profile.Background.BarInset = 2
	db.profile.TitleBar.UseSameBG = true
	db.profile.ShowWith.UseShowWith = false
	db.profile.Locked = true
	db.profile.TitleBar.ShowTitleBar = true
	db.profile.FrameStrata = '2-LOW'
	Omen:OnProfileChanged(nil, db)

	OmenAnchor:StripTextures()
	AS:SkinFrame(OmenTitle, AS:CheckOption('TransparentEmbed') and 'Transparent' or 'Default')
	AS:SkinFrame(OmenBarList, AS:CheckOption('TransparentEmbed') and 'Transparent' or 'Default')
	if not AS:CheckOption('OmenBackdrop') then OmenBarList:StripTextures() end

	OmenAnchor:SetParent(EmbedParent)
	OmenAnchor:ClearAllPoints()
	OmenAnchor:SetPoint('TOPLEFT', EmbedParent, 'TOPLEFT', 0, 0)
	OmenAnchor:SetPoint('BOTTOMRIGHT', EmbedParent, 'BOTTOMRIGHT', 0, 0)
end

function AS:Embed_TinyDPS()
	local EmbedParent = EmbedSystem_MainWindow
	if AS:CheckOption('EmbedSystemDual') then EmbedParent = AS:CheckOption('EmbedRight') == 'TinyDPS' and EmbedSystem_RightWindow or EmbedSystem_LeftWindow end
	EmbedParent.FrameName = tdpsFrame

	AS:SkinFrame(tdpsFrame, AS:CheckOption('TransparentEmbed') and 'Transparent' or 'Default')
	tdpsFrame:SetParent(EmbedParent)
	tdpsFrame:SetFrameStrata('LOW')
	tdpsAnchor:ClearAllPoints()
	tdpsAnchor:Point('TOPLEFT', EmbedParent, 'TOPLEFT', 0, 0)
	tdpsAnchor:Point('BOTTOMRIGHT', EmbedParent, 'BOTTOMRIGHT', 0, 0)

	tdps.hideOOC = false
	tdps.hideIC = false
	tdps.hideSolo = false
	tdps.hidePvP = false
	tdpsRefresh()
end

function AS:Embed_alDamageMeter()
	local EmbedParent = EmbedSystem_MainWindow
	if AS:CheckOption('EmbedSystemDual') then EmbedParent = AS:CheckOption('EmbedRight') == 'alDamageMeter' and EmbedSystem_RightWindow or EmbedSystem_LeftWindow end
	EmbedParent.FrameName = alDamageMeterFrame

	dmconf.maxbars = AS:Round(EmbedParent:GetHeight() / (dmconf.barheight + dmconf.spacing))
	dmconf.width = EmbedParent:GetWidth()

	alDamageMeterFrame.backdrop:SetTemplate(AS:CheckOption('TransparentEmbed') and 'Transparent' or 'Default')
	alDamageMeterFrame.bg:Kill()
	alDamageMeterFrame:ClearAllPoints()
	alDamageMeterFrame:SetInside(EmbedParent, 2, 2)
	alDamageMeterFrame:SetParent(EmbedParent)
	alDamageMeterFrame:SetFrameStrata('LOW')
end

function AS:Embed_Skada(Login)
	wipe(SkadaWindows)
	for k, window in pairs(Skada:GetWindows()) do
		tinsert(SkadaWindows, window)
	end

	local NumberToEmbed = 0
	if AS:CheckOption('EmbedSystem') then
		NumberToEmbed = 1
	end
	if AS:CheckOption('EmbedSystemDual') then
		if AS:CheckOption('EmbedRight') == 'Skada' then NumberToEmbed = NumberToEmbed + 1 end
		if AS:CheckOption('EmbedLeft') == 'Skada' then NumberToEmbed = NumberToEmbed + 1 end
	end

	local function EmbedWindow(window, width, height, point, relativeFrame, relativePoint, ofsx, ofsy)
		if not window then return end
		local barmod = Skada.displays['bar']
		local offsety = (window.db.enabletitle and window.db.title.height or 0) + (E.PixelMode and 1 or 0)
		window.db.barwidth = width - 4
		window.db.background.height = height - (window.db.enabletitle and window.db.title.height or 0) - (E.PixelMode and 2 or 0)
		window.db.spark = false
		window.db.barslocked = true
		window.bargroup:ClearAllPoints()
		window.bargroup:SetPoint(point, relativeFrame, relativePoint, ofsx, -offsety)
		window.bargroup:SetParent(relativeFrame)
		window.bargroup:SetFrameStrata('LOW')
		if window.bargroup.backdrop then
			window.bargroup.backdrop:SetTemplate(AS:CheckOption('TransparentEmbed') and 'Transparent' or 'Default')
			if not AS:CheckOption('SkadaBackdrop') then window.bargroup.backdrop:Hide() else window.bargroup.backdrop:Show() end
		end
		barmod.ApplySettings(barmod, window)
	end

	if NumberToEmbed == 1 then
		local EmbedParent = EmbedSystem_MainWindow
		if AS:CheckOption('EmbedSystemDual') then EmbedParent = AS:CheckOption('EmbedRight') == 'Skada' and EmbedSystem_RightWindow or EmbedSystem_LeftWindow end
		EmbedWindow(SkadaWindows[1], EmbedParent:GetWidth(), EmbedParent:GetHeight(), 'TOPLEFT', EmbedParent, 'TOPLEFT', 2, 0)
		EmbedParent.FrameName = SkadaWindows[1]
	elseif NumberToEmbed == 2 then
		EmbedWindow(SkadaWindows[1], EmbedSystem_LeftWindow:GetWidth(), EmbedSystem_LeftWindow:GetHeight(), 'TOPLEFT', EmbedSystem_LeftWindow, 'TOPLEFT', 2, 0)
		EmbedSystem_LeftWindow.FrameName = SkadaWindows[1]
		EmbedWindow(SkadaWindows[2], EmbedSystem_RightWindow:GetWidth(), EmbedSystem_RightWindow:GetHeight(), 'TOPLEFT', EmbedSystem_RightWindow, 'TOPLEFT', 2, 0)
		EmbedSystem_RightWindow.FrameName = SkadaWindows[2]
	end
end

function AS:EmbedInit()
	AS:EmbedSystem_WindowResize()
	AS:Embed_Check(true)
	EmbedSystem_MainWindow:SetScript('OnShow', AS.Embed_Show)
	EmbedSystem_MainWindow:SetScript('OnHide', AS.Embed_Hide)
	if AS:CheckOption('EmbedOoC') and not InCombatLockdown() then AS:Embed_Hide() end

	hooksecurefunc(RightChatPanel, 'SetSize', AS.EmbedSystem_WindowResize)
	RightChatToggleButton:SetScript('OnClick', function(self, btn)
		if btn == 'RightButton' then
			if EmbedSystem_MainWindow:IsShown() then
				EmbedSystem_MainWindow:Hide()
				if ChatFrame4Hide then ChatFrame4Tab:Show() end
			else
				EmbedSystem_MainWindow:Show()
				if ChatFrame4Hide then ChatFrame4Tab:Hide() end
			end
		else
			if E.db[self.parent:GetName()..'Faded'] then
				E.db[self.parent:GetName()..'Faded'] = nil
				UIFrameFadeIn(self.parent, 0.2, self.parent:GetAlpha(), 1)
				UIFrameFadeIn(self, 0.2, self:GetAlpha(), 1)
			else
				E.db[self.parent:GetName()..'Faded'] = true
				UIFrameFadeOut(self.parent, 0.2, self.parent:GetAlpha(), 0)
				UIFrameFadeOut(self, 0.2, self:GetAlpha(), 0)
				self.parent.fadeInfo.finishedFunc = self.parent.fadeFunc
			end
		end
	end)

	RightChatToggleButton:SetScript('OnEnter', function(self, ...)
		if E.db[self.parent:GetName()..'Faded'] then
			self.parent:Show()
			UIFrameFadeIn(self.parent, 0.2, self.parent:GetAlpha(), 1)
			UIFrameFadeIn(self, 0.2, self:GetAlpha(), 1)
		end
		GameTooltip:SetOwner(self, 'ANCHOR_TOPRIGHT', 0, 4)
		GameTooltip:ClearLines()
		GameTooltip:AddDoubleLine(L['Left Click:'], L['Toggle Chat Frame'], 1, 1, 1)
		GameTooltip:AddDoubleLine(L['Right Click:'], L['Toggle Embedded Addon'], 1, 1, 1)
		GameTooltip:Show()
	end)
end

local EmbedOoCCombatStart
function AS:EmbedEnterCombat(event)
	EmbedOoCCombatStart = true
	if AS:CheckOption('EmbedOoC') then
		AS:Embed_Show()
	end
end

function AS:EmbedExitCombat(event)
	EmbedOoCCombatStart = false
	if AS:CheckOption('EmbedOoC') then
		AS:Delay(10, function()
			if not EmbedOoCCombatStart then
				AS:Embed_Hide()
			end
		end)
	end
end
