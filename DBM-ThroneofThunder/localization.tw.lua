﻿if GetLocale() ~= "zhTW" then return end
local L

--------------------------
-- Jin'rokh the Breaker --
--------------------------
L= DBM:GetModLocalization(827)

L:SetWarningLocalization({
	SpecWarnJSA			= ">>> 注意減傷 <<<"
})

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能",
	SpecWarnJSA			= "特殊警告：注意減傷",
	SoundWOPIonM		= "語音警告：$spell:138732 7秒時提示(不選則結束前提示)",
	dr1					= "減傷提示：$spell:137313 1/3-1 [開始時提示]",
	dr2					= "減傷提示：$spell:137313 1/3-2 [五秒時提示]",
	dr3					= "減傷提示：$spell:137313 2/4-1",
	dr4					= "減傷提示：$spell:137313 2/4-2",
	RangeFrame			= "距離監視"
})

--------------
-- Horridon --
--------------
L= DBM:GetModLocalization(819)

L:SetWarningLocalization({
	warnAdds		= "%s",
	SpecWarnJSA		= ">>> 注意減傷 <<<",
	warnOrbofControl		= "控獸寶珠掉落",
	specWarnOrbofControl		= ">>控獸寶珠掉落<<"
})

L:SetTimerLocalization({
	timerDoor		= "下一個部族大门開啟",
	timerAdds		= "下一次 %s"
})

L:SetOptionLocalization({
	warnAdds			= "警告：小怪跳下",
	warnOrbofControl		= "警告：$journal:7092掉落",
	specWarnOrbofControl		= "特別警告：$journal:7092掉落",
	SoundWOP			= "語音警告：重要技能",
	SpecWarnJSA			= "特殊警告：注意減傷",
	InfoFrame			= "資訊框：$spell:137458輪數",	
	ccsoon				= "語音警告：即將$spell:136767(當你是首領目標時無視此選項)",
	ddyls				= "語音警告：打斷$spell:136797",
	dr1					= "減傷提示：$spell:136817 1",
	dr2					= "減傷提示：$spell:136817 2",
	dr3					= "減傷提示：$spell:136817 3",
	dr4					= "減傷提示：$spell:136817 4",
	SoundDB				= "語音警告：$spell:136741",
	SoundOrb			= "語音警告：$journal:7092",
	optQS				= "DEBUFF驅散鏈",
	noQS				= "不提示",
	QS1					= "順序1",
	QS2					= "順序2",
	QS3					= "順序3",
	allQS				= "總是提示",
	RangeFrame			= "距離監視：熊門5碼",
	SoundWSP			= "語音警告：$journal:7866 接近20碼內 (請焦點鎖定你的靈魂)",
	dispsetHex			= "當設定的角色中了混亂詛咒時提示你幫忙驅散",
	timerDoor			= "計時器：下一个部族大门開啟",
	timerAdds			= "計時器：下一組小怪刷新",
	SetIconOnCharge			= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(136769)
})

L:SetMiscLocalization({
	newForces				= "的門蜂擁而出!",--Farraki forces pour from the Farraki Tribal Door!
	chargeTarget			= "用力拍動尾巴!"--Horridon sets his eyes on Eraeshio and stamps his tail!
})

---------------------------
-- The Council of Elders --
---------------------------
L= DBM:GetModLocalization(816)

L:SetWarningLocalization({
	specWarnDDL 	= ">> 下一次 到你斷 <<",
	specWarnPossessed		= "%s %s - 快轉火!"
})

L:SetOptionLocalization({
	SoundWOP		= "語音警告：重要技能",
	helpcold		= "監視此人的體溫：在體溫流失前3秒給予提示",
	InfoFrame		= "資訊框：$spell:136442信息",
	SoundLs			= "倒計時：$spell:136521",	
	SoundHs			= "語音預警：$spell:136990",
	Soundspirit		= "倒計時：女祭司的各種魂靈",
	HudMAP			= "高級定位監視(HUD)：$spell:136992",
	HudMAP2			= "高級定位監視(HUD)：$spell:136922",
	optDD			= "沙王打斷鏈",
	nodd			= "我不打斷",
	DD1				= "打斷1",
	DD2				= "打斷2",
	DD3				= "打斷3",
	optOC			= "當靈魂碎片疊加幾層時提示你傳遞",
	five			= "5層",
	ten				= "10層",
	none			= "從不提示",
	specWarnDDL 	= "特殊警告：下一次到你打斷",
	warnPossessed		= DBM_CORE_AUTO_ANNOUNCE_OPTIONS.target:format(136442),
	specWarnPossessed	= DBM_CORE_AUTO_SPEC_WARN_OPTIONS.switch:format(136442),
	warnSandBolt		= DBM_CORE_AUTO_ANNOUNCE_OPTIONS.target:format(136189),
	PHealthFrame		= "為$spell:136442消散顯示剩餘血量框架(需要首領血量框架開啟)",
	RangeFrame			= "顯示距離框架",
	SetIconOnBitingCold	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(136992),
	SetIconOnFrostBite	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(136922)
})

------------
-- Tortos --
------------
L= DBM:GetModLocalization(825)

L:SetWarningLocalization({
	warnKickShell			= "%s 被 >%s< 踢掉 (%d 剩餘)",
	specWarnCrystalShell	= "去拿 >%s<"
})

L:SetOptionLocalization({	
	warnKickShell			= DBM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format(134031),
	SoundWOP				= "語音警告：重要技能",
	SoundAE					= "倒計時：$spell:133939",
	SoundXG					= "語音警告：$journal:7129出現",
	dr1						= "減傷提示：$spell:134920 1/4",
	dr2						= "減傷提示：$spell:134920 2/4",
	dr3						= "減傷提示：$spell:134920 3/4",
	dr4						= "減傷提示：$spell:134920 4/4",
	specWarnCrystalShell	= "特別警告：缺少$spell:137633",
	InfoFrame				= "資訊框：缺少$spell:137633",
	warnsj					= "特別功能：水晶碎裂使用智能警報方式",
	ClearIconOnTurtles		= "為$journal:7129取消團隊圖示",
	SetIconOnTurtles		= "為$journal:7129標示團隊圖示(超過一名以上的團隊助理時不可靠)",
})

L:SetMiscLocalization({
	WrongDebuff		= "缺少%s"
})

-------------
-- Megaera --
-------------
L= DBM:GetModLocalization(821)
L:SetTimerLocalization({
	timerBreathsCD			= "下一次吐息"
})
	
L:SetWarningLocalization({
	SpecWarnJSA			= ">>> 給毒頭坦減傷 <<<"
})

L:SetOptionLocalization({
	SoundWOP		= "語音警告：重要技能",
	timerBreaths			= "計時器：下一次吐息",
	SoundXL			= "語音警告：$spell:140138",
	HudMAP			= "高級定位監視(HUD)：$spell:139822",
	HudMAP2			= "高級定位監視(HUD)：$spell:139889",
	dr1				= "減傷提示：$spell:139458 1",
	dr2				= "減傷提示：$spell:139458 2",
	dr3				= "減傷提示：$spell:139458 3",
	dr4				= "減傷提示：$spell:139458 4",
	dr5				= "減傷提示：$spell:139458 5",
	dr6				= "減傷提示：$spell:139458 6",
	dr7				= "減傷提示：$spell:139458 7",
	dr8				= "減傷提示：$spell:139458 8",
	InfoFrame		= "資訊框：$journal:7006",
	SetIconOnCinders		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(139822),
	SetIconOnTorrentofIce	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(139889)
})

L:SetMiscLocalization({
	rampageEnds		= "梅賈拉的怒氣平息了。",
	Behind			= "迷霧蛇頭"
})

------------
-- Ji-Kun --
------------
L= DBM:GetModLocalization(828)

L:SetWarningLocalization({
	warnFlock		= "%s %s (%s)",
	specWarnFlock	= "%s %s (%s)"
})

L:SetTimerLocalization({
	timerFlockCD	= "第%d波: %s"
})

L:SetOptionLocalization({
	SoundWOP		= "語音警告：重要技能",
	warnFlock		= DBM_CORE_AUTO_ANNOUNCE_OPTIONS.count:format("ej7348"),
	specWarnFlock	= DBM_CORE_AUTO_SPEC_WARN_OPTIONS.switch:format("ej7348"),
	timerFlockCD	= DBM_CORE_AUTO_TIMER_OPTIONS.nextcount:format("ej7348"),
	HudMAP			= "高級定位監視(HUD)：標注出可能的$spell:138923落點(不包括對你的)",
	HudMAPMe		= "同時標注出可能對你發射的$spell:138923(不建議)",
	add1			= "第一波$journal:7348(下)",
	add2			= "第二波$journal:7348(下)",
	add3			= "第三波$journal:7348(下)",
	add4			= "第四波$journal:7348(上)",
	add5			= "第四波$journal:7348(下)",
	add6			= "第五波$journal:7348(上)",
	add7			= "第五波$journal:7348(下)",
	add8			= "第六波$journal:7348(上)",
	add9			= "第七波$journal:7348(上)",
	add10			= "第七波$journal:7348(下)",
	add11			= "第八波$journal:7348(上)",
	add12			= "第八波$journal:7348(下)",
	add13			= "第九波$journal:7348(上)",
	add14			= "第九波$journal:7348(下)",
	add15			= "第十波$journal:7348(上)",
	add16			= "第十波$journal:7348(下)",
	add17			= "第十一波$journal:7348(上)",
	add18			= "第十一波$journal:7348(下)",
	add19			= "第十二波$journal:7348(上)",
	add20			= "第十二波$journal:7348(下)",
	add21			= "第十三波$journal:7348(上)",
	add22			= "第十三波$journal:7348(下)",
	add23			= "第十四波$journal:7348(上)",
	add24			= "第十四波$journal:7348(下)",
	add25			= "第十五波$journal:7348(上)",
	add26			= "第十五波$journal:7348(下)",
	add27			= "第十六波$journal:7348(上)",
	add28			= "第十六波$journal:7348(下)",
	add29			= "第十七波$journal:7348(上)",
	add30			= "第十七波$journal:7348(下)",
	add31			= "第十八波$journal:7348(上)",
	add32			= "第十八波$journal:7348(下)",
	add33			= "第十九波$journal:7348(上)",
	add34			= "第十九波$journal:7348(下)",
	add35			= "第二十波$journal:7348(上)",
	add36			= "第二十波$journal:7348(下)",
	dr1				= "減傷提示：$spell:134380 1",
	dr2				= "減傷提示：$spell:134380 2",
	dr3				= "減傷提示：$spell:134380 3",
	dr4				= "減傷提示：$spell:134380 4",
	dr5				= "減傷提示：$spell:134380 5",
	dr6				= "減傷提示：$spell:134380 6",
	dr7				= "減傷提示：$spell:134380 7",
	RangeFrame		= "距離監視(8碼)：$spell:138923"
})

L:SetMiscLocalization({
	eggsHatchL		= "下層巢裡的蛋開始孵化了!",
	eggsHatchU		= "上層巢裡的蛋開始孵化了!",
	Upper			= "上層",
	Lower			= "下層",
	UpperAndLower		= "上層和下層",
	TrippleD		= "三個 (2下1上)",
	TrippleU		= "三個 (2上1下)"
})

--------------------------
-- Durumu the Forgotten --
--------------------------
L= DBM:GetModLocalization(818)

L:SetWarningLocalization({
	warnBeamNormal				= "射線 - |cffff0000紅光|r : >%s<, |cff0000ff藍光|r : >%s<",
	warnBeamHeroic				= "射線 - |cffff0000紅光|r : >%s<, |cff0000ff藍光|r : >%s<, |cffffff00黃光|r : >%s<",
	warnAddsLeft				= "霧獸剩餘: %d",
	specWarnBlueBeam			= "你中了藍光射線 - 避免移動!!",
	specWarnFogRevealed			= "照出%s了!",
	specWarnHold				= "黑暗寄生(%d秒)--快開自保技能",
	specWarnDisintegrationBeam	= "%s (%s)"
})

L:SetOptionLocalization({
	SoundWOP					= "語音警告：重要技能",
	warnBeam					= "提示射線目標",
	specWarnBlueBeam			= DBM_CORE_AUTO_SPEC_WARN_OPTIONS.spell:format(139202),
	optDD						= "三元光分擔策略",
	DXsound						= "高級定位監視(HUD)：$spell:133795",
	InfoFrame					= "信息框：$spell:133597 (若同時監視$spell:133795 則優先顯示$spell:133795層數)",
	InfoFrameLife				= "信息框：$spell:133795層數",
	Sayam						= "特殊功能：被吸血時喊出層數(內容可在下方自定義)",
	nodd						= "不分擔",
	DD1							= "A:紅黃藍",
	DD2							= "B:黃藍紅",
	DD3							= "C:藍紅黃",
	HudMAP						= "高級定位監視(HUD)：三元光分擔",
	warnAddsLeft				= "警告：霧獸剩餘數量",
	specWarnFogRevealed			= "特別警告：霧獸被照出",
	specWarnDisintegrationBeam	= DBM_CORE_AUTO_SPEC_WARN_OPTIONS.spell:format("ej6882"),
	ArrowOnBeam					= "DBM箭頭：$journal:6882的轉動方向",
	soundhold					= "黑暗寄生多少秒時提示你開自保(30-剩幾秒驅散-自保持續時間)",
	specWarnHold				= "特別警告：黑暗寄生開自保",
	xx1							= "當你被吸血一層時喊話",
	xx2							= "當你被吸血兩層時喊話",
	xx3							= "當你被吸血超過三層時喊話(DBM會自動在結尾為你顯示層數)",
	SetIconRays					= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format("ej6891"),
	SetIconLifeDrain			= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(133795)
})

L:SetMiscLocalization({
	Eye		= "魔眼",
	xx1noset = "11111111吸我了",
	xx2noset = "22222層了 快幫我擋 快幫我擋",
	xx3noset = "我要被吸死了------"
})

----------------
-- Primordius --
----------------
L= DBM:GetModLocalization(820)

L:SetWarningLocalization({
	warnDebuffCount				= "變異 : %d/5 有益 & %d 有害"
})

L:SetOptionLocalization({
	SoundWOP		= "語音警告：重要技能",
	warnDebuffCount		= "警告：當你獲得了有害變異",
	InfoFrame		= "資訊框：首領當前的$journal:6949技能",
	RangeFrame		= "顯示距離框架(2碼/5碼)",
	SetIconOnBadOoze	= "為$spell:140506自動標記"
})

L:SetMiscLocalization({
	BossSpellInfo 	= "進化技能分析表",
	AE1				= "持續性AE",
	AE2				= "靠近分擔AE (15s)",
	tar5			= "分散5碼 (3s)",
	tar1			= "病原體點名 (30s)",
	speed			= "速度提升50%",
	tar2			= "分散2碼 (10s)",
})

-----------------
-- Dark Animus --
-----------------
L= DBM:GetModLocalization(824)

L:SetWarningLocalization({
	warnMatterSwapped	= "%s: >%s< 和 >%s< 交換"
})

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能",
	RangeFrame			= "顯示距離框架(8碼)",
	warnMatterSwapped	= "警告：被$spell:138618交換的目標"
})

L:SetMiscLocalization({
	Pull	= "寶珠爆炸了!"
})

--------------
-- Iron Qon --
--------------
L= DBM:GetModLocalization(817)

L:SetWarningLocalization({
	warnDeadZone	= "%s: %s / %s ",
	SpecWarnJSA			= ">>> 注意減傷 <<<"
})

L:SetOptionLocalization({
	warnDeadZone	= DBM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format(137229),
	SoundWOP		= "語音警告：重要技能",
	SoundARAT		= "語音警告：報出$spell:137231的攻擊方位",
	ReapetAP		= "特殊功能：若你中了$spell:136192則不停呼救",
	HudMAP			= "高級定位監視(HUD)：$spell:136192",
	HudMAP2			= "高級定位監視(HUD)：閃電階段結束後標誌出$spell:136193攜帶者",
	RangeFrame		= "顯示動態距離框架(當太多人太接近時會動態顯示)",
	InfoFrame		= "信息框：$spell:136193"
})

L:SetMiscLocalization({
	Helpme			= "拉我一把 ~~~"
})

-------------------
-- Twin Consorts --
-------------------
L= DBM:GetModLocalization(829)

L:SetWarningLocalization({
	warnNight		= "黑夜階段",
	warnDay			= "白天階段",
	warnDusk		= "黃昏階段"
})

L:SetTimerLocalization({
	timerDayCD		= "白天階段",
	timerDuskCD		= "黃昏階段",
})

L:SetOptionLocalization({
	SoundWOP			= "語音警告：重要技能",
	HudMAP				= "高級定位監視(HUD)：$journal:7651星座輔助線",
	HudMAP2				= "高級定位監視(HUD)：$spell:136752",
	warnNight		= "警告：黑夜階段",
	warnDay			= "警告：白天階段",
	warnDusk		= "警告：黃昏階段",
	timerDayCD		= "計時器：白天階段",
	timerDuskCD		= "計時器：黃昏階段",
	RangeFrame			= "距離監視(8碼)"
})

L:SetMiscLocalization({
	DuskPhase		= "盧凜!借本宮力量!"
})

--------------
-- Lei Shen --
--------------
L= DBM:GetModLocalization(832)

L:SetWarningLocalization({
	specWarnIntermissionSoon	= "充能階段 即將到來"
})
	
L:SetOptionLocalization({
	SoundWOP		= "語音警告：重要技能",
	specWarnIntermissionSoon	= "特別警告：充能階段即將到來",
	HudMAP			= "高級定位監視(HUD)：$spell:135695",
	HudMAP2			= "高級定位監視(HUD)：$spell:136295",
	cancelhud		= "當玩家白字說不需要分擔時變換HUD標誌(輸入監視關鍵字 例如:單吃)",
	RangeFrame		= "距離監視",--For two different spells
	StaticShockArrow	= "DBM箭頭：$spell:135695",
	OverchargeArrow		= "DBM箭頭：$spell:136295",
	SetIconOnOvercharge	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(136295),
	SetIconOnStaticShock= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(135695)
})

------------
-- Ra-den --
------------
L= DBM:GetModLocalization(831)

-------------
--  Trash  --
-------------
L = DBM:GetModLocalization("ToTTrash")

L:SetGeneralLocalization({
	name =	"雜兵"
})

L:SetOptionLocalization({
	SoundWOP		= "語音警告：重要技能",
	HudMAP			= "高級定位監視(HUD)：$spell:139322/$spell:139900",
	RangeFrame		= "距離監視(10碼)"--For 3 different spells
})
