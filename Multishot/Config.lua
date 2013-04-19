local L = LibStub("AceLocale-3.0"):GetLocale("Multishot")

local dataDefaults = { 
	levelup = true,
	achievement = true,
	party = true, 
	raid = true, 
	rares = true, 
	repchange = true, 
	delay1 = 1.2,  
	delay2 = 2, 
	debug = false, 
	trade = true, 
	firstkill = false, 
	close = false, 
	uihide = false, 
	played = false, 
	charpane = false, 
	guildlevelup = true, 
	guildachievement = true, 
	challengemode = true, 
	history = {}, 
	delay3 = 20, 
	timeLineEnable = false, 
	watermark = false, 
	watermarkformat = "$n($l) $c $b$z - $d$b$r", 
	watermarkanchor = "TOP" }

local dataOptions = {
  type = "group",
  name = "Multishot",
  args = {
    intro = {
      order = 0,
      type = "description",
      name = L["intro"] .. ":\n" },
    levelups = {
      order = 1, 
      type = "toggle",
      name = L["levelups"],
      get = function() return MultishotConfig.levelup end,
      set = function(_,v) MultishotConfig.levelup = v end },
    guildlevelups = {
      order = 2, 
      type = "toggle",
      name = L["guildlevelups"],
      get = function() return MultishotConfig.guildlevelup end,
      set = function(_,v) MultishotConfig.guildlevelup = v end },
    achievements = {
      order = 3,
      type = "toggle",
      name = L["achievements"],
      get = function() return MultishotConfig.achievement end,
      set = function(_,v) MultishotConfig.achievement = v end },
    guildachievements = {
      order = 4,
      type = "toggle",
      name = L["guildachievements"],
      get = function() return MultishotConfig.guildachievement end,
      set = function(_,v) MultishotConfig.guildachievement = v end },
    challengemode = {
    	order = 5,
    	type = "toggle",
    	name = L["challengemode"],
    	get = function() return MultishotConfig.challengemode end,
    	set = function(_,v) MultishotConfig.challengemode = v end },
    repchange = {
      order = 6,
      type = "toggle",
      name = L["repchange"],
      get = function() return MultishotConfig.repchange end,
      set = function(_,v) MultishotConfig.repchange = v end },
    trade = {
      order = 7,
      type = "toggle",
      name = L["trade"],
      get = function() return MultishotConfig.trade end,
      set = function(_,v) MultishotConfig.trade = v end },
    header1 = {
      order = 8,
      type = "header",
      name = L["bosskillshots"] },
    party = {
      order = 9,
      type = "toggle",
      name = L["bosskillsparty"],
      get = function() return MultishotConfig.party end, 
      set = function(_,v) MultishotConfig.party = v end },
    rares = {
      order = 10,
      type = "toggle",
      name = L["rarekills"],
      get = function() return MultishotConfig.rares end, 
      set = function(_,v) MultishotConfig.rares = v end },
    raid = {
      order = 11,
      type = "toggle",
      name = L["bosskillsraid"],
      get = function() return MultishotConfig.raid end,
      set = function(_,v) MultishotConfig.raid = v end },
    firstkills = {
      order = 12,
      type = "toggle",
      name = L["firstkills"],
      get = function() return MultishotConfig.firstkill end, 
      set = function(_,v) MultishotConfig.firstkill = v end },
    header2 = {
      order = 13,
      type = "header",
      name = L["delay"] },
    delay1 = {
      order = 14,
      type = "range",
      name = L["delayother"],
      min = .1, max = 10, step = .1,
      get = function() return MultishotConfig.delay1 end,
      set = function(_,v) MultishotConfig.delay1 = v end },
    delay2 = {
      order = 15,
      type = "range",
      name = L["delaykill"],
      min = .1, max = 10, step = .1,
      get = function() return MultishotConfig.delay2 end, 
      set = function(_,v) MultishotConfig.delay2 = v end },
    header3 = {
      order = 16,
      type = "header",
      name = L["capture"] },
    format = {
      order = 17,
      type = "select",
      name = L["format"],
      values = {["jpeg"] = L["jpeg"], ["png"] = L["png"], ["tga"] = L["tga"]},
      get = function() return GetCVar("screenshotFormat") end, 
      set = function(_,v)SetCVar("screenshotFormat", v) end },
    quality = {
      order = 18,
      type = "range",
      name = L["quality"],
      min = 0, max = 10, step = 1,
      get = function() return tonumber(GetCVar("screenshotQuality")) end, 
      set = function(_,v) SetCVar("screenshotQuality", v) end },
    close = {
      order = 19,
      type = "toggle",
      name = L["close"],
      get = function() return MultishotConfig.close end, 
      set = function(_,v) MultishotConfig.close = v end },
    uihide = {
      order = 20,
      type = "toggle",
      name = L["uihide"],
      get = function() return MultishotConfig.uihide end, 
      set = function(_,v) MultishotConfig.uihide = v end },
    played = {
      order = 21,
      type = "toggle",
      name = L["played"],
      get = function() return MultishotConfig.played end, 
      set = function(_,v) MultishotConfig.played = v end },
    charpane = {
      order = 22,
      type = "toggle",
      name = L["charpane"],
      get = function() return MultishotConfig.charpane end, 
      set = function(_,v) MultishotConfig.charpane = v end },
    watermark = {
    	order = 23,
    	type = "toggle",
    	name = L["watermark"],
    	get = function() return MultishotConfig.watermark end,
    	set = function(_,v) MultishotConfig.watermark = v end },
    watermarkformat = {
    	order = 24,
    	type = "input",
    	name = L["watermarkformat"],
    	desc = L["set the format for watermark text"]..L["watermarkformattext"], -- "\n$n = name\n$c = class\n$l = level\n$z = zone\n$r = realm\n$d = date\n$b = line change"
    	usage = L["clear the text and press Enter to restore defaults."],
    	get = function() return MultishotConfig.watermarkformat end,
    	set = function(_,v)
    		print(tostring(v))
    		if v == "" or not (v):find("[%w%p]+") or (v):find("\\n") then -- or (v):find("$[^nclzrdb]")
    			v = "$n($l) $c $b$z - $d$b$r"
    		end
    		MultishotConfig.watermarkformat = v
    	end	},
    watermarkanchor = {
    	order = 25,
    	type = "select",
    	name = L["watermarkanchor"],
    	values = {["TOP"] = L["TOP"], ["TOPLEFT"] = L["TOPLEFT"], ["TOPRIGHT"] = L["TOPRIGHT"], ["BOTTOMLEFT"] = L["BOTTOMLEFT"], ["BOTTOMRIGHT"] = L["BOTTOMRIGHT"]}, -- add to localization
    	get = function() return MultishotConfig.watermarkanchor end,
    	set = function(_,v) MultishotConfig.watermarkanchor = v end },
    header4 = {
      order = 26,
      type = "header",
      name = L["various"] },
    debug = {
      order = 27,
      type = "toggle",
      name = L["debug"],
      get = function() return MultishotConfig.debug end, 
      set = function(_,v) MultishotConfig.debug = v end },
    reset = {
      order = 28,
      type = "execute",
      name = L["reset"],
      func = function() MultishotConfig.history = {} end },
		header5 = {
      order = 29,
      type = "header",
      name = L["timeline"] },
		timeline = {
      order = 30,
      type = "toggle",
      name = L["timeLineEnable"],
      get = function() return MultishotConfig.timeLineEnable end, 
      set = function(_,v) 
      	MultishotConfig.timeLineEnable = v
      	Multishot:TimeLineConfig(v)
      end },
		delay3 = {
      order = 31,
      type = "range",
      name = L["delayTimeline"],
      min = 5, max = 60, step = 5,
      get = function() return MultishotConfig.delay3 end, 
      set = function(_,v) MultishotConfig.delay3 = v end },
  }
}

function Multishot:TimeLineConfig(enable)
	if enable then 
  	Multishot.timeLineTimer = Multishot:ScheduleRepeatingTimer("TimeLineProgress",5) 
  else 
  	if Multishot.timeLineTimer then
  		Multishot:CancelTimer(Multishot.timeLineTimer)
		end
	end
end

function Multishot:OnInitialize()
  LibStub("AceConfig-3.0"):RegisterOptionsTable("Multishot", dataOptions)
  Multishot.PrefPane = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("Multishot")
  setmetatable(MultishotConfig, {__index = dataDefaults})
  MultishotConfig.history = MultishotConfig.history
end