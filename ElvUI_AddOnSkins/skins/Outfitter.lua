local AS = ElvUI[1]:GetModule('AddOnSkins')

local name = "OutfitterSkin"
function AS:SkinOutfitter()
	CharacterFrame:HookScript("OnShow", function(self) PaperDollSidebarTabs:SetPoint("BOTTOMRIGHT", CharacterFrameInsetRight, "TOPRIGHT", -14, 0) end)
	OutfitterFrame:HookScript("OnShow", function(self) 
		AS:SkinFrame(OutfitterFrame)
		OutfitterFrameTab1:Size(60, 25)
		OutfitterFrameTab2:Size(60, 25)
		OutfitterFrameTab3:Size(60, 25)
		OutfitterMainFrame:StripTextures(true)
		for i = 0, 13 do
			if _G["OutfitterItem"..i.."OutfitSelected"] then 
				AS:SkinButton(_G["OutfitterItem"..i.."OutfitSelected"])
				_G["OutfitterItem"..i.."OutfitSelected"]:ClearAllPoints()
				_G["OutfitterItem"..i.."OutfitSelected"]:Size(16)
				_G["OutfitterItem"..i.."OutfitSelected"]:Point("LEFT", _G["OutfitterItem"..i.."Outfit"], "LEFT", 8, 0)
			end
		end
	end)

	OutfitterMainFrameScrollbarTrench:StripTextures(true)
	OutfitterFrameTab1:ClearAllPoints()
	OutfitterFrameTab2:ClearAllPoints()
	OutfitterFrameTab3:ClearAllPoints()
	OutfitterFrameTab1:Point("TOPLEFT", OutfitterFrame, "BOTTOMRIGHT", -65, -2)
	OutfitterFrameTab2:Point("LEFT", OutfitterFrameTab1, "LEFT", -65, 0)
	OutfitterFrameTab3:Point("LEFT", OutfitterFrameTab2, "LEFT", -65, 0)
	AS:SkinButton(OutfitterFrameTab1, true)
	AS:SkinButton(OutfitterFrameTab2, true)
	AS:SkinButton(OutfitterFrameTab3, true)
	AS:SkinScrollBar(OutfitterMainFrameScrollFrameScrollBar)
	AS:SkinCloseButton(OutfitterCloseButton)
	AS:SkinButton(OutfitterNewButton)
	AS:SkinButton(OutfitterEnableNone)
	AS:SkinButton(OutfitterEnableAll)
	AS:Desaturate(OutfitterButton)
	OutfitterButton:ClearAllPoints()
	OutfitterButton:SetPoint("RIGHT", PaperDollSidebarTabs, "RIGHT", 26, -2)
	OutfitterButton:SetHighlightTexture(nil)
	OutfitterSlotEnables:SetFrameStrata("HIGH")
	AS:SkinCheckBox(OutfitterEnableHeadSlot)
	AS:SkinCheckBox(OutfitterEnableNeckSlot)
	AS:SkinCheckBox(OutfitterEnableShoulderSlot)
	AS:SkinCheckBox(OutfitterEnableBackSlot)
	AS:SkinCheckBox(OutfitterEnableChestSlot)
	AS:SkinCheckBox(OutfitterEnableShirtSlot)
	AS:SkinCheckBox(OutfitterEnableTabardSlot)
	AS:SkinCheckBox(OutfitterEnableWristSlot)
	AS:SkinCheckBox(OutfitterEnableMainHandSlot)
	AS:SkinCheckBox(OutfitterEnableSecondaryHandSlot)
	AS:SkinCheckBox(OutfitterEnableHandsSlot)
	AS:SkinCheckBox(OutfitterEnableWaistSlot)
	AS:SkinCheckBox(OutfitterEnableLegsSlot)
	AS:SkinCheckBox(OutfitterEnableFeetSlot)
	AS:SkinCheckBox(OutfitterEnableFinger0Slot)
	AS:SkinCheckBox(OutfitterEnableFinger1Slot)
	AS:SkinCheckBox(OutfitterEnableTrinket0Slot)
	AS:SkinCheckBox(OutfitterEnableTrinket1Slot)
	AS:SkinButton(OutfitterItemComparisons)
	AS:SkinButton(OutfitterTooltipInfo)
	AS:SkinButton(OutfitterShowHotkeyMessages)
	AS:SkinButton(OutfitterShowMinimapButton)
	AS:SkinButton(OutfitterShowOutfitBar)
	AS:SkinButton(OutfitterAutoSwitch)
	OutfitterItemComparisons:Size(20)
	OutfitterTooltipInfo:Size(20)
	OutfitterShowHotkeyMessages:Size(20)
	OutfitterShowMinimapButton:Size(20)
	OutfitterShowOutfitBar:Size(20)
	OutfitterAutoSwitch:Size(20)
	OutfitterShowOutfitBar:Point("TOPLEFT", OutfitterAutoSwitch, "BOTTOMLEFT", 0, -5)
	AS:SkinButton(OutfitterEditScriptDialogDoneButton)
	AS:SkinButton(OutfitterEditScriptDialogCancelButton)
	AS:SkinScrollBar(OutfitterEditScriptDialogSourceScriptScrollBar)
	AS:SkinBackdropFrame(OutfitterEditScriptDialogSourceScript)
	AS:SkinFrame(OutfitterEditScriptDialog)
	AS:SkinCloseButton(OutfitterEditScriptDialog.CloseButton)
	AS:SkinTab(OutfitterEditScriptDialogTab1)
	AS:SkinTab(OutfitterEditScriptDialogTab2)
end

AS:RegisterSkin(name, AS.SkinOutfitter)