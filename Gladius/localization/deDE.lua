-- this is just an example localization file

do
   if (GetLocale() == "deDE") then
      Gladius.L = setmetatable({
         ["Frame"] = "Frame",
         ["Welcome to Gladius!"] = "Welcome to Gladius!",
         ["First run has been detected, displaying test frame."] = "First run has been detected, displaying test frame.",
         ["Valid slash commands are:"] = "Valid slash commands are:",
         ["/gladius ui"] = "/gladius ui",
         ["/gladius test 2-5"] = "/gladius test 2-5",
         ["/gladius hide"] = "/gladius hide",
         ["/gladius reset"] = "/gladius reset",
         ["If this is not your first run please lock or move the frame to prevent this from happening."] = "If this is not your first run please lock or move the frame to prevent this from happening.",
         ["LEFT"] = "LEFT",
         ["CENTER"] = "CENTER",
         ["RIGHT"] = "RIGHT",
         ["Top Left"] = "Top Left",
         ["Top Right"] = "Top Right",
         ["Center Left"] = "Center Left",
         ["Center Right"] = "Center Right",
         ["Bottom Left"] = "Bottom Left",
         ["Bottom Right"] = "Bottom Right",
         ["Enable Module"] = "Enable Module",
         ["Reset Module"] = "Reset Module",
         ["Module Templates"] = "Module Templates",
         ["General"] = "General",
         ["General settings"] = "General settings",
         ["Lock frame"] = "Lock frame",
         ["Toggle if the frame can be moved"] = "Toggle if the frame can be moved",
         ["Grow frame upwards"] = "Grow frame upwards",
         ["If this is toggled the frame will grow upwards instead of downwards."] = "If this is toggled the frame will grow upwards instead of downwards.",
         ["Group Buttons"] = "Group Buttons",
         ["If this is toggle buttons can be moved separately"] = "If this is toggle buttons can be moved separately",
         ["Advanced Options"] = "Advanced Options",
         ["Toggle advanced options"] = "Toggle advanced options",
         ["Frame settings"] = "Frame settings",
         ["Background Color"] = "Background Color",
         ["Color of the frame background"] = "Color of the frame background",
         ["Background Padding"] = "Background Padding",
         ["Padding of the background"] = "Padding of the background",
         ["Bottom Margin"] = "Bottom Margin",
         ["Margin between each button"] = "Margin between each button",
         ["Size"] = "Size",
         ["Size settings"] = "Size settings",
         ["Bar width"] = "Bar width",
         ["Width of the module bars"] = "Width of the module bars",
         ["Frame scale"] = "Frame scale",
         ["Scale of the frame"] = "Scale of the frame",
         ["Font"] = "Font",
         ["Font settings"] = "Font settings",
         ["Global Font"] = "Global Font",
         ["Global font, used by the modules"] = "Global font, used by the modules",
         ["Global Font Size"] = "Global Font Size",
         ["Text size of the power info text"] = "Text size of the power info text",
         ["Use Global Font Size"] = "Use Global Font Size",
         ["Toggle if you want to use the global font size"] = "Toggle if you want to use the global font size",
         ["Global Templates"] = "Global Templates",
         ["Global templates"] = "Global templates",
         ["Arms"] = "Arms",
         ["Fury"] = "Fury",
         ["Protection"] = "Protection",
         ["Holy"] = "Holy",
         ["Retribution"] = "Retribution",
         ["Assassination"] = "Assassination",
         ["Combat"] = "Combat",
         ["Subtlety"] = "Subtlety",
         ["Discipline"] = "Discipline",
         ["Shadow"] = "Shadow",
         ["Blood"] = "Blood",
         ["Frost"] = "Frost",
         ["Unholy"] = "Unholy",
         ["Arcane"] = "Arcane",
         ["Fire"] = "Fire",
         ["Affliction"] = "Affliction",
         ["Demonology"] = "Demonology",
         ["Destruction"] = "Destruction",
         ["Elemental"] = "Elemental",
         ["Enhancement"] = "Enhancement",
         ["Restoration"] = "Restoration",
         ["Beast Mastery"] = "Beast Mastery",
         ["Marksmanship"] = "Marksmanship",
         ["Survival"] = "Survival",
         ["Balance"] = "Balance",
         ["Feral"] = "Feral",
         ["%s - %s"] = "%s - %s",
         ["SPEC DETECTED: %s (%s)"] = "SPEC DETECTED: %s (%s)",
         ["LOW HEALTH: %s (%s)"] = "LOW HEALTH: %s (%s)",
         ["DRINKING: %s (%s)"] = "DRINKING: %s (%s)",
         ["RESURRECTING: %s (%s)"] = "RESURRECTING: %s (%s)",
         ["Self"] = "Self",
         ["Party"] = "Party",
         ["Say"] = "Say",
         ["Raid Warning"] = "Raid Warning",
         ["Scrolling Combat Text"] = "Scrolling Combat Text",
         ["MikScrollingBattleText"] = "MikScrollingBattleText",
         ["Blizzard's Floating Combat Text"] = "Blizzard's Floating Combat Text",
         ["Parrot"] = "Parrot",
         ["Options"] = "Options",
         ["Destination"] = "Destination",
         ["Choose how your announcements are displayed."] = "Choose how your announcements are displayed.",
         ["Low health threshold"] = "Low health threshold",
         ["Choose how low an enemy must be before low health is announced."] = "Choose how low an enemy must be before low health is announced.",
         ["Announcement toggles"] = "Announcement toggles",
         ["New enemies"] = "New enemies",
         ["Announces when new enemies are discovered."] = "Announces when new enemies are discovered.",
         ["Drinking"] = "Drinking",
         ["Announces when enemies sit down to drink."] = "Announces when enemies sit down to drink.",
         ["Low health"] = "Low health",
         ["Announces when an enemy drops below a certain health threshold."] = "Announces when an enemy drops below a certain health threshold.",
         ["Resurrection"] = "Resurrection",
         ["Announces when an enemy tries to resurrect a teammate."] = "Announces when an enemy tries to resurrect a teammate.",
         ["Spec Detection"] = "Spec Detection",
         ["Announces when the spec of an enemy was detected."] = "Announces when the spec of an enemy was detected.",
         ["Buffs"] = "Buffs",
         ["Widget"] = "Widget",
         ["Widget settings"] = "Widget settings",
         ["Auras Buffs"] = "Auras Buffs",
         ["Toggle aura buffs"] = "Toggle aura buffs",
         ["Auras Column Grow"] = "Auras Column Grow",
         ["Grow direction of the auras"] = "Grow direction of the auras",
         ["Up Left"] = "Up Left",
         ["Up Right"] = "Up Right",
         ["Down Left"] = "Down Left",
         ["Down Right"] = "Down Right",
         ["Aura Icons Per Column"] = "Aura Icons Per Column",
         ["Number of aura icons per column"] = "Number of aura icons per column",
         ["Aura Icons Max"] = "Aura Icons Max",
         ["Number of max buffs"] = "Number of max buffs",
         ["Auras Gloss"] = "Auras Gloss",
         ["Toggle gloss on the auras icon"] = "Toggle gloss on the auras icon",
         ["Auras Gloss Color"] = "Auras Gloss Color",
         ["Color of the auras icon gloss"] = "Color of the auras icon gloss",
         ["Aura Icon Width"] = "Aura Icon Width",
         ["Width of the aura icons"] = "Width of the aura icons",
         ["Aura Icon Height"] = "Aura Icon Height",
         ["Height of the aura icon"] = "Height of the aura icon",
         ["Auras Spacing Vertical"] = "Auras Spacing Vertical",
         ["Vertical spacing of the auras"] = "Vertical spacing of the auras",
         ["Auras Spacing Horizontal"] = "Auras Spacing Horizontal",
         ["Horizontal spacing of the auras"] = "Horizontal spacing of the auras",
         ["Position"] = "Position",
         ["Position settings"] = "Position settings",
         ["Auras Attach To"] = "Auras Attach To",
         ["Attach auras to the given frame"] = "Attach auras to the given frame",
         ["Auras Anchor"] = "Auras Anchor",
         ["Anchor of the auras"] = "Anchor of the auras",
         ["Auras Relative Point"] = "Auras Relative Point",
         ["Relative point of the auras"] = "Relative point of the auras",
         ["Auras Offset X"] = "Auras Offset X",
         ["X offset of the auras"] = "X offset of the auras",
         ["Auras Offset Y"] = "Auras Offset Y",
         ["Y  offset of the auras"] = "Y  offset of the auras",
         ["Filter"] = "Filter",
         ["Whitelist"] = "Whitelist",
         ["Blacklist"] = "Blacklist",
         ["Filter Function"] = "Filter Function",
         ["Debuffs"] = "Debuffs",
         ["Auras Debuffs"] = "Auras Debuffs",
         ["Toggle aura debuffs"] = "Toggle aura debuffs",
         ["Number of max Debuffs"] = "Number of max Debuffs",
         ["Auras"] = "Auras",
         ["New Aura"] = "New Aura",
         ["Name"] = "Name",
         ["Name of the aura"] = "Name of the aura",
         ["Priority"] = "Priority",
         ["Select what priority the aura should have - higher equals more priority"] = "Select what priority the aura should have - higher equals more priority",
         ["Add new Aura"] = "Add new Aura",
         ["Delete"] = "Delete",
         ["Example Spell Name"] = "Example Spell Name",
         ["Bar"] = "Bar",
         ["Bar settings"] = "Bar settings",
         ["Cast Bar Color"] = "Cast Bar Color",
         ["Color of the cast bar"] = "Color of the cast bar",
         ["Cast Bar Background Color"] = "Cast Bar Background Color",
         ["Color of the cast bar background"] = "Color of the cast bar background",
         ["Cast Bar Inverse"] = "Cast Bar Inverse",
         ["Inverse the cast bar"] = "Inverse the cast bar",
         ["Cast Bar Texture"] = "Cast Bar Texture",
         ["Texture of the cast bar"] = "Texture of the cast bar",
         ["Cast Bar Icon"] = "Cast Bar Icon",
         ["Toggle the cast icon"] = "Toggle the cast icon",
         ["Cast Bar Icon Position"] = "Cast Bar Icon Position",
         ["Position of the cast bar icon"] = "Position of the cast bar icon",
         ["Cast Bar Adjust Width"] = "Cast Bar Adjust Width",
         ["Adjust cast bar width to the frame width"] = "Adjust cast bar width to the frame width",
         ["Cast Bar Width"] = "Cast Bar Width",
         ["Width of the cast bar"] = "Width of the cast bar",
         ["Cast Bar Height"] = "Cast Bar Height",
         ["Height of the cast bar"] = "Height of the cast bar",
         ["Cast Bar Attach To"] = "Cast Bar Attach To",
         ["Attach cast bar to the given frame"] = "Attach cast bar to the given frame",
         ["Cast Bar Anchor"] = "Cast Bar Anchor",
         ["Anchor of the cast bar"] = "Anchor of the cast bar",
         ["Cast Bar Relative Point"] = "Cast Bar Relative Point",
         ["Relative point of the cast bar"] = "Relative point of the cast bar",
         ["Cast Bar Offset X"] = "Cast Bar Offset X",
         ["X offset of the cast bar"] = "X offset of the cast bar",
         ["Cast Bar Offset Y"] = "Cast Bar Offset Y",
         ["Y offset of the castbar"] = "Y offset of the castbar",
         ["Cast Text"] = "Cast Text",
         ["Text"] = "Text",
         ["Text settings"] = "Text settings",
         ["Toggle cast text"] = "Toggle cast text",
         ["Cast Text Color"] = "Cast Text Color",
         ["Text color of the cast text"] = "Text color of the cast text",
         ["Cast Text Size"] = "Cast Text Size",
         ["Text size of the cast text"] = "Text size of the cast text",
         ["Cast Text Align"] = "Cast Text Align",
         ["Text align of the cast text"] = "Text align of the cast text",
         ["Cast Text Offset X"] = "Cast Text Offset X",
         ["X offset of the cast text"] = "X offset of the cast text",
         ["Cast Text Offset Y"] = "Cast Text Offset Y",
         ["Y offset of the cast text"] = "Y offset of the cast text",
         ["Cast Time Text"] = "Cast Time Text",
         ["Toggle cast time text"] = "Toggle cast time text",
         ["Cast Time Text Color"] = "Cast Time Text Color",
         ["Text color of the cast time text"] = "Text color of the cast time text",
         ["Cast Time Text Size"] = "Cast Time Text Size",
         ["Text size of the cast time text"] = "Text size of the cast time text",
         ["Cast Time Text Align"] = "Cast Time Text Align",
         ["Text align of the cast time text"] = "Text align of the cast time text",
         ["Cast Time Offset X"] = "Cast Time Offset X",
         ["X Offset of the cast time text"] = "X Offset of the cast time text",
         ["Cast Time Offset Y"] = "Cast Time Offset Y",
         ["Y Offset of the cast time text"] = "Y Offset of the cast time text",
         ["Class Icon Important Auras"] = "Class Icon Important Auras",
         ["Show important auras instead of the class icon"] = "Show important auras instead of the class icon",
         ["Class Icon Crop Borders"] = "Class Icon Crop Borders",
         ["Toggle if the class icon borders should be cropped or not."] = "Toggle if the class icon borders should be cropped or not.",
         ["Class Icon Cooldown Spiral"] = "Class Icon Cooldown Spiral",
         ["Display the cooldown spiral for important auras"] = "Display the cooldown spiral for important auras",
         ["Class Icon Cooldown Reverse"] = "Class Icon Cooldown Reverse",
         ["Invert the dark/bright part of the cooldown spiral"] = "Invert the dark/bright part of the cooldown spiral",
         ["Class Icon Gloss"] = "Class Icon Gloss",
         ["Toggle gloss on the class icon"] = "Toggle gloss on the class icon",
         ["Class Icon Gloss Color"] = "Class Icon Gloss Color",
         ["Color of the class icon gloss"] = "Color of the class icon gloss",
         ["Class Icon Frame Level"] = "Class Icon Frame Level",
         ["Frame level of the class icon"] = "Frame level of the class icon",
         ["Class Icon Adjust Size"] = "Class Icon Adjust Size",
         ["Adjust class icon size to the frame size"] = "Adjust class icon size to the frame size",
         ["Class Icon Size"] = "Class Icon Size",
         ["Size of the class icon"] = "Size of the class icon",
         ["Class Icon Attach To"] = "Class Icon Attach To",
         ["Attach class icon to given frame"] = "Attach class icon to given frame",
         ["Class Icon Position"] = "Class Icon Position",
         ["Position of the class icon"] = "Position of the class icon",
         ["Left"] = "Left",
         ["Right"] = "Right",
         ["Class Icon Anchor"] = "Class Icon Anchor",
         ["Anchor of the class icon"] = "Anchor of the class icon",
         ["Class Icon Relative Point"] = "Class Icon Relative Point",
         ["Relative point of the class icon"] = "Relative point of the class icon",
         ["Class Icon Offset X"] = "Class Icon Offset X",
         ["X offset of the class icon"] = "X offset of the class icon",
         ["Class Icon Offset Y"] = "Class Icon Offset Y",
         ["Y offset of the class icon"] = "Y offset of the class icon",
         ["Middle"] = "Middle",
         ["Button 4"] = "Button 4",
         ["Button 5"] = "Button 5",
         ["None"] = "None",
         ["ctrl-"] = "ctrl-",
         ["shift-"] = "shift-",
         ["alt-"] = "alt-",
         ["Click Actions"] = "Click Actions",
         ["Add click action"] = "Add click action",
         ["Mouse button"] = "Mouse button",
         ["Select which mouse button this click action uses"] = "Select which mouse button this click action uses",
         ["Modifier"] = "Modifier",
         ["Select a modifier for this click action"] = "Select a modifier for this click action",
         ["Add"] = "Add",
         ["Delete Click Action"] = "Delete Click Action",
         ["Action"] = "Action",
         ["Select what this Click Action does"] = "Select what this Click Action does",
         ["Cast Spell"] = "Cast Spell",
         ["Spell Name / Macro Text"] = "Spell Name / Macro Text",
         ["DRTracker Space"] = "DRTracker Space",
         ["Space between the icons"] = "Space between the icons",
         ["DRTracker Cooldown Spiral"] = "DRTracker Cooldown Spiral",
         ["DRTracker Cooldown Reverse"] = "DRTracker Cooldown Reverse",
         ["DRTracker Gloss"] = "DRTracker Gloss",
         ["Toggle gloss on the drTracker icon"] = "Toggle gloss on the drTracker icon",
         ["DRTracker Gloss Color"] = "DRTracker Gloss Color",
         ["Color of the drTracker icon gloss"] = "Color of the drTracker icon gloss",
         ["DRTracker Frame Level"] = "DRTracker Frame Level",
         ["Frame level of the drTracker"] = "Frame level of the drTracker",
         ["DRTracker Adjust Size"] = "DRTracker Adjust Size",
         ["Adjust drTracker size to the frame size"] = "Adjust drTracker size to the frame size",
         ["DRTracker Size"] = "DRTracker Size",
         ["Size of the drTracker"] = "Size of the drTracker",
         ["DR Text Color"] = "DR Text Color",
         ["Text color of the DR text"] = "Text color of the DR text",
         ["DR Text Size"] = "DR Text Size",
         ["Text size of the DR text"] = "Text size of the DR text",
         ["DRTracker Attach To"] = "DRTracker Attach To",
         ["Attach drTracker to the given frame"] = "Attach drTracker to the given frame",
         ["DRTracker Position"] = "DRTracker Position",
         ["DRTracker Anchor"] = "DRTracker Anchor",
         ["Anchor of the drTracker"] = "Anchor of the drTracker",
         ["DRTracker Relative Point"] = "DRTracker Relative Point",
         ["Relative point of the drTracker"] = "Relative point of the drTracker",
         ["DRTracker Offset X"] = "DRTracker Offset X",
         ["X offset of the drTracker"] = "X offset of the drTracker",
         ["DRTracker Offset Y"] = "DRTracker Offset Y",
         ["Y  offset of the drTracker"] = "Y  offset of the drTracker",
         ["Categories"] = "Categories",
         ["Category settings"] = "Category settings",
         ["Health bar class color"] = "Health bar class color",
         ["Toggle health bar class color"] = "Toggle health bar class color",
         ["Health bar color"] = "Health bar color",
         ["Color of the health bar"] = "Color of the health bar",
         ["Health bar background color"] = "Health bar background color",
         ["Color of the health bar background"] = "Color of the health bar background",
         ["Health bar inverse"] = "Health bar inverse",
         ["Inverse the health bar"] = "Inverse the health bar",
         ["Health bar texture"] = "Health bar texture",
         ["Texture of the health bar"] = "Texture of the health bar",
         ["Health bar adjust width"] = "Health bar adjust width",
         ["Adjust health bar width to the frame width"] = "Adjust health bar width to the frame width",
         ["Health bar width"] = "Health bar width",
         ["Width of the health bar"] = "Width of the health bar",
         ["Health bar height"] = "Health bar height",
         ["Height of the health bar"] = "Height of the health bar",
         ["Health Bar Attach To"] = "Health Bar Attach To",
         ["Attach health bar to the given frame"] = "Attach health bar to the given frame",
         ["Health Bar Anchor"] = "Health Bar Anchor",
         ["Anchor of the health bar"] = "Anchor of the health bar",
         ["Health Bar Relative Point"] = "Health Bar Relative Point",
         ["Relative point of the health bar"] = "Relative point of the health bar",
         ["Health bar offset X"] = "Health bar offset X",
         ["X offset of the health bar"] = "X offset of the health bar",
         ["Health bar offset Y"] = "Health bar offset Y",
         ["Y offset of the health bar"] = "Y offset of the health bar",
         ["Health colors"] = "Health colors",
         ["Default priest color"] = "Default priest color",
         ["Toggle default priest color"] = "Toggle default priest color",
         ["Priest color"] = "Priest color",
         ["Default paladin color"] = "Default paladin color",
         ["Toggle default paladin color"] = "Toggle default paladin color",
         ["Paladin color"] = "Paladin color",
         ["Default shaman color"] = "Default shaman color",
         ["Toggle default shaman color"] = "Toggle default shaman color",
         ["Shaman color"] = "Shaman color",
         ["Default druid color"] = "Default druid color",
         ["Toggle default druid color"] = "Toggle default druid color",
         ["Druid color"] = "Druid color",
         ["Default mage color"] = "Default mage color",
         ["Toggle default mage color"] = "Toggle default mage color",
         ["Mage color"] = "Mage color",
         ["Default warlock color"] = "Default warlock color",
         ["Toggle default warlock color"] = "Toggle default warlock color",
         ["Warlock color"] = "Warlock color",
         ["Default hunter color"] = "Default hunter color",
         ["Toggle default hunter color"] = "Toggle default hunter color",
         ["Hunter color"] = "Hunter color",
         ["Default warrior color"] = "Default warrior color",
         ["Toggle default warrior color"] = "Toggle default warrior color",
         ["Warrior color"] = "Warrior color",
         ["Default rogue color"] = "Default rogue color",
         ["Toggle default eogue color"] = "Toggle default eogue color",
         ["Rogue color"] = "Rogue color",
         ["Default death knight color"] = "Default death knight color",
         ["Toggle default death knight color"] = "Toggle default death knight color",
         ["Death knight color"] = "Death knight color",
         ["Hover"] = "Hover",
         ["Hover settings"] = "Hover settings",
         ["Highlight On Mouseover"] = "Highlight On Mouseover",
         ["Highlight frame on mouseover"] = "Highlight frame on mouseover",
         ["Highlight Color"] = "Highlight Color",
         ["Color of the highlight frame"] = "Color of the highlight frame",
         ["Player Target"] = "Player Target",
         ["Player target settings"] = "Player target settings",
         ["Highlight Target"] = "Highlight Target",
         ["Show border around player target"] = "Show border around player target",
         ["Highlight Target Color"] = "Highlight Target Color",
         ["Color of the target border"] = "Color of the target border",
         ["Highlight Target Priority"] = "Highlight Target Priority",
         ["Priority of the target border"] = "Priority of the target border",
         ["Player Focus Target"] = "Player Focus Target",
         ["Player focus target settings"] = "Player focus target settings",
         ["Highlight Focus Target"] = "Highlight Focus Target",
         ["Highlight Focus Target Color"] = "Highlight Focus Target Color",
         ["Color of the focus target border"] = "Color of the focus target border",
         ["Highlight Focus Target Priority"] = "Highlight Focus Target Priority",
         ["Priority of the focus target border"] = "Priority of the focus target border",
         ["Raid Assist Target"] = "Raid Assist Target",
         ["Raid assist settings"] = "Raid assist settings",
         ["Highlight Raid Assist"] = "Highlight Raid Assist",
         ["Show border around raid assist"] = "Show border around raid assist",
         ["Highlight Raid Assist Color"] = "Highlight Raid Assist Color",
         ["Color of the raid assist border"] = "Color of the raid assist border",
         ["Highlight Raid Assist Priority"] = "Highlight Raid Assist Priority",
         ["Priority of the raid assist border"] = "Priority of the raid assist border",
         ["Raid Icon Targets"] = "Raid Icon Targets",
         ["Raid Icon target 1 settings"] = "Raid Icon target 1 settings",
         ["Raid Icon target 2 settings"] = "Raid Icon target 2 settings",
         ["Raid Icon target 3 settings"] = "Raid Icon target 3 settings",
         ["Raid Icon target 4 settings"] = "Raid Icon target 4 settings",
         ["Raid Icon target 5 settings"] = "Raid Icon target 5 settings",
         ["Raid Icon target 6 settings"] = "Raid Icon target 6 settings",
         ["Raid Icon target 7 settings"] = "Raid Icon target 7 settings",
         ["Raid Icon target 8 settings"] = "Raid Icon target 8 settings",
         ["Layout Code"] = "Layout Code",
         ["Code of your layout."] = "Code of your layout.",
         ["Import layout"] = "Import layout",
         ["Import your layout code."] = "Import your layout code.",
         ["Error while importing layout: %s"] = "Error while importing layout: %s",
         ["Power Bar Default Color"] = "Power Bar Default Color",
         ["Toggle power bar default color"] = "Toggle power bar default color",
         ["Power Bar Color"] = "Power Bar Color",
         ["Color of the power bar"] = "Color of the power bar",
         ["Power Bar Background Color"] = "Power Bar Background Color",
         ["Color of the power bar background"] = "Color of the power bar background",
         ["Power Bar Inverse"] = "Power Bar Inverse",
         ["Inverse the power bar"] = "Inverse the power bar",
         ["Power Bar Texture"] = "Power Bar Texture",
         ["Texture of the power bar"] = "Texture of the power bar",
         ["Power Bar Adjust Width"] = "Power Bar Adjust Width",
         ["Adjust power bar width to the frame width"] = "Adjust power bar width to the frame width",
         ["Power Bar Width"] = "Power Bar Width",
         ["Width of the power bar"] = "Width of the power bar",
         ["Power Bar Height"] = "Power Bar Height",
         ["Height of the power bar"] = "Height of the power bar",
         ["Power Bar Attach To"] = "Power Bar Attach To",
         ["Attach power bar to the given frame"] = "Attach power bar to the given frame",
         ["Power Bar Anchor"] = "Power Bar Anchor",
         ["Anchor of the power bar"] = "Anchor of the power bar",
         ["Power Bar Relative Point"] = "Power Bar Relative Point",
         ["Relative point of the power bar"] = "Relative point of the power bar",
         ["Power Bar Offset X"] = "Power Bar Offset X",
         ["X offset of the power bar"] = "X offset of the power bar",
         ["Power Bar Offset Y"] = "Power Bar Offset Y",
         ["Power colors"] = "Power colors",
         ["Default Power Mana Color"] = "Default Power Mana Color",
         ["Toggle default power mana color"] = "Toggle default power mana color",
         ["Power Mana Color"] = "Power Mana Color",
         ["Default Power Rage Color"] = "Default Power Rage Color",
         ["Toggle default power rage color"] = "Toggle default power rage color",
         ["Power Rage Color"] = "Power Rage Color",
         ["Default Power Focus Color"] = "Default Power Focus Color",
         ["Toggle default power focus color"] = "Toggle default power focus color",
         ["Power Focus Color"] = "Power Focus Color",
         ["Default Power Energy Color"] = "Default Power Energy Color",
         ["Toggle default power energy color"] = "Toggle default power energy color",
         ["Power Energy Color"] = "Power Energy Color",
         ["Default Power Runic Power Color"] = "Default Power Runic Power Color",
         ["Toggle default power runic power color"] = "Toggle default power runic power color",
         ["Power Runic Power Color"] = "Power Runic Power Color",
         ["Texts"] = "Texts",
         ["Add text"] = "Add text",
         ["Name of the text element"] = "Name of the text element",
         ["Text Attach To"] = "Text Attach To",
         ["Attach text to module bar"] = "Attach text to module bar",
         ["Add Text"] = "Add Text",
         ["Tags"] = "Tags",
         ["Add tag"] = "Add tag",
         ["Name of the tag"] = "Name of the tag",
         ["Add Tag"] = "Add Tag",
         ["Tag: %s"] = "Tag: %s",
         ["Text to be displayed"] = "Text to be displayed",
         ["Delete Text"] = "Delete Text",
         ["Tag"] = "Tag",
         ["Tag settings"] = "Tag settings",
         ["Text Color"] = "Text Color",
         ["Text color of the text"] = "Text color of the text",
         ["Text Size"] = "Text Size",
         ["Text size of the text"] = "Text size of the text",
         ["Text Align"] = "Text Align",
         ["Text align of the text"] = "Text align of the text",
         ["Text Offset X"] = "Text Offset X",
         ["X offset of the text"] = "X offset of the text",
         ["Text Offset Y"] = "Text Offset Y",
         ["Y offset of the text"] = "Y offset of the text",
         ["Delete Tag"] = "Delete Tag",
         ["Events"] = "Events",
         ["Events which update the tag"] = "Events which update the tag",
         ["Function"] = "Function",
         ["DEAD"] = "DEAD",
         ["Target bar health bar"] = "Target bar health bar",
         ["Toggle health bar display"] = "Toggle health bar display",
         ["Target bar class color"] = "Target bar class color",
         ["Target bar color"] = "Target bar color",
         ["Target bar background color"] = "Target bar background color",
         ["Target bar inverse"] = "Target bar inverse",
         ["Target bar texture"] = "Target bar texture",
         ["Target bar class icon"] = "Target bar class icon",
         ["Toggle the target bar class icon"] = "Toggle the target bar class icon",
         ["Target bar icon position"] = "Target bar icon position",
         ["Position of the target bar class icon"] = "Position of the target bar class icon",
         ["Target bar adjust width"] = "Target bar adjust width",
         ["Target bar width"] = "Target bar width",
         ["Target bar height"] = "Target bar height",
         ["Target Bar Attach To"] = "Target Bar Attach To",
         ["Target Bar Anchor"] = "Target Bar Anchor",
         ["Target Bar Relative Point"] = "Target Bar Relative Point",
         ["Target bar offset X"] = "Target bar offset X",
         ["Target bar offset Y"] = "Target bar offset Y",
         ["Timer Soon Color"] = "Timer Soon Color",
         ["Color of the timer when timeleft is less than 5 seconds."] = "Color of the timer when timeleft is less than 5 seconds.",
         ["Timer Soon Size"] = "Timer Soon Size",
         ["Text size of the timer when timeleft is less than 5 seconds."] = "Text size of the timer when timeleft is less than 5 seconds.",
         ["Timer Seconds Color"] = "Timer Seconds Color",
         ["Color of the timer when timeleft is less than 60 seconds."] = "Color of the timer when timeleft is less than 60 seconds.",
         ["Timer Seconds Size"] = "Timer Seconds Size",
         ["Text size of the timer when timeleft is less than 60 seconds."] = "Text size of the timer when timeleft is less than 60 seconds.",
         ["Timer Minutes Color"] = "Timer Minutes Color",
         ["Color of the timer when timeleft is greater than 60 seconds."] = "Color of the timer when timeleft is greater than 60 seconds.",
         ["Timer Minutes Size"] = "Timer Minutes Size",
         ["Text size of the timer when timeleft is greater than 60 seconds."] = "Text size of the timer when timeleft is greater than 60 seconds.",
         ["TRINKET USED: %s (%s)"] = "TRINKET USED: %s (%s)",
         ["TRINKET READY: %s (%s)"] = "TRINKET READY: %s (%s)",
         ["Trinket"] = "Trinket",
         ["Announces when an enemy uses a PvP trinket."] = "Announces when an enemy uses a PvP trinket.",
         ["Trinket Grid Style Icon"] = "Trinket Grid Style Icon",
         ["Toggle trinket grid style icon"] = "Toggle trinket grid style icon",
         ["Trinket Grid Style Icon Color"] = "Trinket Grid Style Icon Color",
         ["Color of the trinket grid style icon"] = "Color of the trinket grid style icon",
         ["Trinket Grid Style Icon Used Color"] = "Trinket Grid Style Icon Used Color",
         ["Color of the trinket grid style icon when it's on cooldown"] = "Color of the trinket grid style icon when it's on cooldown",
         ["Trinket Cooldown Spiral"] = "Trinket Cooldown Spiral",
         ["Trinket Cooldown Reverse"] = "Trinket Cooldown Reverse",
         ["Trinket Gloss"] = "Trinket Gloss",
         ["Toggle gloss on the trinket icon"] = "Toggle gloss on the trinket icon",
         ["Trinket Gloss Color"] = "Trinket Gloss Color",
         ["Color of the trinket icon gloss"] = "Color of the trinket icon gloss",
         ["Trinket Icon Border Crop"] = "Trinket Icon Border Crop",
         ["Toggle if the borders of the trinket icon should be cropped"] = "Toggle if the borders of the trinket icon should be cropped",
         ["Trinket Icon Faction"] = "Trinket Icon Faction",
         ["Toggle if the trinket icon should be changing based on the opponents faction"] = "Toggle if the trinket icon should be changing based on the opponents faction",
         ["Trinket Frame Level"] = "Trinket Frame Level",
         ["Frame level of the trinket"] = "Frame level of the trinket",
         ["Trinket Adjust Size"] = "Trinket Adjust Size",
         ["Adjust trinket size to the frame size"] = "Adjust trinket size to the frame size",
         ["Trinket Size"] = "Trinket Size",
         ["Size of the trinket"] = "Size of the trinket",
         ["Trinket Attach To"] = "Trinket Attach To",
         ["Attach trinket to the given frame"] = "Attach trinket to the given frame",
         ["Trinket Position"] = "Trinket Position",
         ["Position of the trinket"] = "Position of the trinket",
         ["Trinket Anchor"] = "Trinket Anchor",
         ["Anchor of the trinket"] = "Anchor of the trinket",
         ["Trinket Relative Point"] = "Trinket Relative Point",
         ["Relative point of the trinket"] = "Relative point of the trinket",
         ["Trinket Offset X"] = "Trinket Offset X",
         ["X offset of the trinket"] = "X offset of the trinket",
         ["Trinket Offset Y"] = "Trinket Offset Y",
         ["Y  offset of the trinket"] = "Y  offset of the trinket",
         ["Export layout"] = "Export layout",
         ["Export your layout code."] = "Export your layout code.",
         ["Target Bar Icon Crop Borders"] = "Target Bar Icon Crop Borders",
         ["Toggle if the target bar icon borders should be cropped or not."] = "Toggle if the target bar icon borders should be cropped or not.",
         ["Timer Use OmniCC"] = "Timer Use OmniCC",
         ["The timer module will use OmniCC for text display"] = "The timer module will use OmniCC for text display",

         ["maxhealthTag"] = "Max Health",
         ["maxpower:shortTag"] = "Max Power (Short)",
         ["powerTag"] = "Power",
         ["health:shortTag"] = "Health (Short)",
         ["classTag"] = "Unit Class",
         ["power:percentageTag"] = "Power (Percentage)",
         ["power:shortTag"] = "Power (Short)",
         ["raceTag"] = "Unit Race",
         ["nameTag"] = "Unit Name",
         ["name:statusTag"] = "Unit Name/Status",  
         ["specTag"] = "Unit Spec",
         ["health:percentageTag"] = "Health (Percentage)",
         ["healthTag"] = "Health",
         ["maxhealth:shortTag"] = "Max Health (Short)",
         ["maxpowerTag"] = "Max Power",
         
         -- Specs, sup?
         ["Unholy:short"] = "Unh",
         ["Frost:short"] = "Frost",
         ["Blood:short"] = "Blood",  
         ["Fire:short"] = "Fire",
         ["Arcane:short"] = "Arcane",
         ["Marksmanship:short"] = "Marks",
         ["Survival:short"] = "Surv",
         ["Beast Mastery:short"] = "BM", 
         ["Elemental:short"] = "Ele",
         ["Enhancement:short"] = "Enh",
         ["Restoration:short"] = "Resto",
         ["Feral:short"] = "Feral",
         ["Balance:short"] = "Balance",  
         ["Demonology:short"] = "Demo",
         ["Destruction:short"] = "Destro",
         ["Affliction:short"] = "Affli",
         ["Subletly:short"] = "Sub",
         ["Combat:short"] = "Combat",
         ["Assassination:short"] = "Assa",
         ["Shadow:short"] = "Shadow",
         ["Discipline:short"] = "Disc",
         ["Holy:short"] = "Holy",   
         ["Retribution:short"] = "Ret",
         ["Protection:short"] = "Prot",
         ["Arms:short"] = "Arms",
         ["Fury:short"] = "Fury",
         ["Brewmaster:short"] = "Brewm",
         ["Mistweaver:short"] = "Mistw",
         ["Windwalker:short"] = "Windw",
         
         ["Warrior:short"] = "Warr",
         ["Death Knight:short"] = "DK",
         ["Warlock:short"] = "Lock",
         ["Priest:short"] = "Priest",
         ["Hunter:short"] = "Hunter",
         ["Rogue:short"] = "Rogue",
         ["Shaman:short"] = "Shaman",
         ["Druid:short"] = "Druid",
         ["Paladin:short"] = "Pala",
         ["Mage:short"] = "Mage", 
         ["Monk:short"] = "Monk",         
      }, {
         __index = function(t, index) return index end
      })
   end
end