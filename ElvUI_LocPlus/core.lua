--[[
-- ElvUI Location Plus --
a plugin for ElvUI, that adds player location and coords + 2 Datatexts

- Info, requests, bugs: http://www.tukui.org/addons/index.php?act=view&id=56
----------------------------------------------------------------------------------
- Credits:
	-Elv, Blazeflack, for showing me the best way to do this
	-Sinaris(idea from his TukUI edit)
	-iceeagle, grdn, for digging their great code and making this possible.
	-Tukui and Elvui forum community.
----------------------------------------------------------------------------------
- ToDo:

]]--

local E, L, V, P, G, _ = unpack(ElvUI); --Inport: Engine, Locales, PrivateDB, ProfileDB, GlobalDB, Localize Underscore
local LPB = E:NewModule('LocationPlus');
local DT = E:GetModule('DataTexts');
local LSM = LibStub("LibSharedMedia-3.0");
local EP = LibStub("LibElvUIPlugin-1.0")
local addon, ns = ...

local tourist = LibStub("LibTourist-3.0");

local left_dtp = CreateFrame('Frame', 'LeftCoordDtPanel', E.UIParent)
local right_dtp = CreateFrame('Frame', 'RightCoordDtPanel', E.UIParent)

local COORDS_WIDTH = 30 -- Coord panels width
local classColor = RAID_CLASS_COLORS[E.myclass] -- for text coloring

LPB.version = GetAddOnMetadata("ElvUI_LocPlus", "Version")

if E.db.locplus == nil then E.db.locplus = {} end

do
	DT:RegisterPanel(LeftCoordDtPanel, 1, 'ANCHOR_BOTTOM', 0, -4)
	DT:RegisterPanel(RightCoordDtPanel, 1, 'ANCHOR_BOTTOM', 0, -4)

	L['RightCoordDtPanel'] = L["LocationPlus Right Panel"];
	L['LeftCoordDtPanel'] = L["LocationPlus Left Panel"];

	-- Setting default datatexts
	P.datatexts.panels.RightCoordDtPanel = 'Time'
	P.datatexts.panels.LeftCoordDtPanel = 'Durability'
end

-- Status
local function LocStatus()
	local status
	local statusText
	local r, g, b = 1, 1, 0
	local pvpType, _, factionName = GetZonePVPInfo()
		if (pvpType == "sanctuary") then
			status = SANCTUARY_TERRITORY
			r, g, b = 0.41, 0.8, 0.94
		elseif(pvpType == "arena") then
			status = ARENA
			r, g, b = 1, 0.1, 0.1
		elseif(pvpType == "friendly") then
			status = FRIENDLY.." "..FACTION_CONTROLLED_TERRITORY:format(factionName)
			r, g, b = 0.1, 1, 0.1
		elseif(pvpType == "hostile") then
			status = HOSTILE.." "..FACTION_CONTROLLED_TERRITORY:format(factionName)
			r, g, b = 1, 0.1, 0.1
		elseif(pvpType == "contested") then
			status = CONTESTED_TERRITORY
			r, g, b = 1, 0.7, 0.10
		elseif(pvpType == "combat" ) then
			status = COMBAT
			r, g, b = 1, 0.1, 0.1
		else
			status = CONTESTED_TERRITORY
		end

	statusText = string.format("|cff%02x%02x%02x%s|r", r*255, g*255, b*255, status)
	return statusText
end

-- Dungeon coords
local function LocDungCoords(zone)
	local z, x, y = "", 0, 0;
	local dcoords
	
	if tourist:IsInstance(zone) then
		z, x, y = tourist:GetEntrancePortalLocation(zone);
	end
	
	if z == nil then
		dcoords = ""
	elseif E.db.locplus.ttcoords then
		x = tonumber(E:Round(x, 0))
		y = tonumber(E:Round(y, 0))		
		dcoords = string.format(" (%d, %d)", x, y)
	else 
		dcoords = ""
	end

	return dcoords
end

-- PvP/Raid filter
 local function LocPvPorRaid(zone)

	local isPvP, isRaid;
	
	isPvP = nil;
	isRaid = nil;
	
	if(tourist:IsArena(zone) or tourist:IsBattleground(zone)) then
		if E.db.locplus.tthidepvp then
			return;
		end
		isPvP = true;
	end
	
	if(not isPvP and tourist:GetInstanceGroupSize(zone) >= 10) then
		if E.db.locplus.tthideraid then
			return
		end
		isRaid = true;
	end
	
	return (isPvP and "|cffff0000 "..PVP.."|r" or "")..(isRaid and "|cffff4400 "..RAID.."|r" or "")

end

-- Recommended zones
local function LocRecZones(zone)

	local low, high = tourist:GetLevel(zone)
	local r, g, b = tourist:GetLevelColor(zone)
	local zContinent = tourist:GetContinent(zone)
	
	if LocPvPorRaid(zone) == nil then return end
	
	GameTooltip:AddDoubleLine(
	"|cffffffff"..zone
	..LocPvPorRaid(zone) or "",
	string.format("|cff%02xff00%s|r", continent == zContinent and 0 or 255, zContinent)
	..(" |cff%02x%02x%02x%s|r"):format(r *255, g *255, b *255,(low == high and low or ("%d-%d"):format(low, high))));

end

-- Dungeons in the zone
local function LocDungZones(zone)

	local low, high = tourist:GetLevel(zone)
	local r, g, b = tourist:GetLevelColor(zone)
	local groupSize = tourist:GetInstanceGroupSize(zone)
	local altGroupSize = tourist:GetInstanceAltGroupSize(zone)
	local groupSizeStyle = (groupSize > 0 and string.format("|cFFFFFF00|r (%d", groupSize) or "")
	local altGroupSizeStyle = (altGroupSize > 0 and string.format("|cFFFFFF00|r/%d", altGroupSize) or "")

	if LocPvPorRaid(zone) == nil then return end
	
	GameTooltip:AddDoubleLine(
	"|cffffffff"..zone
	..(groupSizeStyle or "")
	..(altGroupSizeStyle or "").."-"..PLAYER..") "
	..LocDungCoords(zone)
	..LocPvPorRaid(zone) or "",
	("|cff%02x%02x%02x%s|r"):format(r *255, g *255, b *255,(low == high and low or ("%d-%d"):format(low, high))))

end

-- Recommended Dungeons
local function LocRecDung(zone)
		
	local low, high = tourist:GetLevel(zone);	
	local r, g, b = tourist:GetLevelColor(zone);
	local instZone = tourist:GetInstanceZone(zone);
	
	if LocPvPorRaid(zone) == nil then return end
	
	if instZone == nil then
		instZone = ""
	else
		instZone = "|cFFFFA500 ("..instZone..")"
	end
	
	GameTooltip:AddDoubleLine(
	"|cffffffff"..zone
	..instZone
	..LocDungCoords(zone)
	..LocPvPorRaid(zone) or "",
	("|cff%02x%02x%02x%s|r"):format(r *255, g *255, b *255,(low == high and low or ("%d-%d"):format(low, high))))

end

-- fishing
local function LocFishing(minFish)
	local zt = GetRealZoneText() or UNKNOWN;
	local name = UnitName("player")
	local curPos = (zt..": ") or "";
	
	local _, _, _, fishing = GetProfessions()
	local r, g, b = 1, 0, 0
	local r1, g1, b1 = 1, 0, 0
	local playerFlvl
	if fishing ~= nil then
		_, _, playerFlvl = GetProfessionInfo(fishing)
		if minFish < playerFlvl then
			r, g, b = 0, 1, 0
			r1, g1, b1 = 0, 1, 0
		elseif minFish == playerFlvl then
			r, g, b = 1, 1, 0
			r1, g1, b1 = 1, 1, 0
		end
	end

	return (name..": "..string.format("|cff%02x%02x%02x%d|r", r1*255, g1*255, b1*255, playerFlvl).." - "..curPos..(string.format("|cff%02x%02x%02x%d|r", r*255, g*255, b*255, minFish)))

end

-- Zone level range
local function LocLevelRange(zoneText)
	local low, high = tourist:GetLevel(zoneText)
	if low >= 1 and high >= 1 then
		local r, g, b = tourist:GetLevelColor(zoneText)
		return string.format("|cff%02x%02x%02x %d-%d|r", r*255, g*255, b*255, low, high) or ""
	end
	
	return ""
end

function LPB:UpdateTooltip()
	
	local mapID = GetCurrentMapAreaID()
	local zoneText = GetMapNameByID(mapID) or UNKNOWN;
	local curPos = (zoneText.." ") or "";
	
	GameTooltip:ClearLines()
	
	-- Zone
	GameTooltip:AddDoubleLine(L["Zone : "], zoneText, 1, 1, 1, selectioncolor)
	
	-- Continent
	GameTooltip:AddDoubleLine(CONTINENT.." : ", tourist:GetContinent(zoneText), 1, 1, 1, selectioncolor)
	
	-- Home
	GameTooltip:AddDoubleLine(HOME.." :", GetBindLocation(), 1, 1, 1, selectioncolor)
	
	-- Status
	if E.db.locplus.ttst then
		GameTooltip:AddDoubleLine(STATUS.." :", LocStatus(statusText), 1, 1, 1)
	end
	
    -- Zone level range
	if E.db.locplus.ttlvl then
		local checklvl = LocLevelRange(zoneText)
		if checklvl ~= "" then
			GameTooltip:AddDoubleLine(LEVEL_RANGE.." : ", checklvl, 1, 1, 1, r, g, b)
		end
	end
	
	-- Fishing
	if E.db.locplus.fish then
		local minFish = tourist:GetFishingLevel(zoneText)
		if minFish then
			GameTooltip:AddDoubleLine(PROFESSIONS_FISHING.." : ", LocFishing(minFish), 1, 1, 1, r, g, b)
		end
	end
	
	-- Battle Pet Levels
	if E.db.locplus.petlevel then
		local low,high = tourist:GetBattlePetLevel(zoneText)
		if low ~= nil or high ~= nil then
			GameTooltip:AddDoubleLine(L["Battle Pet level"].. " :", low == high and low or string.format("%d-%d", low, high), 1, 1, 1, selectioncolor)
		end
	end

	-- Recommended zones
	if E.db.locplus.ttreczones then
		GameTooltip:AddLine(" ")
		GameTooltip:AddLine(L["Recommended Zones :"], selectioncolor)
	
		for zone in tourist:IterateRecommendedZones() do
			LocRecZones(zone);
		end		
	end
	
	-- Instances in the zone
	if E.db.locplus.ttinst and tourist:DoesZoneHaveInstances(zoneText) then 
		GameTooltip:AddLine(" ")
		GameTooltip:AddLine(format(curPos..DUNGEONS.." :"), selectioncolor)
			
		for zone in tourist:IterateZoneInstances(zoneText) do
			LocDungZones(zone);
		end	
	end
	
	-- Recommended Instances
	local level = UnitLevel('player')
	if E.db.locplus.ttrecinst and tourist:HasRecommendedInstances() and level >= 15 then
		GameTooltip:AddLine(" ")
		GameTooltip:AddLine(L["Recommended Dungeons :"], selectioncolor)
			
		for zone in tourist:IterateRecommendedInstances() do
			LocRecDung(zone);
		end
	end
	
	-- Hints
	if E.db.locplus.tt then
		if E.db.locplus.tthint then
			GameTooltip:AddLine(" ")
			GameTooltip:AddDoubleLine(L["Click : "], L["Toggle WorldMap"],0.7,0.7,1,0.7,0.7,1)
			GameTooltip:AddDoubleLine(L["RightClick : "], L["Toggle Configuration"],0.7,0.7,1,0.7,0.7,1)
			GameTooltip:AddDoubleLine(L["ShiftClick : "], L["Send position to chat"],0.7,0.7,1,0.7,0.7,1)
			GameTooltip:AddDoubleLine(L["CtrlClick : "], L["Toggle Datatexts"],0.7,0.7,1,0.7,0.7,1)
		end
		GameTooltip:Show()
	else
		GameTooltip:Hide()
	end
	
end

-- mouse over the location panel
local function LocPanel_OnEnter(self,...)
	GameTooltip:SetOwner(self, "ANCHOR_BOTTOM", 0, -4)
	GameTooltip:ClearAllPoints()
	GameTooltip:SetPoint("BOTTOM", self, "BOTTOM", 0, 0)
	
	if InCombatLockdown() and E.db.locplus.ttcombathide then
		GameTooltip:Hide()
	else
		LPB:UpdateTooltip()
	end
	
	if E.db.locplus.mouseover then
		UIFrameFadeIn(self, 0.2, self:GetAlpha(), 1)
	end
end

-- mouse leaving the location panel
local function LocPanel_OnLeave(self,...)
	GameTooltip:Hide()
	if E.db.locplus.mouseover then
		UIFrameFadeOut(self, 0.2, self:GetAlpha(), E.db.locplus.malpha)
	end
end

-- Hide in combat, after fade function ends
local function LocPanelOnFade()
	LocationPlusPanel:Hide()
end

function LPB:CreateCoords()
	local x, y = GetPlayerMapPosition("player")
	local dig
	
	if E.db.locplus.dig then
		dig = 2
	else
		dig = 0
	end
	
	x = tonumber(E:Round(100 * x, dig))
	y = tonumber(E:Round(100 * y, dig))
	
	return x, y
end

-- clicking the location panel
local function LocPanel_OnClick(self, btn)
	zoneText = GetRealZoneText() or UNKNOWN;
	if btn == "LeftButton" then	
		if IsShiftKeyDown() then
			local edit_box = ChatEdit_ChooseBoxForSend()
			local x, y = LPB:CreateCoords()
			local message
			local coords = x..", "..y
				if zoneText ~= GetSubZoneText() then
					message = string.format("%s: %s (%s)", zoneText, GetSubZoneText(), coords)
				else
					message = string.format("%s (%s)", zoneText, coords)
				end
			ChatEdit_ActivateChat(edit_box)
			edit_box:Insert(message) 
		else
			if IsControlKeyDown() then
				LeftCoordDtPanel:SetScript("OnShow", function(self) E.db.locplus.dtshow = true; end)
				LeftCoordDtPanel:SetScript("OnHide", function(self) E.db.locplus.dtshow = false; end)
				ToggleFrame(LeftCoordDtPanel)
				ToggleFrame(RightCoordDtPanel)
			else 
				ToggleFrame(WorldMapFrame)
			end
		end
	end
	if btn == "RightButton" then
		E:ToggleConfig()
	end
end

-- Custom text color. Credits: Edoc
local color = { r = 1, g = 1, b = 1 }
local function unpackColor(color)
	return color.r, color.g, color.b
end

local FISH_ICON = "|TInterface\\AddOns\\ElvUI_LocPlus\\media\\fish.tga:14:14|t"
local PET_ICON = "|TInterface\\AddOns\\ElvUI_LocPlus\\media\\pet.tga:14:14|t"
local LEVEL_ICON = "|TInterface\\AddOns\\ElvUI_LocPlus\\media\\levelup.tga:14:14|t"

-- Simple PetBattle Range
local function LocSimplePet(zoneText)

	local slevel = tourist:GetBattlePetLevelString(zoneText)
	if slevel ~= nil then
		local dlevel = string.format(" (%s) ", slevel) or ""
		
		if E.db.locplus.showicon then
			return dlevel..PET_ICON
		else
			return dlevel
		end
	end
	
	return ""
end

-- Zone level range
local function LocSimpleLevelRange(zoneText)
	local zoneText = GetRealZoneText()
	local low, high = tourist:GetLevel(zoneText)
	if low >= 1 and high >= 1 then
		local r, g, b = tourist:GetLevelColor(zoneText)
		local dlevel = string.format("|cff%02x%02x%02x (%d-%d) |r", r*255, g*255, b*255, low, high) or ""
		
		if E.db.locplus.showicon then
			return dlevel..LEVEL_ICON
		else
			return dlevel
		end
	end
	
	return ""
end

-- Simple Fishing Level
local function LocSimpleFishing(minFish)
	local zoneText = GetRealZoneText()
	local minFish = tourist:GetFishingLevel(zoneText)
	local _, _, _, fishing = GetProfessions()
	local r, g, b = 1, 0, 0
	local r1, g1, b1 = 1, 0, 0
	local playerFlvl
	if minFish then
		if fishing ~= nil then
			_, _, playerFlvl = GetProfessionInfo(fishing)
			if minFish < playerFlvl then
				r, g, b = 0, 1, 0
				r1, g1, b1 = 0, 1, 0
			elseif minFish == playerFlvl then
				r, g, b = 1, 1, 0
				r1, g1, b1 = 1, 1, 0
			end
		end
		
		local dfish = string.format(" (|cff%02x%02x%02x%d|r", r1*255, g1*255, b1*255, playerFlvl).."-"..(string.format("|cff%02x%02x%02x%d|r) ", r*255, g*255, b*255, minFish)) or ""
		if E.db.locplus.showicon then
			return dfish..FISH_ICON
		else
			return dfish
		end
	else
		return ""
	end
end

-- Location panel
function LPB:CreateLocPanel()
	local loc_panel = CreateFrame('Frame', 'LocationPlusPanel', E.UIParent)
	loc_panel:Width(E.db.locplus.lpwidth)
	loc_panel:SetHeight(E.db.locplus.dtheight)
	loc_panel:Point('TOP', E.UIParent, 'TOP', 0, -E.mult -22)
	loc_panel:SetFrameStrata('LOW')
	loc_panel:EnableMouse(true)
	loc_panel:SetScript('OnEnter', LocPanel_OnEnter) 
	loc_panel:SetScript('OnLeave', LocPanel_OnLeave)
	loc_panel:SetScript('OnMouseUp', LocPanel_OnClick)

	-- Location Text
	loc_panel.Text = LocationPlusPanel:CreateFontString(nil, "LOW")
	loc_panel.Text:Point("CENTER", 0, 0)
	
	loc_panel:SetScript("OnUpdate", function(self,event,...)
		local subZoneText = GetMinimapZoneText() or ""
		local zoneText = GetRealZoneText() or UNKNOWN;
		local displayLine

		-- zone and subzone
		if E.db.locplus.both then
			if (subZoneText ~= "") and (subZoneText ~= zoneText) then
				displayLine = zoneText .. ": " .. subZoneText
			else
				displayLine = subZoneText
			end
		else
			displayLine = subZoneText
		end
		
		-- Show Other (Level, Battle Pet Level, Fishing)
		if E.db.locplus.displayOther == 'RLEVEL' then
			local displaylvl = LocSimpleLevelRange(zoneText) or ""
			if displaylvl ~= "" then
				displayLine = displayLine..displaylvl
			end
		elseif E.db.locplus.displayOther == 'PET' then
			local displaypet = LocSimplePet(zoneText) or ""
			if displaypet ~= "" then
				displayLine = displayLine..displaypet
			end
		elseif E.db.locplus.displayOther == 'PFISH' then
			local displayfish = LocSimpleFishing(minFish) or ""
			if displayfish ~= "" then
				displayLine = displayLine..displayfish
			end
		else
			displayLine = displayLine
		end
		
		-- Coloring
		if displayLine ~= "" then
			local inInstance, _ = IsInInstance()
			local pvpType = GetZonePVPInfo()
			local r1, g1, b1 = tourist:GetFactionColor(zoneText)
			
			self.Text:SetText(displayLine)
			
			if E.db.locplus.customColor == 1 then
				if inInstance then
					self.Text:SetText(string.format("|cff%02x%02x%02x%s|r", 255, 77, 0, displayLine)) -- Redish color when in an instance
				elseif (pvpType == "sanctuary") then
					self.Text:SetText(string.format("|cff%02x%02x%02x%s|r", 104.55, 204, 239.7, displayLine)) -- LibTourist sanctuary coloring fix
				else
					self.Text:SetTextColor(r1*255, g1*255, b1*255)
				end
			elseif E.db.locplus.customColor == 2 then
				self.Text:SetTextColor(classColor.r, classColor.g, classColor.b)
			else
				self.Text:SetTextColor(unpackColor(E.db.locplus.userColor))
			end		
		end
		
		-- Sizing
		local fixedwidth = (E.db.locplus.lpwidth + 18)
		local autowidth = (self.Text:GetStringWidth() + 18)
		
		if E.db.locplus.lpauto then
			self:SetWidth(autowidth)
			self.Text:SetWidth(autowidth)
		else
			self:SetWidth(fixedwidth)
			if E.db.locplus.trunc then
				self.Text:SetWidth(fixedwidth - 18)
				self.Text:SetWordWrap(false)
			elseif autowidth > fixedwidth then
				self:SetWidth(autowidth)
				self.Text:SetWidth(autowidth)
			end
		end		
	end)
	
	-- Hide in combat/Pet battle
	loc_panel:SetScript("OnEvent",function(self, event)
		if event == "PET_BATTLE_OPENING_START" then
			UIFrameFadeOut(self, 0.2, self:GetAlpha(), 0)
			self.fadeInfo.finishedFunc = LocPanelOnFade
		elseif event == "PET_BATTLE_CLOSE" then
			if E.db.locplus.mouseover then
				UIFrameFadeIn(self, 0.2, self:GetAlpha(), E.db.locplus.malpha)
			else
				UIFrameFadeIn(self, 0.2, self:GetAlpha(), 1)
			end
			self:Show()
		elseif E.db.locplus.combat then
			if event == "PLAYER_REGEN_DISABLED" then
				UIFrameFadeOut(self, 0.2, self:GetAlpha(), 0)
				self.fadeInfo.finishedFunc = LocPanelOnFade
			elseif event == "PLAYER_REGEN_ENABLED" then
				if E.db.locplus.mouseover then
					UIFrameFadeIn(self, 0.2, self:GetAlpha(), E.db.locplus.malpha)
				else
					UIFrameFadeIn(self, 0.2, self:GetAlpha(), 1)
				end
				self:Show()
			end
		end
	end)

	-- Mover
	E:CreateMover(LocationPlusPanel, "LocationMover", L["LocationPlus "])
end

local function LocHideDt()
	if E.db.locplus.dtshow then
		RightCoordDtPanel:Show()
		LeftCoordDtPanel:Show()
	else
		RightCoordDtPanel:Hide()
		LeftCoordDtPanel:Hide()
	end
end

-- mouse over option
function LPB:MouseOver()
	if E.db.locplus.mouseover then
		LocationPlusPanel:SetAlpha(E.db.locplus.malpha)
	else
		LocationPlusPanel:SetAlpha(1)
	end
end

-- datatext panels width
function LPB:DTWidth()
	LeftCoordDtPanel:SetWidth(E.db.locplus.dtwidth)
	RightCoordDtPanel:SetWidth(E.db.locplus.dtwidth)
end

-- all panels height
function LPB:DTHeight()
	if E.db.locplus.ht then
		LocationPlusPanel:SetHeight((E.db.locplus.dtheight)+6)
	else
		LocationPlusPanel:SetHeight(E.db.locplus.dtheight)
	end

	LeftCoordDtPanel:SetHeight(E.db.locplus.dtheight)
	RightCoordDtPanel:SetHeight(E.db.locplus.dtheight)

	XCoordsPanel:SetHeight(E.db.locplus.dtheight)
	YCoordsPanel:SetHeight(E.db.locplus.dtheight)
end

-- Fonts
function LPB:LocCoordPanelFont()

	E["media"].lpFont = LSM:Fetch("font", E.db.locplus.lpfont)

	local panelsToFont = {LocationPlusPanel, XCoordsPanel, YCoordsPanel}
	for _, frame in pairs(panelsToFont) do
		frame.Text:FontTemplate(E["media"].lpFont, E.db.locplus.lpfontsize, E.db.locplus.lpfontflags)
	end

	local dtToFont = {RightCoordDtPanel, LeftCoordDtPanel}
	for panelName, panel in pairs(dtToFont) do
		for i=1, panel.numPoints do
			local pointIndex = DT.PointLocation[i]
			panel.dataPanels[pointIndex].text:FontTemplate(E["media"].lpFont, E.db.locplus.lpfontsize, E.db.locplus.lpfontflags)
			panel.dataPanels[pointIndex].text:SetPoint("CENTER", 0, 1)
		end
	end
end

-- Enable/Disable shadows
function LPB:ShadowPanels()
	local panelsToAddShadow = {LocationPlusPanel, XCoordsPanel, YCoordsPanel, LeftCoordDtPanel, RightCoordDtPanel}
	
	for _, frame in pairs(panelsToAddShadow) do
		frame:CreateShadow('Default')
		if E.db.locplus.shadow then
			frame.shadow:Show()
		else
			frame.shadow:Hide()
		end
	end
	
	local SPACING
	
	if E.db.locplus.shadow then
		SPACING = 2
	else
		SPACING = 1
	end
	
	XCoordsPanel:Point('RIGHT', LocationPlusPanel, 'LEFT', -SPACING, 0)
	YCoordsPanel:Point('LEFT', LocationPlusPanel, 'RIGHT', SPACING, 0)

	LeftCoordDtPanel:Point('RIGHT', XCoordsPanel, 'LEFT', -SPACING, 0)
	RightCoordDtPanel:Point('LEFT', YCoordsPanel, 'RIGHT', SPACING, 0)
end

-- Toggle transparency
function LPB:TransparentPanels()
	local panelsToAddTrans = {LocationPlusPanel, XCoordsPanel, YCoordsPanel, LeftCoordDtPanel, RightCoordDtPanel}
	
	for _, frame in pairs(panelsToAddTrans) do
		frame:StripTextures(frame)
		if not E.db.locplus.noback then 
			E.db.locplus.shadow = false
		elseif E.db.locplus.trans then
			frame:SetTemplate('Transparent')
		else
			frame:SetTemplate('Default', true)
		end
	end
end

-- Coord panels
function LPB:CreateCoordPanels()

	-- X Coord panel
	local coordsX = CreateFrame('Frame', "XCoordsPanel", LocationPlusPanel)
	coordsX:Width(COORDS_WIDTH)
	coordsX:SetHeight(E.db.locplus.dtheight)
	coordsX:SetFrameStrata('LOW')
	coordsX.Text = XCoordsPanel:CreateFontString(nil, "LOW")
	coordsX.Text:Point("CENTER", 1, 0)

	-- Y Coord panel
	local coordsY = CreateFrame('Frame', "YCoordsPanel", LocationPlusPanel)
	coordsY:Width(COORDS_WIDTH)
	coordsY:SetHeight(E.db.locplus.dtheight)
	coordsY:SetFrameStrata('LOW')
	coordsY.Text = YCoordsPanel:CreateFontString(nil, "LOW")
	coordsY.Text:Point("CENTER", 1, 0)

	self:CoordsColor()

	local ela = 0

	local cUpdate = function(self,t)
		ela = ela - t
		if ela > 0 then return end
			local x, y = LPB:CreateCoords()
			local xt,yt

			if x == 0 and y == 0 then
				coordsX.Text:SetText("-")
				coordsY.Text:SetText("-")
			else
			if x < 10 then
				xt = "0"..x
			else
				xt = x
			end
			
			if y < 10 then
				yt = "0"..y
			else
				yt = y
			end
			coordsX.Text:SetText(xt)
			coordsY.Text:SetText(yt)
		end
	end
	ela = .2

	XCoordsPanel:SetScript("OnUpdate", cUpdate)

end

-- Coord panels width
function LPB:CoordsDig()
	if E.db.locplus.dig then
		XCoordsPanel:SetWidth(COORDS_WIDTH*1.5)
		YCoordsPanel:SetWidth(COORDS_WIDTH*1.5)
	else
		XCoordsPanel:SetWidth(COORDS_WIDTH)
		YCoordsPanel:SetWidth(COORDS_WIDTH)
	end
end

function LPB:CoordsColor()
	if E.db.locplus.customCoordsColor == 1 then
		XCoordsPanel.Text:SetTextColor(unpackColor(E.db.locplus.userColor))
		YCoordsPanel.Text:SetTextColor(unpackColor(E.db.locplus.userColor))			
	elseif E.db.locplus.customCoordsColor == 2 then
		XCoordsPanel.Text:SetTextColor(classColor.r, classColor.g, classColor.b)
		YCoordsPanel.Text:SetTextColor(classColor.r, classColor.g, classColor.b)
	else
		XCoordsPanel.Text:SetTextColor(unpackColor(E.db.locplus.userCoordsColor))
		YCoordsPanel.Text:SetTextColor(unpackColor(E.db.locplus.userCoordsColor))
	end
end

-- Datatext panels
function LPB:CreateDTPanels()

	-- Left coords Datatext panel
	left_dtp:SetWidth(E.db.locplus.dtwidth)
	left_dtp:SetHeight(E.db.locplus.dtheight)
	left_dtp:SetFrameStrata('LOW')
	left_dtp:SetParent(LocationPlusPanel)

	-- Right coords Datatext panel
	right_dtp:SetWidth(E.db.locplus.dtwidth)
	right_dtp:SetHeight(E.db.locplus.dtheight)
	right_dtp:SetFrameStrata('LOW')
	right_dtp:SetParent(LocationPlusPanel)
end

-- Update changes
function LPB:LocPlusUpdate()
	self:TransparentPanels()
	self:ShadowPanels()
	self:DTHeight()
	LocHideDt()
	self:CoordsDig()
	self:MouseOver()
end

-- Defaults in case something is wrong on first load
function LPB:LocDefault()
	if E.db.locplus.lpwidth == nil then
		E.db.locplus.lpwidth = 200
	end	

	if E.db.locplus.dtwidth == nil then
		E.db.locplus.dtwidth = 100
	end	
	
	if E.db.locplus.dtheight == nil then
		E.db.locplus.dtheight = 21
	end	
end

-- needed to fix LocPlus datatext font
local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent",function(self, event)
	if event == "PLAYER_ENTERING_WORLD" then
		LPB:LocCoordPanelFont()
		f:UnregisterEvent("PLAYER_ENTERING_WORLD")
	end
end)

function LPB:Initialize()
	self:LocDefault()
	self:CreateLocPanel()
	self:CreateDTPanels()
	self:CreateCoordPanels()
	self:LocPlusUpdate()
	EP:RegisterPlugin(addon, LPB.AddOptions)
	LocationPlusPanel:RegisterEvent("PLAYER_REGEN_DISABLED")
	LocationPlusPanel:RegisterEvent("PLAYER_REGEN_ENABLED")
	LocationPlusPanel:RegisterEvent("PET_BATTLE_CLOSE")
	LocationPlusPanel:RegisterEvent("PET_BATTLE_OPENING_START")
	print(L["Location Plus "]..format("v|cff33ffff%s|r",LPB.version)..L[" is loaded. Thank you for using it."])
end

E:RegisterModule(LPB:GetName())
