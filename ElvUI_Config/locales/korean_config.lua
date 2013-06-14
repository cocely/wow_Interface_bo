-- Korean localization file for koKR.
local AceLocale = LibStub:GetLibrary("AceLocale-3.0")
local L = AceLocale:NewLocale("ElvUI", "koKR")
if not L then return end

-- *_DESC locales
L["AURAS_DESC"] = "Configure the aura icons that appear near the minimap."
L["BAGS_DESC"] = "ElvUI 위해 가방 설정을 조정합니다."
L["CHAT_DESC"] = "ElvUI의 대화창을 설정합니다."
L["DATATEXT_DESC"] = "정보문자를 설정합니다."
L["ELVUI_DESC"] = "ElvUI는 WoW의 애드온을 대신하는 완전한 애드온입니다."
L["NAMEPLATE_DESC"] = "이름표의 설정을 수정합니다."
L["PANEL_DESC"] = "좌우 패널의 너비를 조절합니다. 이 값에 따라 대화창과 가방의 크기가 변경됩니다."
L["SKINS_DESC"] = "애드온이나 프레임의 스킨을 설정합니다."
L["TOGGLESKIN_DESC"] = "스킨 사용/중지"
L["TOOLTIP_DESC"] = "툴팁을 설정합니다."
L['TEXT_FORMAT_DESC'] = [=[Provide a string to change the text format.

Examples:
[namecolor][name] [difficultycolor][smartlevel] [shortclassification]
[healthcolor][health:current-max]
[powercolor][power:current]

Health / Power Formats:
'current' - current amount
'percent' - percentage amount
'current-max' - current amount followed by maximum amount, will display only max is current is equal to max
'current-percent' - current amount followed by percentage amount, will display only max is current is equal to max
'current-max-percent' - current amount, max amount, followed by percentage amount, will display only max if current is equal to max
'deficit' - display the deficit value, will display nothing if there is no deficit

Name Formats:
'name-short' - Name restricted to 10 characters
'name-medium' - Name restricted to 15 characters
'name-long' - Name restricted to 20 characters

To disable leave the field blank, if you need more information visit http://www.tukui.org]=];

--ActionBars
L["Action Paging"] = "행동단축바 페이지 전환"
L["ActionBars"] = "행동단축바"
L["Alpha"] = true
L["Anchor Point"] = "기준점"
L["Backdrop"] = "배경"
L["Button Size"] = "버튼 크기"
L["Button Spacing"] = "버튼 간격"
L["Buttons Per Row"] = "한 줄당 버튼 수"
L["Buttons"] = "버튼 수"
L["Change the alpha level of the frame."] = true
L["Color of the actionbutton when out of power (Mana, Rage, Focus, Holy Power)."] = true
L["Color of the actionbutton when out of range."] = true
L["Color when the text is about to expire"] = "만료되는 버프의 문자 색상"
L["Color when the text is in the days format."] = "하루 단위 버프의 문자 색상"
L["Color when the text is in the hours format."] = "시간 단위 버프의 문자 색상"
L["Color when the text is in the minutes format."] = "분 단위 버프의 문자 색상"
L["Color when the text is in the seconds format."] = "초 단위 버프의 문자 색상"
L["Cooldown Text"] = "재사용 대기 시간 문자"
L["Days"] = "일"
L["Display bind names on action buttons."] = "행동단축바 버튼에 지정된 단축키를 표시합니다."
L["Display cooldown text on anything with the cooldown spiril."] = "재사용 대기시간이 있다면 재사용 대기시간을 표시합니다."
L["Display macro names on action buttons."] = "행동단축바 버튼에 매크로 이름을 표시합니다."
L["Expiring"] = "만료"
L["Height Multiplier"] = "높이 배율"
L["Hours"] = "시간"
L["Key Down"] = true
L["Keybind Mode"] = "단축키 설정 모드"
L["Keybind Text"] = "단축키 문자"
L["Low Threshold"] = "낮은 임계값"
L["Macro Text"] = "매크로 문자"
L["Minutes"] = "분"
L["Mouse Over"] = "마우스 오버"
L["Multiply the backdrops height or width by this value. This is usefull if you wish to have more than one bar behind a backdrop."] = "이 값의 배율로 배경의 높이 또는 너비만큼 백그라운드가 추가 됩니다. 이는 당신이 이 새로 생성된 백그라운드에 하나 이상의 바를 더 생성할 경우 유용합니다."
L["Out of Power"] = true
L["Out of Range"] = true
L["Restore Bar"] = "바 복원"
L["Restore the actionbars default settings"] = "행동단축바 기본값 복원"
L["Seconds"] = "초"
L["Set the font size of the action buttons."] = "행동단축바의 글꼴 크기를 설정합니다."
L["The amount of buttons to display per row."] = "한 줄에 표시되는 버튼의 수를 설정합니다."
L["The amount of buttons to display."] = "표시되는 버튼의 수를 설정합니다."
L["The button you must hold down in order to drag an ability to another action button."] = true
L["The first button anchors itself to this point on the bar."] = "첫번째 버튼이 바의 기준점이 됩니다."
L["The size of the action buttons."] = "행동단축바 버튼의 크기"
L["Threshold before text turns red and is in decimal form. Set to -1 for it to never turn red"] = "붉은 문자열로 전환될 10진법 형태의 임계값. 사용하지 않으려면 -1로 설정"
L["Toggles the display of the actionbars backdrop."] = "행동단축바 배경의 표시를 전환합니다."
L["Visibility State"] = "보여지는 상태"
L["Width Multiplier"] = "너비 배율"
L[ [=[This works like a macro, you can run different situations to get the actionbar to page differently.
 Example: '[combat] 2;']=] ] = [=[이것은 당신이 처한 상황(예를들어 전투나 비전투시)에 따라 다른 액션바 페이지를 보여주며 매크로처럼 작동합니다.
예시: '[combat] 2;']=]
L[ [=[This works like a macro, you can run different situations to get the actionbar to show/hide differently.
 Example: '[combat] show;hide']=] ] = [=[이것은 당신이 처한 상황(예를들어 전투나 비전투시)에 따라 액션바를 숨기거나 표시할 수 있게 해주며 매크로처럼 작동합니다.
예시: '[combat] show;hide']=]

--Bags
L["Adjust the width of the bag frame."] = true
L["Adjust the width of the bank frame."] = true
L["Align the width of the bag frame to fit inside the chat box."] = true
L["Align To Chat"] = true
L["Ascending"] = true
L["Bag-Bar"] = true
L["Bar Direction"] = true
L["Bottom to Top"] = "상단 아래쪽으로 이동"
L["Button Size (Bag)"] = true
L["Button Size (Bank)"] = true
L["Click to search.."] = "클릭시 검색합니다..."
L["Currency Format"] = true
L["Descending"] = true
L["Direction the bag sorting will use to allocate the items."] = "방향 가방 정렬이 항목을 할당하는 데 사용합니다."
L["Enable/Disable the all-in-one bag."] = "통합가방 사용/중지"
L["Enable/Disable the Bag-Bar."] = true
L["Icons and Text"] = true
L["Ignore Items"] = true
L["List of items to ignore when sorting. If you wish to add multiple items you must seperate the word with a comma."] = true
L["Panel Width (Bags)"] = true
L["Panel Width (Bank)"] = true
L["Set the size of your bag buttons."] = true
L["Sort Direction"] = true
L["Sort Inverted"] = true
L["The direction that the bag frames be (Horizontal or Vertical)."] = true
L["The direction that the bag frames will grow from the anchor."] = true
L["The display format of the currency icons that get displayed below the main bag. (You have to be watching a currency for this to display)"] = true
L["The frame is not shown unless you mouse over the frame."] = "마우스오버를 하지 않는 이상 보이지 않는 프레임입니다."
L["The size of the individual buttons on the bag frame."] = true
L["The size of the individual buttons on the bank frame."] = true
L["The spacing between buttons."] = "버튼 사이의 간격을 설정합니다."
L["Top to Bottom"] = "위에서 아래로"
L["X Offset"] = "X 축 기준 좌표"
L["Y Offset"] = "Y 축 기준 좌표"
L["You must be at a bank."] = true

--Buffs and Debuffs
L["Begin a new row or column after this many auras."] = true
L["Consolidated Buffs"] = true
L["Defines how the group is sorted."] = true
L["Defines the sort order of the selected sort method."] = true
L["Display the consolidated buffs bar."] = true
L["Fade Threshold"] = true
L["Filter Consolidated"] = true
L["Index"] = true
L["Indicate whether buffs you cast yourself should be separated before or after."] = true
L["Limit the number of rows or columns."] = true
L["Max Wraps"] = true
L["No Sorting"] = true
L["Only show consolidated icons on the consolidated bar that your class/spec is interested in. This is useful for raid leading."] = true
L["Other's First"] = true
L["Remaining Time"] = true
L["Seperate"] = true
L["Set the size of the individual auras."] = true
L["Sort Method"] = true
L["Threshold before text changes red, goes into decimal form, and the icon will fade. Set to -1 to disable."] = true
L["Time"] = true
L["Wrap After"] = true
L["Your Auras First"] = true

--Chat
L["Above Chat"] = true
L["Attempt to create URL links inside the chat."] = "대화창에 URL 주소를 생성합니다."
L["Attempt to lock the left and right chat frame positions. Disabling this option will allow you to move the main chat frame anywhere you wish."] = true
L["Below Chat"] = true
L["Chat EditBox Position"] = true
L["Chat History"] = true
L["Copy Text"] = "텍스트 복사"
L["Display the hyperlink tooltip while hovering over a hyperlink."] = "하이퍼링크에 마우스를 올려놓으면 링크의 툴팁을 표시합니다."
L["Fade Chat"] = true
L["Fade the chat text when there is no activity."] = true
L["Font Outline"] = "글꼴 외곽선"
L["Font"] = "글꼴"
L["Hide Both"] = "모두 숨기기"
L["Hyperlink Hover"] = "하이퍼링크 마우스오버"
L["Keyword Alert"] = true
L["Keywords"] = true
L["Left Only"] = "왼쪽만"
L["List of words to color in chat if found in a message. If you wish to add multiple words you must seperate the word with a comma. To search for your current name you can use %MYNAME%.\n\nExample:\n%MYNAME%, ElvUI, RBGs, Tank"] = true
L["Lock Positions"] = true
L["Log the main chat frames history. So when you reloadui or log in and out you see the history from your last session."] = true
L["Number of time in seconds to scroll down to the bottom of the chat window if you are not scrolled down completely."] = "만약 채팅창이 맨 밑으로 스크롤 되지 않았다면 설정한 시간 후 채팅창의 맨 아래로 스크롤됩니다."
L["Panel Backdrop"] = "대화창 배경"
L["Panel Height"] = true
L["Panel Texture (Left)"] = "패널 텍스쳐 (왼쪽)"
L["Panel Texture (Right)"] = "패널 텍스쳐 (오른쪽)"
L["Panel Width"] = "패널 너비"
L["Position of the Chat EditBox, if datatexts are disabled this will be forced to be above chat."] = true
L["Prevent the same messages from displaying in chat more than once within this set amount of seconds, set to zero to disable."] = "똑같은 메시지는 정해진 시간 내 한번 이상 표시되지 않도록 막습니다. 0으로 설정하면 이 기능을 끕니다."
L["Right Only"] = "오른쪽 만"
L["Scroll Interval"] = "스크롤 간격"
L["Set the font outline."] = "글꼴 외곽선 설정."
L["Short Channels"] = "짧은 채널이름"
L["Shorten the channel names in chat."] = "대화창의 채널이름을 짧게 표시합니다."
L["Show Both"] = "모두 보이기"
L["Spam Interval"] = "스팸 간격"
L["Sticky Chat"] = true
L["Tab Font Outline"] = true
L["Tab Font Size"] = true
L["Tab Font"] = true
L["Tab Panel Transparency"] = true
L["Tab Panel"] = true
L["Toggle showing of the left and right chat panels."] = "왼쪽과 오른쪽의 대화창 패널의 표시방법을 전환합니다."
L["Toggle the chat tab panel backdrop."] = true
L["URL Links"] = "URL 링크"
L["When opening the Chat Editbox to type a message having this option set means it will retain the last channel you spoke in. If this option is turned off opening the Chat Editbox should always default to the SAY channel."] = true
L["Whisper Alert"] = true
L[ [=[Specify a filename located inside the World of Warcraft directory. Textures folder that you wish to have set as a panel background.

Please Note:
-The image size recommended is 256x128
-You must do a complete game restart after adding a file to the folder.
-The file type must be tga format.

Example: Interface\AddOns\ElvUI\media\textures\copy

Or for most users it would be easier to simply put a tga file into your WoW folder, then type the name of the file here.]=] ] = [=[월드오브워크래프트 폴더안에 판넬의 배경으로 사용하고자 하는 텍스쳐 파일을 위치시킨후 이를 지정해 주어야 합니다.

주의
-이미지 파일의 사이즈는 256X128픽셀을 권장합니다.
-폴더안에 파일을 추가한 후 게임을 반드시 재시작해야 합니다.
-파일의 종류는 tga포맷이어야 합니다.

예시:Interface\AddOns\ElvUI\media\textures\copy

혹은 간단히 사용하고자 하는 tga파일을 당신의 와우 폴더에 넣은후 이곳에 파일이름을 적어도 됩니다.]=]

--Credits
L["Coding:"] = "개발:"
L["Credits"] = "제작"
L["Donations:"] = "기부:"
L["ELVUI_CREDITS"] = "저는 이 애드온의 유지와 개발 코딩에 도움을 주거나 기부를 한 분들께 특별히 감사하고 싶습니다. 포럼에서 저에게 개인적으로 메일을 준 분들에힌해 이름만 표기했으며 만약 당신의 이름이 누락되어 있고 명단에 당신의 이름을 표기하고 하는 분들은 저에게 개인적인 메일을 보내주시기 바랍니다. "
L["Testing:"] = "테스트:"

--DataTexts
L["24-Hour Time"] = "24시간제"
L["Always Display"] = true
L["Battleground Texts"] = true
L["Change settings for the display of the location text that is on the minimap."] = true
L["Datatext Panel (Left)"] = true
L["Datatext Panel (Right)"] = true
L["DataTexts"] = "정보문자"
L["Display data panels below the chat, used for datatexts."] = true
L["Display minimap panels below the minimap, used for datatexts."] = true
L["If not set to true then the server time will be displayed instead."] = "만약 'TRUE'값으로 설정하지 않을경우 대신 서버시간이 표시 될겁니다."
L["left"] = "왼쪽"
L["LeftChatDataPanel"] = "왼쪽 대화창"
L["LeftMiniPanel"] = "미니맵 왼쪽"
L["Local Time"] = "지역 시간"
L["Location Text"] = true
L["middle"] = "중앙"
L["Minimap Mouseover"] = true
L["Minimap Panels"] = true
L["Panel Transparency"] = true
L["Panels"] = "패널"
L["right"] = "오른쪽"
L["RightChatDataPanel"] = "오른쪽 대화창 패널"
L["RightMiniPanel"] = "미니맵 오른쪽 하단 패널"
L["Toggle 24-hour mode for the time datatext."] = "24시간제로 전환합니다."
L["When inside a battleground display personal scoreboard information on the main datatext bars."] = true

--Distributor
L["Must be in group with the player if he isn't on the same server as you."] = true
L["Sends your current profile to your target."] = true
L["Sends your filter settings to your target."] = true
L["Share Current Profile"] = true
L["Share Filters"] = true
L["This feature will allow you to transfer, settings to other characters."] = true
L["You must be targeting a player."] = true

--General
L["Accept Invites"] = "초대 수락"
L["Adjust the position of the threat bar to either the left or right datatext panels."] = true
L["Adjust the size of the minimap."] = "미니맵의 크기를 조정합니다."
L["Announce Interrupts"] = "방해/차단 알림"
L["Announce when you interrupt a spell to the specified chat channel."] = "주문 차단/방해를 하면 특정 대화채널로 알립니다."
L["Auto Greed/DE"] = true
L["Auto Repair"] = "자동 수리"
L["Auto Scale"] = "자동 크기"
L["Automatically accept invites from guild/friends."] = "길드원/친구 초대시 자동으로 수락합니다."
L["Automatically repair using the following method when visiting a merchant."] = "상인 방문 시 다음과 같은 방법으로 장비을 자동 수리합니다."
L["Automatically scale the User Interface based on your screen resolution"] = "사용자의 화면 해상도에 따라 자동으로 UI 크기를 맞춥니다."
L["Automatically select greed or disenchant (when available) on green quality items. This will only work if you are the max level."] = true
L["Automatically vendor gray items when visiting a vendor."] = true
L["Bottom Panel"] = true
L['Chat Bubbles Style'] = true;
L["Controls what the transparency of the worldmap will be set to when you are moving."] = "캐릭터 이동시 전체지도의 투명 상태를 설정합니다."
L["Display a panel across the bottom of the screen. This is for cosmetic only."] = true
L["Display a panel across the top of the screen. This is for cosmetic only."] = true
L["Display emotion icons in chat."] = true
L["Don't scale the large world map to block out sides of the screen."] = true
L["Emotion Icons"] = true
L["Enable/Disable the loot frame."] = "전리품 획득창 사용/중지"
L["Enable/Disable the loot roll frame."] = "주사위 창 사용/중지"
L["Enable/Disable the minimap. |cffFF0000Warning: This will prevent you from seeing the consolidated buffs bar, and prevent you from seeing the minimap datatexts.|r"] = true
L["General"] = "일반"
L["Hide Error Text"] = true
L["Hides the red error text at the top of the screen while in combat."] = true
L["Left"] = true
L["Log Taints"] = true
L["Login Message"] = "로그인 메세지"
L["Loot Roll"] = "주사위"
L["Loot"] = "전리품"
L["Map Alpha While Moving"] = true
L["Name Font"] = true
L["Remove Backdrop"] = true
L["Reset all frames to their original positions."] = "원래 위치로 모든 프레임을 초기화합니다."
L["Reset Anchors"] = "앵커 초기화"
L["Right"] = true
L["Send ADDON_ACTION_BLOCKED errors to the Lua Error frame. These errors are less important in most cases and will not effect your game performance. Also a lot of these errors cannot be fixed. Please only report these errors if you notice a Defect in gameplay."] = true
L["Skin Backdrop"] = true
L["Skin the blizzard chat bubbles."] = "말풍선 스킨  있습니다."
L["The font that appears on the text above players heads. |cffFF0000WARNING: This requires a game restart or re-log for this change to take effect.|r"] = true
L["Tiny Map"] = true
L["Toggle Tutorials"] = true
L["Top Panel"] = true

--Media
L["Backdrop color of transparent frames"] = "투명한 프레임의 배경 색상"
L["Backdrop Color"] = "배경 색상"
L["Backdrop Faded Color"] = "사라질 때 배경 색상"
L["Border Color"] = "테두리 색상"
L["Color some texts use."] = "일부 문자에 이 색상을 사용합니다."
L["Colors"] = "색상"
L["CombatText Font"] = "전투문자 글꼴"
L["Default Font"] = "기본 글꼴"
L["Font Size"] = "글꼴 크기"
L["Fonts"] = "글꼴"
L["Main backdrop color of the UI."] = "UI의 기본 배경 색상."
L["Main border color of the UI. |cffFF0000This is disabled if you are using the pixel perfect theme.|r"] = true
L["Media"] = "미디어"
L["Primary Texture"] = "기본 텍스쳐"
L["Secondary Texture"] = "보조 텍스쳐"
L["Set the font size for everything in UI. Note: This doesn't effect somethings that have their own seperate options (UnitFrame Font, Datatext Font, ect..)"] = "UI의 모든 글꼴 크기를 설정합니다.\n (참고로 유닛프레임이나 정보문자는 적용되지 않습니다.)"
L["Textures"] = "텍스처"
L["The font that combat text will use. |cffFF0000WARNING: This requires a game restart or re-log for this change to take effect.|r"] = "이 글꼴은 화면에 표시되는 전투문자입니다.\n |cffFF0000경고: 이 효과는 게임을 재시작하거나 다시 로그인해야 활성화 됩니다.|r"
L["The font that the core of the UI will use."] = "UI의 기본 글꼴입니다."
L["The texture that will be used mainly for statusbars."] = "상태바에 기본적으로 사용되는 텍스쳐입니다."
L["This texture will get used on objects like chat windows and dropdown menus."] = "대화창이나 드롭메뉴에 사용되는 텍스쳐입니다."
L["Value Color"] = "색상 값"

--Misc
L["Install"] = "설치"
L["Run the installation process."] = "설치 가이드 실행."
L["Toggle Anchors"] = "앵커 전환"
L["Unlock various elements of the UI to be repositioned."] = "UI의 구성요소의 위치를 재조정할 수 있도록 잠금해제합니다."
L["Version"] = "버전"

--NamePlates
L["Add Name"] = "이름 추가"
L["Adjust nameplate size on smaller mobs to scale down. This will only adjust the health bar width not the actual nameplate hitbox you click on."] = true
L["All"] = "모두"
L["Always display your personal auras over the nameplate."] = true
L["Aura"] = true
L["Auras"] = "오라"
L["Background Multiplier"] = true
L["Bad Color"] = "위협적일 때 색상"
L["Bad Scale"] = "위협적일 때 크기"
L["Bad Transition Color"] = "위협적일 때 색상 전환"
L["Castbar Height"] = "시전바 높이"
L["Class Icons"] = true
L["Color of a nameplate that is tagged by another person."] = true
L["Color Tanked/Loose"] = true
L["Color the border of the nameplate yellow when it reaches the threshold point on these types of frames."] = true
L["Color the border of the nameplate yellow when it reaches this point, it will be colored red when it reaches half this value."] = true
L["Color the nameplate's healthbar by your current threat, Example: good threat color is used if your a tank when you have threat, opposite for DPS."] = "현재 위협수치에 따라 이름표의 생명력 바 색상이 변경됩니다.\n ex) 방어전담일 때 위협수치가 높으면 보통 색상으로 표시되고, 공격전담일 때에는 반대로 표시됩니다."
L["Combat Toggle"] = "전투시 전환"
L["Combo Points"] = true
L["Configure Selected Filter"] = true
L["Controls the height of the nameplate"] = "이름표의 높이를 설정합니다."
L["Controls the height of the nameplate's castbar"] = "이름표에 있는 시전바의 높이를 설정합니다."
L["Controls the width of the nameplate"] = "이름표의 너비를 설정합니다."
L["Custom Color"] = "사용자 정의 색상"
L["Custom Scale"] = "임의 크기"
L["Depending on your role. If you are a tank then it will color mobs being tanked by the offtank. If you are not a tank then it will color mobs not being tanked. This is not 100% accurate and should only be used as a referance."] = true
L["Depending on your role. If you are a tank then its the color of mobs being tanked not by you by an actual tank. If you are not a tank then it is the color of mobs that are not currently being tanked."] = true
L["Disable threat coloring for this plate and use the custom color."] = "현재 이름표의 위협수치에 따른 색상을 비활성화하고 임의로 설정된 색상을 사용합니다."
L["Display a class icon on nameplates."] = true
L["Display a healer icon over known healers inside battlegrounds or arenas."] = true
L["Display combo points on nameplates."] = true
L["Display level text on nameplate for nameplates that belong to units that aren't your level."] = true
L["Enemy"] = "적"
L["Enhance Threat"] = "위협 향상"
L["Filter already exists!"] = true
L["Filters"] = "필터"
L["Friendly NPC"] = "우호적인 NPC"
L["Friendly Player"] = "우호적인 플레이어"
L["Good Color"] = "안전한 때 색상"
L["Good Scale"] = "안전할 때 색상"
L["Good Transition Color"] = "안전한 때 색상 전환"
L["Healer Icon"] = "힐러 아이콘"
L["Hide"] = "숨기기"
L["Low Health Threshold"] = true
L["Low Health Warning"] = true
L["Name Alignment"] = true
L["Name X-Offset"] = true
L["Name Y-Offset"] = true
L["NamePlates"] = "이름표"
L["Personal Auras"] = true
L["Players"] = true
L["Prevent any nameplate with this unit name from showing."] = "이름표에 유닛이름 표시를 금지합니다."
L["Remove Name"] = "이름 제거"
L["Select a filter to use. These are imported from the unitframe aura filter."] = "사용할 필터를 선택하세요. 유닛프레임의 오라 필터로부터 불러옵니다."
L["Set the scale of the nameplate."] = "이름표의 크기를 설정합니다."
L["Small Plates"] = true
L["Tagged Color"] = true
L["Tanked/Loose Color"] = true
L["The backdrop of the nameplates color is scaled to match the color of the nameplate by this percentage. Set to zero to have no color in the nameplate backdrop."] = true
L["This color is displayed when gaining/losing threat, for a tank it would be displayed when gaining threat, for a dps/healer it would be displayed when losing threat"] = "이 색상은 위협수치가 증가하거나 감소할 때 표시되는 색상입니다.\n 방어전담의 경우 증가할 때 표시되고, 공격전담이나 치유전담의 경우 감소할 때 표시됩니다."
L["This color is displayed when gaining/losing threat, for a tank it would be displayed when losing threat, for a dps/healer it would be displayed when gaining threat"] = "이 색상은 위협수치가 증가하거나 감소할 때 표시되는 색상입니다.\n 방어전담의 경우 감소할 때 표시되고, 공격전담이나 치유전담의 경우 증가할 때 표시됩니다."
L["This is displayed when you don't have threat as a tank, if you do have threat it is displayed as a DPS/Healer"] = "방어전담의 경우 위협수치가 없을 때, 공격전담이나 치유전담의 경우 위협수치가 있을 때 표시됩니다."
L["This is displayed when you have threat as a tank, if you don't have threat it is displayed as a DPS/Healer"] = "방어전담의 경우 위협수치가 있을 때, 공격전담이나 치유전담의 경우 위협수치가 없을 때 표시됩니다."
L["Threat"] = "위협"
L["Toggles the nameplates off when not in combat."] = "비전투시 이름표를 숨기도록 전환합니다."
L["Use this filter."] = "필터를 사용합니다."
L["You can't remove a default name from the filter, disabling the name."] = "필터에서 기본 이름은 제거할 수 없습니다."

--Skins
L["Achievement Frame"] = "업적 프레임"
L["Alert Frames"] = true
L["Archaeology Frame"] = "고고학 프레임"
L["Auction Frame"] = "경매장 프레임"
L["Barbershop Frame"] = "미용실 프레임"
L["BG Map"] = "전장 맵"
L["BG Score"] = "전장 점수 프레임"
L["Black Market AH"] = true
L["Calendar Frame"] = "달력 프레임"
L["Character Frame"] = "캐릭터 프레임"
L["Debug Tools"] = "디버그 도구"
L["Dressing Room"] = "형상 변환 프레임"
L["Encounter Journal"] = "던전 도감"
L["Glyph Frame"] = "문양 프레임"
L["Gossip Frame"] = "잡담 프레임"
L["Greeting Frame"] = "인사말 프레임"
L["Guild Bank"] = "길드 은행 프레임"
L["Guild Control Frame"] = "길드 관리 프레임"
L["Guild Frame"] = "길드 프레임"
L["Guild Registrar"] = "길드 등록"
L["Help Frame"] = "도움말 프레임"
L["Inspect Frame"] = "살펴보기 프레임"
L["Item Upgrade"] = true
L["KeyBinding Frame"] = "단축키 지정 프레임"
L["LF Guild Frame"] = "길드찾기 프레임"
L["LFG Frame"] = true
L["Loot Frames"] = true
L["Loss Control"] = true
L["Macro Frame"] = "매크로 프레임"
L["Mail Frame"] = "우편 프레임"
L["Merchant Frame"] = "상인 프레임"
L["Misc Frames"] = "기타 프레임"
L["Mounts & Pets"] = true
L["Non-Raid Frame"] = "비공격대 프레임"
L["Pet Battle"] = true
L["Petition Frame"] = "GM요청 프레임"
L["PvP Frames"] = "PvP 프레임"
L["Quest Frames"] = "퀘스트 프레임"
L["Raid Frame"] = "공격대 프레임"
L["Reforge Frame"] = "재연마 프레임"
L["Skins"] = "스킨"
L["Socket Frame"] = "보석홈 프레임"
L["Spellbook"] = "주문책 프레임"
L["Stable"] = "안전"
L["Tabard Frame"] = "휘장 프레임"
L["Talent Frame"] = "특성 프레임"
L["Taxi Frame"] = "이동경로 프레임"
L["Time Manager"] = "시간 도우미"
L["Trade Frame"] = "거래 프레임"
L["TradeSkill Frame"] = "전문기술 프레임"
L["Trainer Frame"] = "상급자 프레임"
L["Transmogrify Frame"] = true
L["Void Storage"] = true
L["World Map"] = "세계지도"

--Static Popups
L["Are you sure you want to reset all the settings on this profile?"] = true
L["Enabling/Disabling Bar #6 will toggle a paging option from your main actionbar to prevent duplicating bars, are you sure you want to do this?"] = true;

--Tooltip
L["Always Hide"] = true
L["Anchor Mode"] = "앵커 모드"
L["Anchor"] = "앵커"
L["Combat Hide"] = "전투시 숨김"
L["Cursor"] = "커서"
L["Display guild ranks if a unit is guilded."] = true
L["Display how many of a certain item you have in your possession."] = true
L["Display player titles."] = true
L["Display the health text on the tooltip."] = true
L["Display the players talent spec in the tooltip, this may not immediately update when mousing over a unit."] = true
L["Display the spell or item ID when mousing over a spell or item tooltip."] = true
L["Don't display the tooltip when mousing over a unitframe."] = "유닛프레임의 툴팁을 표시하지 않습니다."
L["Guild Ranks"] = true
L["Health Height"] = true
L["Hide tooltip while in combat."] = "전투중 툴팁 숨기기."
L["Item Count"] = true
L["Never Hide"] = true
L["Player Titles"] = true
L["Set the height of the tooltip healthbar."] = true
L["Set the type of anchor mode the tooltip should use."] = "툴팁의 앵커 형식을 설정합니다."
L["Smart"] = "스마트"
L["Spell/Item IDs"] = true
L["Talent Spec"] = true
L["UF Hide"] = "유닛프레임 숨김"
L["When in a raid group display if anyone in your raid is targeting the current tooltip unit."] = "공격대 내에서 현재 툴팁 대상을 누가 대상으로 잡았는지 보여줍니다."
L["Who's targeting who?"] = "대상을 선택한 사람은 누구?"

--UnitFrames
L["%s and then %s"] = true
L["2D"] = true
L["3D"] = true
L["Above"] = true
L["Absorbs"] = true
L["Add a spell to the filter."] = "필터에 주문을 추가."
L["Add Spell"] = "주문 추가"
L["Add SpellID"] = "주문 ID 추가"
L["Additional Filter"] = true
L["Affliction"] = true
L["Allow Whitelisted Auras"] = true
L["Arcane Charges"] = true
L["Ascending"] = true
L["Assist Frames"] = "지원 프레임"
L["Assist Target"] = true
L["At what point should the text be displayed. Set to -1 to disable."] = true
L['Attach Text to Power'] = true;
L["Attach To"] = "붙여넣기: "
L["Aura Bars"] = true
L["Auto-Hide"] = true
L["Bad"] = "적대적"
L["Bars will transition smoothly."] = "바을 부드럽게 전환합니다."
L["Below"] = true
L["Blacklist"] = "블랙리스트"
L["Block Auras Without Duration"] = true
L["Block Blacklisted Auras"] = true
L["Block Non-Dispellable Auras"] = true
L["Block Non-Personal Auras"] = true
L["Block Raid Buffs"] = true
L["Blood"] = true
L["Borders"] = true
L["Buff Indicator"] = "버프 알람"
L["Buffs"] = "버프"
L["By Type"] = true
L["Camera Distance Scale"] = "시야 거리"
L["Castbar"] = "시전바"
L["Center"] = true
L["Check if you are in range to cast spells on this specific unit."] = true
L["Class Backdrop"] = "직업별 배경색상"
L["Class Castbars"] = true
L["Class Color Override"] = true
L["Class Health"] = "직업별 생명력 색상"
L["Class Power"] = "직업별 마력 색상"
L["Class Resources"] = true
L["Classbar"] = "직업 바"
L["Click Through"] = true
L["Color all buffs that reduce the unit's incoming damage."] = true
L["Color aurabar debuffs by type."] = true
L["Color castbars by the class or reaction type of the unit."] = true
L["Color health by amount remaining."] = "생명력의 양에 따라 색상이 변화합니다."
L["Color health by classcolor or reaction."] = "직업이나 관계에 따라 생명력 색상을 변경합니다."
L["Color power by classcolor or reaction."] = "직업이나 관계에 따라 마력 색상을 변경합니다."
L["Color the health backdrop by class or reaction."] = "직업이나 관계에 따라 생명력 배경의 색상을 변경합니다."
L["Color the unit healthbar if there is a debuff that can be dispelled by you."] = "만약 당신이 해제할 수 있는 디버프에 걸렸을 경우 표시되는 체력바 색상."
L["Color Turtle Buffs"] = true
L["Color"] = "색상"
L["Colored Icon"] = true
L["Coloring (Specific)"] = true
L["Coloring"] = true
L["Combat Fade"] = "전투시 사라짐"
L["Combobar"] = "연계점수 바"
L["Configure Auras"] = true
L["Copy From"] = "복사해오기"
L["Count Font Size"] = true
L["Create a custom fontstring. Once you enter a name you will be able to select it from the elements dropdown list."] = true
L["Create a filter, once created a filter can be set inside the buffs/debuffs section of each unit."] = "각 유닛의 버프/디버프에 필터를 생성합니다."
L["Create Filter"] = "필터 생성"
L["Current - Max | Percent"] = true
L["Current - Max"] = "현재 - 최대"
L["Current - Percent"] = "현재 - 비율"
L["Current / Max"] = "현재 / 최대"
L["Current"] = "현재"
L["Custom Health Backdrop"] = "임의 생명력 배경"
L["Custom Texts"] = true
L["Death"] = true
L["Debuff Highlighting"] = "디버프 강조"
L["Debuffs"] = "디버프"
L["Deficit"] = "부족"
L["Delete a created filter, you cannot delete pre-existing filters, only custom ones."] = "생성된 필터를 제거합니다. 단, 추가로 생성한 필터만 제거가 가능합니다."
L["Delete Filter"] = "필터를 삭제합니다"
L["Demonology"] = true
L["Descending"] = true
L["Destruction"] = true
L["Detach From Frame"] = true
L["Detached Width"] = true
L["Direction the health bar moves when gaining/losing health."] = "생명력의 증감 방향을 설정합니다. (가로/세로)"
L["Disable Blizzard"] = "기본 블리자드 프레임 숨김"
L["Disabled"] = true
L["Disables the blizzard party/raid frames."] = "기본 블리자드의 파티/공격대 프레임을 숨깁니다."
L["Disconnected"] = "연결 끊김"
L["Display a spark texture at the end of the castbar statusbar to help show the differance between castbar and backdrop."] = "시전바와 배경의 구분을 위해 시전바의 끝부분에 반짝임 텍스쳐를 표시합니다."
L["Display Frames"] = true
L["Display icon on arena frame indicating the units talent specialization or the units faction if inside a battleground."] = true
L["Display Player"] = "플레이어 표시"
L["Display Target"] = true
L["Display Text"] = true
L["Display the rested icon on the unitframe."] = "유닛 프레임에 휴식 아이콘을 표시합니다."
L["Display the target of your current cast. Useful for mouseover casts."] = true
L["Display tick marks on the castbar for channelled spells. This will adjust automatically for spells like Drain Soul and add additional ticks based on haste."] = "시전바에 시전되는 주문의 틱을 표시합니다. 영혼 흡수나 가속이 추가되는 주문에 따라 틱이 자동 조절됩니다."
L["Don't display any auras found on the 'Blacklist' filter."] = true
L["Don't display auras that are not yours."] = true
L["Don't display auras that cannot be purged or dispelled by your class."] = true
L["Don't display auras that have no duration."] = true
L["Don't display raid buffs such as Blessing of Kings or Mark of the Wild."] = true
L["Down"] = "아래로"
L["Duration Reverse"] = true
L["Duration"] = true
L["Enemy Aura Type"] = true
L["Fade the unitframe when out of combat, not casting, no target exists."] = "전투중/시전중이 아니거나 대상이 없을 때 유닛프레임을 감춥니다."
L["Fill"] = "채우기"
L["Filled"] = "채움"
L["Filter Type"] = "필터 종류"
L["Force Off"] = true
L["Force On"] = true
L["Force the frames to show, they will act as if they are the player frame."] = true
L["Format"] = "형식"
L["Frame"] = "프레임"
L["Frequent Updates"] = "자주 업데이트"
L["Friendlies: Show Buffs"] = true
L["Friendlies: Show Debuffs"] = true
L["Friendly Aura Type"] = true
L["Friendly"] = true
L["Frost"] = true
L["Glow"] = true
L["Good"] = "우호적"
L["Group By"] = true
L["Group Size"] = true
L["Growth direction from the first unitframe."] = true
L["Growth Direction"] = true
L["Harmony"] = true
L["Heal Prediction"] = true
L["Health Backdrop"] = "생명력 배경"
L["Health Border"] = true
L["Health By Value"] = "값에 따른 생명력"
L["Health Text"] = "생명력 문자"
L["Health"] = "생명력"
L["Height"] = "높이"
L["Holy Power"] = true
L["Horizontal Spacing"] = true
L["Horizontal"] = "가로"
L["How far away the portrait is from the camera."] = "카메라의 거리에 따라 초상화가 변화합니다."
L["Icon"] = "아이콘"
L["Icon: BOTTOM"] = true
L["Icon: BOTTOMLEFT"] = true
L["Icon: BOTTOMRIGHT"] = true
L["Icon: LEFT"] = true
L["Icon: RIGHT"] = true
L["Icon: TOP"] = true
L["Icon: TOPLEFT"] = true
L["Icon: TOPRIGHT"] = true
L["If no other filter options are being used then it will block anything not on the 'Whitelist' filter, otherwise it will simply add auras on the whitelist in addition to any other filter settings."] = true
L["If not set to 0 then override the size of the aura icon to this."] = true
L["If the unit is an enemy to you."] = true
L["If the unit is friendly to you."] = true
L["Ignore mouse events."] = true
L["Inset"] = true
L["Interruptable"] = true
L["Invert Grouping Order"] = true
L["JustifyH"] = true
L["Latency"] = "지연 시간:"
L["Low Mana Threshold"] = "낮은 마나 임계값"
L["Lunar"] = true
L["Main statusbar texture."] = "기본 상태 바 텍스쳐."
L["Main Tanks / Main Assist"] = true
L["Make textures transparent."] = true
L["Match Frame Width"] = "유닛프레임의 너비에 맞추기"
L["Middle Click - Set Focus"] = true
L["Middle clicking the unit frame will cause your focus to match the unit."] = true
L["Model Rotation"] = true
L["Mouseover"] = true
L["Name (Entire Group)"] = true
L["Name"] = "이름"
L["Neutral"] = "중립"
L["Non-Interruptable"] = true
L["None"] = "없음"
L["Not valid spell id"] = "유효한 주문 ID가 아닙니다."
L["Num Rows"] = "행 수"
L["Number of Groups"] = true
L["Number of units in a group."] = true
L["Offset of the powerbar to the healthbar, set to 0 to disable."] = "생명력 바에 마력 바를 포함시킵니다. 0으로 설정하면 해제됩니다."
L["Offset position for text."] = true
L["Offset"] = "오프셋"
L["Only show when the unit is not in range."] = true
L["Only show when you are mousing over a frame."] = true
L["OOR Alpha"] = "사거리 밖 투명도"
L["Orientation"] = "방향"
L["Others"] = true
L["Overlay the healthbar"] = "프레임 내부에 표시"
L["Overlay"] = "오버레이"
L["Override any custom visibility setting in certain situations, EX: Only show groups 1 and 2 inside a 10 man instance."] = "상황에 따라 표시를 제한합니다.\n ex: 10인 공격대에서는 1파티와 2파티만 표시됩니다."
L["Override the default class color setting."] = true
L["Party Pets"] = "파티원 소환수"
L["Party Targets"] = "파티원의 대상"
L["Per Row"] = "한 열당 표시되는 수"
L["Percent"] = "비율"
L["Personal"] = true
L["Player Frame Aura Bars"] = true
L["Portrait"] = "초상화"
L["Position"] = "위치"
L["Power text will be hidden on NPC targets, in addition the name text will be repositioned to the power texts anchor point."] = "NPC일 경우 마력 문자를 숨기고 마력 문자 위치에 따라 이름의 위치가 재조정됩니다."
L["Power"] = "마력"
L["Powers"] = "마력"
L["Priority"] = true
L["PVP Trinket"] = true
L["Raid Icon"] = true
L["Raid-10 Frames"] = true
L["Raid-25 Frames"] = true
L["Raid-40 Frames"] = true
L["RaidDebuff Indicator"] = "공격대 주요 디버프 표시기"
L["Range Check"] = true
L["Rapidly update the health, uses more memory and cpu. Only recommended for healing."] = "체력을 빨리 업데이트하며, 메모리와 CPU를 좀 더 사용합니다. 힐러일 경우에만 추천합니다."
L["Reactions"] = "관계"
L["Remaining"] = "남은"
L["Remove a spell from the filter."] = "필터에서 주문을 제거합니다."
L["Remove Spell"] = "주문 제거"
L["Remove SpellID"] = "주문 ID 삭제"
L["Rest Icon"] = "아이콘 휴식"
L["Restore Defaults"] = "기본값 복원"
L["Reverses the grouping order. For example if your group is to grow right than up by default the first group is always at the bottom. With this option set then the first group will start at the bottom but as the number of groups grow it will always be near the top."] = true
L["RL / ML Icons"] = true
L["Role Icon"] = "역할 아이콘"
L["Select a filter to use."] = "사용할 필터를 선택하세요."
L["Select a unit to copy settings from."] = "설정을 복사해올 유닛을 선택하세요."
L["Select an additional filter to use. If the selected filter is a whitelist and no other filters are being used (with the exception of Block Non-Personal Auras) then it will block anything not on the whitelist, otherwise it will simply add auras on the whitelist in addition to any other filter settings."] = true
L["Select Filter"] = "필터 선택"
L["Select Spell"] = "주문 선택"
L["Select the display method of the portrait."] = true
L["Set the filter type, blacklisted filters hide any aura on the like and show all else, whitelisted filters show any aura on the filter and hide all else."] = "필터 형식을 설정합니다. 블랙리스트 필터는 설정된 오라를 제외한 모든 오라를 표시하며 화이트리스트 필터는 설정된 오라만을 표시합니다."
L["Set the font size for unitframes."] = "유닛프레임의 글꼴 크기를 설정합니다."
L["Set the order that the group will sort."] = true
L["Set the priority order of the spell, please note that prioritys are only used for the raid debuff module, not the standard buff/debuff module. If you want to disable set to zero."] = true
L["Set the type of auras to show when a unit is a foe."] = true
L["Set the type of auras to show when a unit is friendly."] = true
L["Sets the font instance's horizontal text alignment style."] = true
L["Shadow Orbs"] = true
L["Show a incomming heal prediction bar on the unitframe. Also display a slightly different colored bar for incoming overheals."] = "유닛프레임에 예상 치유량을 표시합니다. 오버힐은 약간 다른 색상으로 표시됩니다."
L["Show Aura From Other Players"] = true
L["Show Auras"] = true
L["Show When Not Active"] = true
L["Size of the indicator icon."] = "표시기 아이콘 크기"
L["Size Override"] = true
L["Size"] = "크기"
L["Smart Auras"] = true
L["Smart Raid Filter"] = "스마트 레이드 필터"
L["Smooth Bars"] = "부드러운 바"
L["Solar"] = true
L["Spaced"] = "간격"
L["Spark"] = "반짝임"
L["Spec Icon"] = true
L["Spell not found in list."] = "목록에서 주문을 찾을 수 없습니다."
L["Spells"] = true
L["Stagger Bar"] = true
L["Start near Center"] = true
L["StatusBar Texture"] = "상태 표시바 텍스쳐"
L["Style"] = true
L["Tank Frames"] = "방어전담 프레임"
L["Tank Target"] = true
L["Tapped"] = "플레이어가 점유한 색상"
L["Target On Mouse-Down"] = true
L["Target units on mouse down rather than mouse up. \n\n|cffFF0000Warning: If you are using the addon 'Clique' you may have to adjust your clique settings when changing this."] = true
L["Text Color"] = true
L["Text Format"] = "문자 형식"
L["Text Position"] = true
L["Text Threshold"] = true
L["Text Toggle On NPC"] = "NPC일 경우 문자 전환"
L["Text xOffset"] = true
L["Text yOffset"] = true
L["Text"] = true
L["Textured Icon"] = true
L["The alpha to set units that are out of range to."] = "사거리 밖의 대상에 대한 투명도를 설정합니다."
L["The following macro must be true in order for the group to be shown, in addition to any filter that may already be set."] = "체크시 그룹의 표시 설정이 설정됩니다. 필터를 추가해서 수정이 가능합니다."
L["The font that the unitframes will use."] = "유닛프레임의 글꼴입니다."
L["The initial group will start near the center and grow out. Corrosponding groups will behave normally."] = true
L["The name you have selected is already in use by another element."] = true
L["The object you want to attach to."] = true
L["The point of which you are anchoring to in relation to the attach to object."] = true
L["This filter is used for both aura bars and aura icons no matter what. Its purpose is to block out specific spellids from being shown. For example a paladin can have two sacred shield buffs at once, we block out the short one."] = true
L["Threat Display Mode"] = true
L["Ticks"] = "틱"
L["Time Remaining Reverse"] = true
L["Time Remaining"] = true
L["Toggles health text display"] = "생명력 문자의 표시를 전환합니다."
L["Transparent"] = true
L["Turtle Color"] = true
L["Unholy"] = true
L["UnitFrames"] = "유닛프레임"
L["Up"] = "위로"
L["Use Default"] = true
L["Use the custom health backdrop color instead of a multiple of the main health color."] = "다양한 생명력 바 색상 대신에 임의로 지정한 생명력 배경 색상을 사용합니다."
L["Value must be a number"] = true
L["Vertical Spacing"] = true
L["Vertical"] = "세로"
L["Visibility"] = "표시"
L["What point to anchor to the frame you set to attach to."] = "붙여넣을 프레임의 기준점을 정합니다."
L["What to attach the buff anchor frame to."] = "버프 기준점을 어디에 붙일지 정한다."
L["What to attach the debuff anchor frame to."] = true
L["When set the Buffs and Debuffs will toggle being displayed depending on if the unit is friendly or an enemy. This will not effect the aurabars module."] = true
L["When true, the header includes the player when not in a raid."] = "활성화시, 공격대에 속해있지 않아도 플레이어를 표시합니다."
L["When you mana falls below this point, text will flash on the player frame."] = "마나가 이 값보다 낮으면 플레이어 프레임에 마나 적음 경고를 표시합니다."
L["Whitelist"] = "화이트리스트"
L["Width"] = "너비"
L["xOffset"] = "X 축 기준 좌표"
L["yOffset"] = "Y 축 기준 좌표"
L["You can't remove a pre-existing filter."] = "기존 필터를 제거할 수 없습니다."
L["You cannot copy settings from the same unit."] = "같은 유닛은 복사할 수 없습니다."
L["You may not remove a spell from a default filter that is not customly added. Setting spell to false instead."] = "기본 필터에 설정된 기본 주문들은 삭제할 수 없습니다. 대신 비활성화는 가능합니다."