
-- Mass Kick, Promote, and Demote tool
GRM.ruleTypeEnum = { [1] = "kickRules" , [2] = "promoteRules" , [3] = "demoteRules" };
GRM.ruleTypeEnum2 = { [1] = "kick" , [2] = "promote" , [3] = "demote" };

-- CREATING FRAMES -- 
-- Core Frame
GRM_UI.GRM_ToolCoreFrame = CreateFrame( "Frame" , "GRM_ToolCoreFrame" , UIParent , "TranslucentFrameTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame = CreateFrame( "Frame" , "GRM_ToolIgnoreListFrame" , UIParent , "TranslucentFrameTemplate" );

-- Core Frame Close Buttons
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameCloseButton = CreateFrame( "Button" , "GRM_ToolCoreFrameCloseButton" , GRM_UI.GRM_ToolCoreFrame , "UIPanelCloseButton" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameCloseButton:SetPoint( "TOPRIGHT" , GRM_UI.GRM_ToolCoreFrame , 3 , 3 );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreListFrameCloseButton = CreateFrame( "Button" , "GRM_ToolIgnoreListFrameCloseButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame , "UIPanelCloseButton" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreListFrameCloseButton:SetPoint( "TOPRIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame , 3 , 3 );

-- Core Buttons
GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton = CreateFrame( "Button" , "GRM_ToolBuildMacroButton" , GRM_UI.GRM_ToolCoreFrame , "UIPanelButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton.GRM_ToolBuildMacroButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton:CreateFontString ( "GRM_ToolBuildMacroButtonText" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton = CreateFrame( "Button" , "GRM_ToolViewSafeListButton" , GRM_UI.GRM_ToolCoreFrame , "UIPanelButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton.GRM_ToolViewSafeListButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton:CreateFontString ( "GRM_ToolViewSafeListButtonText" , "OVERLAY" , "GameFontNormalTiny" );

-- Macro Control Buttons
GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton = CreateFrame( "Button" , "GRM_ToolClearSelectedMacrodNamesButton" , GRM_UI.GRM_ToolCoreFrame , "UIPanelButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton.GRM_ToolClearSelectedMacrodNamesButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton:CreateFontString ( "GRM_ToolClearSelectedMacrodNamesButtonText" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton = CreateFrame( "Button" , "GRM_ToolResetSelectedMacroNamesButton" , GRM_UI.GRM_ToolCoreFrame , "UIPanelButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton.GRM_ToolResetSelectedMacroNamesButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton:CreateFontString ( "GRM_ToolResetSelectedMacroNamesButtonText" , "OVERLAY" , "GameFontNormalTiny" );

-- Reset Settings
GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButton = CreateFrame( "Button" , "GRM_ToolResetSettingsButton" , GRM_UI.GRM_ToolCoreFrame , "UIPanelButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButton:CreateFontString ( "GRM_ToolResetSettingsButtonText" , "OVERLAY" , "GameFontNormalTiny" );

-- Core Ignore List Buttons
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton = CreateFrame( "Button" , "GRM_ToolIgnoreClearSelectionButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame , "UIPanelButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton:CreateFontString ( "GRM_ToolIgnoreClearSelectionButtonText" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton = CreateFrame( "Button" , "GRM_ToolIgnoreResetSelectedNamesButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame , "UIPanelButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton.GRM_ToolIgnoreResetSelectedNamesButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton:CreateFontString ( "GRM_ToolIgnoreResetSelectedNamesButtonText" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton = CreateFrame( "Button" , "GRM_ToiolIgnoreRemoveAllButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame , "UIPanelButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton.GRM_ToolIgnoreRemoveAllButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton:CreateFontString ( "GRM_ToolIgnoreRemoveAllButtonText" , "OVERLAY" , "GameFontNormalTiny" );

-- Text
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText1 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameText1" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText2 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameText2" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText3 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameText3" , "OVERLAY" , "GameFontWhiteTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText4 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameText4" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText5 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameText5" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText6 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameText6" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText7 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameText7" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText8 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameText8" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText9 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameText9" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText10 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameText10" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameTextPermissions" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameTextPermissions1" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameTextPermissions2" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameTextPermissions3" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1_K = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameTextPermissions1_K" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2_P = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameTextPermissions2_P" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3_D = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameTextPermissions3_D" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameKickRulesText = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameKickRulesText" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalQueText = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameTotalQueText" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalQueText2 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameTotalQueText2" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalIgnoredText = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameTotalIgnoredText" , "OVERLAY" , "GameFontNormalTiny" )
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalIgnoredText2 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameTotalIgnoredText2" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameRankRestrictionText = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameRankRestrictionText" , "OVERLAY" , "GameFontNormalTiny" );

-- Safe Details
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText1 = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:CreateFontString ( "GRM_ToolCoreIgnoreFrameText1" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText2 = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:CreateFontString ( "GRM_ToolCoreIgnoreFrameText2" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText3 = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:CreateFontString ( "GRM_ToolCoreIgnoreFrameText3" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText4 = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:CreateFontString ( "GRM_ToolCoreIgnoreFrameText4" , "OVERLAY" , "GameFontWhiteTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreCheckButton = CreateFrame ( "CheckButton" , "GRM_ToolCoreIgnoreCheckButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame , "OptionsSmallCheckButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreCheckButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreCheckButton:CreateFontString ( "GRM_ToolCoreIgnoreCheckButtonText" , "OVERLAY" , "GameFontNormalSmall" );

-- Tabs
GRM_UI.GRM_ToolCoreFrame.GRM_KickTab = CreateFrame ( "Button" , "GRM_KickTab" , GRM_UI.GRM_ToolCoreFrame , "TabButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_KickTabText = GRM_UI.GRM_ToolCoreFrame.GRM_KickTab:CreateFontString ( "GRM_KickTabText" , "OVERLAY" , "GameFontNormal" );
GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab = CreateFrame ( "Button" , "GRM_PromoTab" , GRM_UI.GRM_ToolCoreFrame , "TabButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_PromoTabText = GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab:CreateFontString ( "GRM_PromoTabText" , "OVERLAY" , "GameFontNormal" );
GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab = CreateFrame ( "Button" , "GRM_DemoteTab" , GRM_UI.GRM_ToolCoreFrame , "TabButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTabText = GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab:CreateFontString ( "GRM_DemoteTabText" , "OVERLAY" , "GameFontNormal" );

-- Macro'd Scroll Frame
-- SCROLL FRAME
GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrame = CreateFrame ( "ScrollFrame" , "GRM_ToolMacrodScrollFrame" , GRM_UI.GRM_ToolCoreFrame );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollBorderFrame = CreateFrame ( "Frame" , "GRM_ToolMacrodScrollBorderFrame" , GRM_UI.GRM_ToolCoreFrame , "TranslucentFrameTemplate" );
-- CONTENT FRAME (Child Frame)
GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame = CreateFrame ( "Frame" , "GRM_ToolMacrodScrollChildFrame" );
-- SLIDER
GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder = CreateFrame ( "Slider" , "GRM_ToolMacrodScrollFrameSilder" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrame , "UIPanelScrollBarTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder:Hide();

-- Queued Scroll Frame
GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrame = CreateFrame ( "ScrollFrame" , "GRM_ToolQueuedScrollFrame" , GRM_UI.GRM_ToolCoreFrame );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollBorderFrame = CreateFrame ( "Frame" , "GRM_ToolQueuedScrollBorderFrame" , GRM_UI.GRM_ToolCoreFrame , "TranslucentFrameTemplate" );
-- CONTENT FRAME (Child Frame)
GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame = CreateFrame ( "Frame" , "GRM_ToolQueuedScrollChildFrame" );
-- SLIDER
GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder = CreateFrame ( "Slider" , "GRM_ToolQueuedScrollFrameSilder" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrame , "UIPanelScrollBarTemplate" )
GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder:Hide();

-- Ignored Scroll Frame
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrame = CreateFrame ( "ScrollFrame" , "GRM_ToolIgnoredScrollFrame" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollBorderFrame = CreateFrame ( "Frame" , "GRM_ToolIgnoredScrollBorderFrame" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame , "TranslucentFrameTemplate" );
-- CONTENT FRAME (Child Frame)
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame = CreateFrame ( "Frame" , "GRM_ToolIgnoredScrollChildFrame" );
-- SLIDER
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder = CreateFrame ( "Slider" , "GRM_ToolIgnoredScrollFrameSilder" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrame , "UIPanelScrollBarTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder:Hide();

-- Rules Scroll Frame
GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrame = CreateFrame ( "ScrollFrame" , "GRM_ToolRulesScrollFrame" , GRM_UI.GRM_ToolCoreFrame );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollBorderFrame = CreateFrame ( "Frame" , "GRM_ToolRulesScrollBorderFrame" , GRM_UI.GRM_ToolCoreFrame , "TranslucentFrameTemplate" );
-- CONTENT FRAME (Child Frame)
GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame = CreateFrame ( "Frame" , "GRM_ToolRulesScrollChildFrame" );
-- SLIDER
GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder = CreateFrame ( "Slider" , "GRM_ToolRulesScrollFrameSilder" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrame , "UIPanelScrollBarTemplate" )
GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder:Hide();

----------------------
-- Custom Rules ------
----------------------

GRM_UI.GRM_ToolCoreFrame.GRM_CustomRuleAddButton = CreateFrame( "Button" , "GRM_CustomRuleAddButton" , GRM_UI.GRM_ToolCoreFrame , "UIPanelButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_CustomRuleAddButton.GRM_CustomRuleAddButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_CustomRuleAddButton:CreateFontString ( "GRM_CustomRuleAddButtonText" , "OVERLAY" , "GameFontNormalTiny" );

-- Custom Rules Popup Frame
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame = CreateFrame ( "Frame" , "GRM_ToolCustomRulesFrame" , GRM_UI.GRM_ToolCoreFrame , "TranslucentFrameTemplate" );

-- Rank Custom Rules
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1 = CreateFrame ( "CheckButton" , "GRM_ToolRulesRankRadialButton1" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "UIRadioButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1Text = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1:CreateFontString ( "GRM_ToolRulesRankRadialButton1Text" , "OVERLAY" , "GameFontNormalSmall" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2 = CreateFrame ( "CheckButton" , "GRM_ToolRulesRankRadialButton2" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "UIRadioButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2Text = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2:CreateFontString ( "GRM_ToolRulesRankRadialButton2Text" , "OVERLAY" , "GameFontNormalSmall" );

-- Level Custom Rules
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRangeText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:CreateFontString ( "GRM_ToolCustomRulesLevelRangeText" , "OVERLAY" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "GameFontNormalSmall" );

GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1 = CreateFrame ( "CheckButton" , "GRM_ToolCustomRulesLevelRadialButton1" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "UIRadioButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1Text = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1:CreateFontString ( "GRM_ToolCustomRulesLevelRadialButton1Text" , "OVERLAY" , "GameFontNormalSmall" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2 = CreateFrame ( "CheckButton" , "GRM_ToolCustomRulesLevelRadialButton2" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "UIRadioButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2:CreateFontString ( "GRM_ToolCustomRulesLevelRadialButton2Text" , "OVERLAY" , "GameFontNormalSmall" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:CreateFontString ( "GRM_ToolCustomRulesLevelText" , "OVERLAY" , "GameFontNormalSmall" )
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox = CreateFrame( "EditBox" , "GRM_CustomRuleLevelStartEditBox" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "InputBoxTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:ClearFocus();
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox = CreateFrame( "EditBox" , "GRM_CustomRuleLevelStopEditBox" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "InputBoxTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:ClearFocus();

-- Class Custom Rules
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesClassCheckBox = CreateFrame ( "CheckButton" , "GRM_ToolCustomRulesClassCheckBox" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "OptionsSmallCheckButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesClassCheckBoxText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesClassCheckBox:CreateFontString ( "GRM_ToolCustomRulesClassCheckBoxText" , "OVERLAY" , "GameFontNormalSmall" );

-- Custom Rules General Fontstrings
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRuleNumberText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:CreateFontString ( "GRM_ToolRuleNumberText" , "OVERLAY" , "GameFontNormal" );

GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox = CreateFrame( "EditBox" , "GRM_CustomRuleNameEditBox" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "InputBoxTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:ClearFocus();

-- Confirm and Cancel Buttons
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesConfirmButton = CreateFrame( "Button" , "GRM_ToolCustomRulesConfirmButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "UIPanelButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesConfirmButton.GRM_ToolCustomRulesConfirmButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesConfirmButton:CreateFontString ( "GRM_ToolCustomRulesConfirmButtonText" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesCancelButton = CreateFrame( "Button" , "GRM_ToolCustomRulesCancelButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "UIPanelButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesCancelButton.GRM_ToolCustomRulesCancelButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesCancelButton:CreateFontString ( "GRM_ToolCustomRulesCancelButtonText" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesFrameCloseButton = CreateFrame( "Button" , "GRM_ToolCustomRulesFrameCloseButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "UIPanelCloseButton" );

-- Custom Rule Filters
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton = CreateFrame ( "CheckButton" , "GRM_ToolRecommendKickCheckButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "OptionsSmallCheckButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton:CreateFontString ( "GRM_ToolRecommendKickCheckButtonText" , "OVERLAY" , "GameFontNormalSmall" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox = CreateFrame( "EditBox" , "GRM_RosterKickRecommendEditBox" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton , "InputBoxTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:ClearFocus();
-- Alts control filter
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed = CreateFrame ( "CheckButton" , "GRM_ToolAltsOfflineTimed" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "OptionsSmallCheckButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:CreateFontString ( "GRM_ToolAltsOfflineTimedText" , "OVERLAY" , "GameFontNormalSmall" );

-- Day or Month selection
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected = CreateFrame ( "Frame" , "GRM_TimeScaleSelected" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "InsetFrameTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:CreateFontString ( "GRM_TimeScaleSelectedText" , "OVERLAY" , "GameFontWhiteTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu = CreateFrame ( "Frame" , "GRM_TimeScaleDropDownMenu" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected , "InsetFrameTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:Hide();

-- General use Right click button
GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu = CreateFrame ( "Frame" , "GRM_ToolContextMenu" , GRM_UI.GRM_ToolCoreFrame );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:Hide();
GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:CreateFontString ( "GRM_ToolContextMenuText" , "OVERLAY" , "GameFontNormalSmall" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuDividerText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:CreateFontString ( "GRM_ToolContextMenuDividerText" , "OVERLAY" , "GameFontWhiteTiny" );
-- Context Dropdown Buttons
GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1 = CreateFrame ( "Button" , "GRM_ContextButton1" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1.GRM_ContextButton1Text = GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1:CreateFontString ( "GRM_ContextButton1Text" , "OVERLAY" , "GameFontWhiteTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2 = CreateFrame ( "Button" , "GRM_ContextButton2" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2.GRM_ContextButton2Text = GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2:CreateFontString ( "GRM_ContextButton2Text" , "OVERLAY" , "GameFontWhiteTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton = CreateFrame ( "Button" , "GRM_ToolContextMenuCancelButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton.GRM_ToolContextMenuCancelButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton:CreateFontString ( "GRM_ToolContextMenuCancelButtonText" , "OVERLAY" , "GameFontWhiteTiny" );

-- Custom Note pattern match
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButton = CreateFrame ( "CheckButton" , "GRM_ToolCompareStringCheckButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "OptionsSmallCheckButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButton:CreateFontString ( "GRM_ToolCompareStringCheckButtonText" , "OVERLAY" , "GameFontNormalSmall" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton = CreateFrame ( "CheckButton" , "GRM_ToolPublicNoteCheckButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "OptionsSmallCheckButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton:CreateFontString ( "GRM_ToolPublicNoteCheckButtonText" , "OVERLAY" , "GameFontNormalSmall" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButton = CreateFrame ( "CheckButton" , "GRM_ToolOfficerCheckButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "OptionsSmallCheckButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButton:CreateFontString ( "GRM_ToolOfficerCheckButtonText" , "OVERLAY" , "GameFontNormalSmall" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton = CreateFrame ( "CheckButton" , "GRM_ToolCustomCheckButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "OptionsSmallCheckButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton:CreateFontString ( "GRM_ToolCustomCheckButtonText" , "OVERLAY" , "GameFontNormalSmall" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox = CreateFrame( "EditBox" , "GRM_NoteSearchEditBox" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "InputBoxTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:ClearFocus();

GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolSuggestIdeasText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:CreateFontString ( "GRM_ToolSuggestIdeasText" , "OVERLAY" , "GameFontNormalSmall" );

-----------------------------
--- END OF FRAME CREATION ---
-----------------------------

-- INITIALIZING FRAME VALUES
GRM_UI.GRM_ToolCoreFrame:ClearAllPoints();
GRM_UI.GRM_ToolCoreFrame:SetPoint ( "CENTER" , UIParent );
GRM_UI.GRM_ToolCoreFrame:SetFrameStrata ( "MEDIUM" );
GRM_UI.GRM_ToolCoreFrame:SetSize ( 1175 , 470 );
GRM_UI.GRM_ToolCoreFrame:EnableMouse ( true );
GRM_UI.GRM_ToolCoreFrame:SetMovable ( true );
GRM_UI.GRM_ToolCoreFrame:SetToplevel ( true );
GRM_UI.GRM_ToolCoreFrame:RegisterForDrag ( "LeftButton" );
GRM_UI.GRM_ToolCoreFrame:SetScript ( "OnDragStart" , GRM_UI.GRM_ToolCoreFrame.StartMoving );
GRM_UI.GRM_ToolCoreFrame:SetScript ( "OnDragStop" , function()
    GRM_UI.GRM_ToolCoreFrame:StopMovingOrSizing();
    GRM_UI.SaveToolPosition();
end);

GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:ClearAllPoints();
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:SetPoint ( "CENTER" , UIParent );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:SetFrameStrata ( "MEDIUM" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:SetSize ( 475 , 435 );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:EnableMouse ( true );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:SetMovable ( true );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:SetToplevel ( true );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:RegisterForDrag ( "LeftButton" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:SetScript ( "OnDragStart" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.StartMoving );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:SetScript ( "OnDragStop" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.StopMovingOrSizing );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries = {};
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:Hide();

-- Global Variables for the frames
GRM_UI.GRM_ToolCoreFrame.IsInitialized = false;
GRM_UI.GRM_ToolCoreFrame.MacroEntries = {};
GRM_UI.GRM_ToolCoreFrame.QueuedEntries = {};
GRM_UI.GRM_ToolCoreFrame.TabPosition = 1;           -- 1 = kick , 2 = promote , 3 = demote
GRM_UI.GRM_ToolCoreFrame.Timer = 0;
GRM_UI.GRM_ToolCoreFrame.Safe = {};                 -- List of safe people for whatever the reason.

GRM_UI.GRM_ToolCoreFrame:Hide();                    -- Default load position is hidden

-- Method:          GRM_UI.LoadToolFrames ( boolean )
-- What it Does:    Holds the load of all frames unless "OnShow" of the GRM_ToolCoreFrame for compartmentalized rebuilding.
-- Purpose:         More efficient resource use, also, a need to recall and reload the frames if on a language or font/font size change.
GRM_UI.LoadToolFrames = function ( isManual )

    GRM_UI.GRM_ToolCoreFrame.IsInitialized = true;

    -- Only load this once...
    if not isManual then 
        -- Use ESC key to exit window.
        GRM_UI.GRM_ToolCoreFrame:SetScript ( "OnKeyDown" , function ( self , key )
            self:SetPropagateKeyboardInput ( true );
            if key == "ESCAPE" then
                if not GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:IsVisible() then

                    if GRM.IsRuleHighlighted() then
                        GRM_UI.RestoreTooltipScale();
                        GameTooltip:Hide();
                        GRM.ClearRuleHighlights();

                    elseif GRM.IsAnyMacroHighlighted() then
                        GRM_UI.RestoreTooltipScale();
                        GameTooltip:Hide();
                        GRM.ResetToolMacrodHighlights();
                        GRM.SetMacroButtonText();

                    else
                        self:SetPropagateKeyboardInput ( false );
                        self:Hide();
                    end
                end
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:SetScript ( "OnKeyDown" , function ( self , key )
            self:SetPropagateKeyboardInput ( true );
            if key == "ESCAPE" then
                if GRM.IsAnyIgnoredHighlighted() then
                    GRM.ResetIgnoredHighlights();
                    GRM.SetIgnoredButtonText();
                    GRM_UI.RestoreTooltipScale();
                    GameTooltip:Hide();
                else
                    self:SetPropagateKeyboardInput ( false );
                    self:Hide();
                end
            end
        end);
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:SetScript ( "OnShow" , function()
            GRM.TriggerIgnoredQueuedWindowRefresh();
        end);

        local AuditWindowRefresh = false;
        GRM_UI.GRM_ToolCoreFrame:SetScript ( "OnUpdate" , function ( self , elapsed )
            self.Timer = self.Timer + elapsed;
            if self.Timer >= 0.025 then
                if GRM_G.HK then
                    if MacroFrame:IsVisible() then          -- this needs to be hidden or the script won't update the macros.a
                        MacroFrameCloseButton:Click();
                    end
                    GRM_G.HK = false;
                    GRM.PurgeMacrodNames();
                    GRM.BuildQueuedScrollFrame ( true , false , false );
                    GRM.BuildMacrodScrollFrame ( true , true );

                    GRM_G.timeDelayValue = time(); -- resetting delay
                    GuildRoster();

                    if not AuditWindowRefresh and GRM_UI.GRM_RosterChangeLogFrame.GRM_AuditFrame:IsVisible() then
                        AuditWindowRefresh = true;

                        -- Delay action
                        C_Timer.After ( 2 , function()
                            GRM.RefreshAuditFrames ( true , true );
                            AuditWindowRefresh = false;
                        end);
                    end
                end
                self.Timer = 0;
            end
        end);

        GRM_UI.GRM_ToolCoreFrame:SetScript ( "OnHide" , function()
            -- Clear the macro!
            GRM.CreateMacro ( "" , "GRM_Tool" , "INV_MISC_QUESTIONMARK" , "CTRL-SHIFT-K" );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:Hide();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:Hide();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:Hide();
            GRM.ScanRecommendationsList();
        end);

        -- Text
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText1:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollBorderFrame , "TOPLEFT" , 17 , -2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText1:SetJustifyH ( "LEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText1:SetWidth ( 146 )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText1:SetWordWrap ( false );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText2:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText1 , "RIGHT" , 6 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText2:SetJustifyH ( "LEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText2:SetWidth ( 191 )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText2:SetWordWrap ( false );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText3:SetPoint ( "TOPRIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollBorderFrame , "BOTTOMRIGHT" , -10 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText3:SetJustifyH ( "LEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText3:Hide();

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText4:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollBorderFrame , "TOPLEFT" , 17 , -2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText4:SetJustifyH ( "LEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText4:SetWidth ( 146 )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText4:SetWordWrap ( false );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText5:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText4 , "RIGHT" , 5 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText5:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText5:SetWidth ( 101 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText5:SetWordWrap ( false );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText6:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollBorderFrame , "BOTTOMLEFT" , 5 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText6:SetJustifyH ( "LEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText6:SetTextColor ( 0.0 , 0.8 , 1.0 , 1.0 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText7:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame , "BOTTOMLEFT" , 20 , 15 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText7:SetJustifyH ( "CENTER" );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText8:SetPoint ( "BOTTOM" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollBorderFrame , "TOP" , 0 , 17 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText8:SetJustifyH ( "CENTER" );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText9:SetPoint ( "BOTTOM" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollBorderFrame , "TOP" , 0 , 17 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText9:SetJustifyH ( "LEFT" );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText10:SetPoint ( "BOTTOM" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollBorderFrame , "TOP" , 0 , 2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText10:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText10:SetWidth ( 300 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText10:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText10:SetSpacing ( 1 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText10:SetText ( "|cffff0000PENDING FEATURE|r\nPromotion and demotion mass macros are not yet implemented" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText10:Hide();

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalQueText:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton , "BOTTOMLEFT" , -10 , -35 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalQueText:SetJustifyH ( "LEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalQueText2:SetPoint ( "TOPRIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton , "BOTTOMRIGHT" , 10 , -35 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalQueText2:SetJustifyH ( "LEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalIgnoredText:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalQueText , "BOTTOMLEFT" , 0 , -2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalIgnoredText:SetJustifyH ( "LEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalIgnoredText2:SetPoint ( "TOPRIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton , "BOTTOMRIGHT" , 10 , -49 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalIgnoredText2:SetJustifyH ( "LEFT" );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameRankRestrictionText:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton , "BOTTOM" , 0 , -12 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameRankRestrictionText:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameRankRestrictionText:SetTextColor ( 0.0 , 0.8 , 1.0 , 1.0 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText5 , "RIGHT" , 115 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions:SetWidth ( 150 );
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions , "BOTTOM" , 0 , -5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1:SetWidth ( 150 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1:SetTextColor ( 0 , 0.77 , 0.063 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1 , "BOTTOM" , 0 , -5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2:SetWidth ( 150 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2:SetTextColor ( 0 , 0.77 , 0.063 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2 , "BOTTOM" , 0 , -5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3:SetWidth ( 150 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3:SetTextColor ( 0 , 0.77 , 0.063 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1_K:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1 , "BOTTOM" , 0 , 10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1_K:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1_K:SetWidth ( 150 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1_K:SetTextColor ( 0.64 , 0.102 , 0.102 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1_K:SetText ( "____________" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1_K:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2_P:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2 , "BOTTOM" , 0 , 10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2_P:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2_P:SetWidth ( 150 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2_P:SetTextColor ( 0.64 , 0.102 , 0.102 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2_P:SetText ( "____________" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2_P:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3_D:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3 , "BOTTOM" , 0 , 10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3_D:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3_D:SetWidth ( 150 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3_D:SetTextColor ( 0.64 , 0.102 , 0.102 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3_D:SetText ( "____________" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3_D:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );

        -- Safe List Text
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText1:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollBorderFrame , "TOPLEFT" , 17 , -2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText1:SetJustifyH ( "LEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText1:SetWidth ( 135 )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText1:SetWordWrap ( false );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText2:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText1 , "RIGHT" , 6 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText2:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText2:SetWidth ( 101 )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText2:SetWordWrap ( false );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText3:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame , "TOP" , 0 , -15 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText3:SetJustifyH ( "CENTER" );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText4:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollBorderFrame , "BOTTOM" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText4:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText4:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreCheckButton:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame , "BOTTOMLEFT" , 13 , 13 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreCheckButtonText:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreCheckButton , 27 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreCheckButton:SetScript ( "OnClick", function()
            if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreCheckButton:GetChecked() then
                GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].ignoreFilter = true;
                GRM.TriggerIgnoredQueuedWindowRefresh();
            else
                GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].ignoreFilter = false;
                GRM.TriggerIgnoredQueuedWindowRefresh();
            end
            GRM.SyncSettings();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton:SetPoint ( "BOTTOM" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton , "TOP" , 0 , 20 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton:SetSize ( 110 , 75 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText:SetWidth ( 95 )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText:SetWordWrap ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText:SetSpacing ( 1 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton:SetScript ( "OnClick" , function ( _ , button )
            if button == "LeftButton" then
                
                local result , count = GRM.IsAnyIgnoredHighlighted();
                local msg = "";

                if result then
                    -- The action...
                    local confirmFunction = function()
                        GRM.RemoveHighlightedPlayersFromIgnoredList();  -- use popup confirm window!!!
                        if count > 1 then
                            msg = GRM.L ( "{num} players removed from the Ignored List" , nil , nil , count );
                        else
                            msg = GRM.L ( "{num} player was removed from Ignore List" , nil , nil , count );
                        end
                    end

                    if count == 1 then
                        GRM.SetConfirmationWindow ( confirmFunction , GRM.L ( "Really remove selected player from the ignore list?" ) );
                    else
                        GRM.SetConfirmationWindow ( confirmFunction , GRM.L ( "Really remove the {num} selected players from the ignore list?" , nil , nil , count ) );
                    end
                    
                else
                    if #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries == 0 then
                        local c = #( select ( 2 , GRM.GetSafePlayers ( true ) ) );
                        if c > 0 and GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].ignoreFilter then
                            if c > 1 then
                                msg = GRM.L ( "There are no names to select. {num} players are filtered" , nil , nil , c );
                            else
                                msg = GRM.L ( "There are no names to select. 1 player is filtered" );
                            end
                        else
                            msg = GRM.L ( "There are no names currently selected to be removed from the Ignore List." );
                        end
                        
                    else
                        msg = GRM.L ( "There are currently no names to remove" );
                    end
                end

                if #msg > 0 then
                    GRM.Report ( msg );
                end

            end
        end);


        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollBorderFrame , "RIGHT" , 20 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton:SetSize ( 110 , 75 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton.GRM_ToolIgnoreResetSelectedNamesButtonText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton.GRM_ToolIgnoreResetSelectedNamesButtonText:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton.GRM_ToolIgnoreResetSelectedNamesButtonText:SetWidth ( 95 )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton.GRM_ToolIgnoreResetSelectedNamesButtonText:SetWordWrap ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton.GRM_ToolIgnoreResetSelectedNamesButtonText:SetSpacing ( 1 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton:SetScript ( "OnClick" , function ( _ , button )
            if button == "LeftButton" then
                local result = GRM.IsAnyIgnoredHighlighted();

                if result then
                    GRM.ResetIgnoredHighlights();
                    GRM_UI.RestoreTooltipScale();
                    GameTooltip:Hide();
                else
                    GRM.Report ( "Nothing to clear" );
                end

                GRM.SetIgnoredButtonText();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton:SetScript ( "OnEnter" , function( self )
            if GRM.IsAnyIgnoredHighlighted() then
                GRM_UI.SetTooltipScale();
                GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
                GameTooltip:AddLine ( GRM.L ( "Pressing the ESC key will also clear all lines" ) );
                GameTooltip:Show();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton:SetScript ( "OnLeave" , function()
            GRM_UI.RestoreTooltipScale();
            GameTooltip:Hide();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton , "BOTTOM" , 0 , -20 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton:SetSize ( 110 , 75 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton.GRM_ToolIgnoreRemoveAllButtonText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton.GRM_ToolIgnoreRemoveAllButtonText:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton.GRM_ToolIgnoreRemoveAllButtonText:SetWidth ( 95 )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton.GRM_ToolIgnoreRemoveAllButtonText:SetWordWrap ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton.GRM_ToolIgnoreRemoveAllButtonText:SetSpacing ( 1 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton:SetScript ( "OnClick" , function ( _ , button )
            if button == "LeftButton" then
                if GRM.IsAnyIgnored() then
                    GRM_UI.RestoreTooltipScale();
                    GameTooltip:Hide();
                    GRM.SetConfirmationWindow ( GRM.ClearAllPlayersFromIgnoreList , GRM.L ( "Do you really wish to clear all players from the Ignore List?" ) );
                else
                    GRM.Report ( GRM.L ( "There are currently no players on the Ignore List" ) );
                end
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton:SetScript ( "OnEnter" , function( self )
            if not GRM.IsAnyIgnored() then
                GRM_UI.SetTooltipScale();
                GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
                GameTooltip:AddLine ( GRM.L ( "There are currently no players on the Ignore List" ) );
                GameTooltip:Show();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton:SetScript ( "OnLeave" , function()
            GRM_UI.RestoreTooltipScale();
            GameTooltip:Hide();
        end);
        
        -- RULES
        GRM_UI.GRM_ToolCoreFrame.GRM_CustomRuleAddButton:SetSize ( 175 , 25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_CustomRuleAddButton:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollBorderFrame , "BOTTOM" , 0 , -5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_CustomRuleAddButton.GRM_CustomRuleAddButtonText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_CustomRuleAddButton );
        GRM_UI.GRM_ToolCoreFrame.GRM_CustomRuleAddButton:SetScript ( "OnClick" , function ( _ , button )
            if button == "LeftButton" then
                
                if GRM_UI.GRM_ToolCoreFrame.TabPosition == 1 then

                    GRM_UI.ConfigureCustomRuleKickFrame ( false , nil );  -- Creating a new rule

                elseif GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 then

                    GRM_UI.ConfigureCustomRulePromoteFrame ( false , nil );  -- Creating a new rule
                    
                elseif GRM_UI.GRM_ToolCoreFrame.TabPosition == 3 then

                    GRM_UI.ConfigureCustomRuleDemoteFrame ( false , nil );  -- Creating a new rule

                end

                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:Show();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:Hide();
                GRM.ClearRuleHighlights();
            end
        end);
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton , "BOTTOMRIGHT" , 0 , -10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetWordWrap ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetSpacing ( 1 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetJustifyH ( "LEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetWidth ( 275 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:SetScript ( "OnClick", function()
            if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:GetChecked() then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.allAltsApplyToKick = true;
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.allAltsApplyToKick = false;
            end
        end);
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameKickRulesText:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3 , "BOTTOM" , -85 , -12 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameKickRulesText:SetJustifyH ( "LEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameKickRulesText:SetWidth ( 150 );

        -- Buttons
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollBorderFrame , "BOTTOM" , 0 , -5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton:SetSize ( 200 , 25 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton.GRM_ToolBuildMacroButtonText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton.GRM_ToolBuildMacroButtonText:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton.GRM_ToolBuildMacroButtonText:SetWidth ( 195 )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton.GRM_ToolBuildMacroButtonText:SetWordWrap ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton.GRM_ToolBuildMacroButtonText:SetSpacing ( 1 );
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButton:SetPoint ( "BOTTOMRIGHT" , GRM_UI.GRM_ToolCoreFrame , "BOTTOMRIGHT" , -12 , 12 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButton:SetSize ( 130 , 25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButtonText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButton );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButtonText:SetWordWrap ( true );
        GRM_UI.ScaleFontStringToObjectSize ( true , 130 , GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButtonText , 2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButton:SetScript ( "OnClick" , function( _ , button )
            if button == "LeftButton" then

                local resetSettings = function()
                    GRM.ResetDefaultSettings( 10 );
                end

                if IsShiftKeyDown() and IsControlKeyDown() then
                    resetSettings();
                else
                    GRM.SetConfirmationWindow ( resetSettings , GRM.L ( "Are you sure you want to reset all Macro Tool Rules and Settings?" ) .. "\n" .. GRM.L ( "This will also clear all of your saved rules." ) );
                end
            end
        end);
    
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButton:SetScript ( "OnEnter" , function ( self )
            GRM_UI.SetTooltipScale();
            GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
            GameTooltip:AddLine ( GRM.L ( "Resets all Macro Tool Rules and Settings" ) );
            GameTooltip:AddLine( "|CFFE6CC7F" .. GRM.L ( "Ctrl-Shift-Click" ) .. "|r - " .. GRM.L ( "Resets ALL settings, not just the ones on this page" ) );
            GameTooltip:Show();
        end);
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButton:SetScript ( "OnLeave" , function ()
            GRM_UI.RestoreTooltipScale();
            GameTooltip:Hide();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollBorderFrame , "RIGHT" , 20 , 10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton:SetSize ( 110 , 75 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton.GRM_ToolClearSelectedMacrodNamesButtonText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton.GRM_ToolClearSelectedMacrodNamesButtonText:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton.GRM_ToolClearSelectedMacrodNamesButtonText:SetWidth ( 95 )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton.GRM_ToolClearSelectedMacrodNamesButtonText:SetWordWrap ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton.GRM_ToolClearSelectedMacrodNamesButtonText:SetSpacing ( 1 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton:SetScript ( "OnClick" , function ( _ , button )
            if button == "LeftButton" then
                local result , count = GRM.IsAnyMacroHighlighted();
                local msg = "";

                if result then
                    -- The action...
                    GRM.RemoveNamesFromMacroEntries();
                    if count > 1 then
                        msg = GRM.L ( "{num} players removed from the macro" , nil , nil , count );
                    else
                        msg = GRM.L ( "{num} player was removed from the macro" , nil , nil , count );
                    end
                else
                    if #GRM_UI.GRM_ToolCoreFrame.MacroEntries > 0 then
                        msg = GRM.L ( "There are no names currently selected to be removed from the macro." );
                    else
                        if #GRM_UI.GRM_ToolCoreFrame.QueuedEntries > 0 then
                            msg = GRM.L ( "The macro is not yet built. Please click the button to create the macro." );
                        else
                            msg = GRM.L ( "There are currently no names to add" );
                        end
                    end
                end

                if #msg > 0 then
                    GRM.Report ( msg );
                end
            end
        end);

        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton , "BOTTOM" , 0 , -95 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton:SetSize ( 130 , 25 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton.GRM_ToolViewSafeListButtonText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton.GRM_ToolViewSafeListButtonText:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton.GRM_ToolViewSafeListButtonText:SetWidth ( 105 )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton.GRM_ToolViewSafeListButtonText:SetWordWrap ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton.GRM_ToolViewSafeListButtonText:SetSpacing ( 1 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton:SetScript ( "OnClick" , function( _ , button )
            if button == "LeftButton" then
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:IsVisible() then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:Hide();
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:Show();
                end
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton:SetScript ( "OnEnter" , function( self )
            GRM_UI.SetTooltipScale();
            GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
            local countIgnored = GRM.GetSafePlayers();
            local result = "";

            if countIgnored > 0 then
                if countIgnored == 1 then
                    result = GRM.L ( "1 player is on the safe list." );
                else
                    result = GRM.L ( "{num} players are on the safe list." , nil , nil , countIgnored );
                end

                if #GRM_UI.GRM_ToolCoreFrame.Safe > 0 then
                    if #GRM_UI.GRM_ToolCoreFrame.Safe == 1 then
                        result = result .. " " .. GRM.L ( "1 action is being ignored." );
                    else
                        result = result .. " " .. GRM.L ( "{num} actions are being ignored." , nil , nil , #GRM_UI.GRM_ToolCoreFrame.Safe );
                    end
                else
                    result = result .. " " .. GRM.L ( "No current actions are being ignored" );
                end
            else
                result = GRM.L ( "No players are currently safe from recommendations" );
            end
            
            GameTooltip:AddLine ( result );
            GameTooltip:Show();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton:SetScript ( "OnLeave" , function()
            GRM_UI.RestoreTooltipScale();
            GameTooltip:Hide();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton , "BOTTOM" , 0 , -20 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton:SetSize ( 110 , 75 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton.GRM_ToolResetSelectedMacroNamesButtonText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton.GRM_ToolResetSelectedMacroNamesButtonText:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton.GRM_ToolResetSelectedMacroNamesButtonText:SetWidth ( 95 )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton.GRM_ToolResetSelectedMacroNamesButtonText:SetWordWrap ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton.GRM_ToolResetSelectedMacroNamesButtonText:SetSpacing ( 1 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton:SetScript ( "OnClick" , function ( _ , button )
            if button == "LeftButton" then
                local result = GRM.IsAnyMacroHighlighted();

                if result then
                    GRM.ResetToolMacrodHighlights();
                    GRM_UI.RestoreTooltipScale();
                    GameTooltip:Hide();
                else
                    GRM.Report ( "Nothing to clear" );
                end

                GRM.SetMacroButtonText();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton:SetScript ( "OnEnter" , function( self )
            if GRM.IsAnyMacroHighlighted() then
                GRM_UI.SetTooltipScale();
                GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
                GameTooltip:AddLine ( GRM.L ( "Pressing the ESC key will also clear all lines" ) );
                GameTooltip:Show();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton:SetScript ( "OnLeave" , function()
            GRM_UI.RestoreTooltipScale();
            GameTooltip:Hide();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_KickTab:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameKickRulesText , "BOTTOMLEFT" , 0 , -6 );
        GRM_UI.GRM_ToolCoreFrame.GRM_KickTab:SetSize ( 80 , 25 );
        PanelTemplates_TabResize ( GRM_UI.GRM_ToolCoreFrame.GRM_KickTab , nil , 80 , 25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_KickTabText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_KickTab , 0 , -5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_KickTab:SetScript ( "OnClick" , function ( self , button )
            if button == "LeftButton" and not GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:IsVisible() then
                local needsFullRefresh = false;
                if GRM_UI.GRM_ToolCoreFrame.TabPosition ~= 1 then
                    needsFullRefresh = true;
                end
                GRM_UI.GRM_ToolCoreFrame.TabPosition = 1;                   -- Set Position
                self:LockHighlight();                                       -- Lock Highlight
                GRM_UI.ConfigureToolTab();
                -- Load Lock window
                if needsFullRefresh then
                    GRM_UI.FullMacroToolRefresh();
                end
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText10:Hide();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_KickTab:SetScript ( "OnEnter" , function( self )
            if not CanGuildRemove() then
                GRM_UI.SetTooltipScale();
                GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
                GameTooltip:AddLine ( GRM.L ( "Player's rank does not have permission to remove others from the guild" ) );
                GameTooltip:Show();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_KickTab:SetScript ( "OnLeave" , function()
            if GameTooltip:IsVisible() then
                GRM_UI.RestoreTooltipScale();
                GameTooltip:Hide();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_KickTab , "RIGHT" , 0 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab:SetSize ( 80 , 25 );
        PanelTemplates_TabResize ( GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab , nil , 80 , 25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_PromoTabText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab , 0 , -5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab:SetScript ( "OnClick" , function ( _ , button )
            if button == "LeftButton" and not GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:IsVisible() then
                local needsFullRefresh = false;
                if GRM_UI.GRM_ToolCoreFrame.TabPosition ~= 2 then
                    needsFullRefresh = true;
                end
                GRM_UI.GRM_ToolCoreFrame.TabPosition = 2;                   -- Set Position
                GRM_UI.ConfigureToolTab();
                -- Load Lock window
                if needsFullRefresh then
                    GRM_UI.FullMacroToolRefresh();
                end
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText10:Show();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab:SetScript ( "OnEnter" , function( self )
            if not CanGuildPromote() then
                GRM_UI.SetTooltipScale();
                GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
                GameTooltip:AddLine ( GRM.L ( "Player's rank does not have permission to promote others in the guild" ) );
                GameTooltip:Show();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab:SetScript ( "OnLeave" , function()
            if GameTooltip:IsVisible() then
                GRM_UI.RestoreTooltipScale();
                GameTooltip:Hide();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab , "RIGHT" , 0 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab:SetSize ( 80 , 25 );
        PanelTemplates_TabResize ( GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab , nil , 80 , 25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTabText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab , 0 , -5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab:SetScript ( "OnClick" , function ( self , button )
            if button == "LeftButton" and not GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:IsVisible() then
                local needsFullRefresh = false;
                if GRM_UI.GRM_ToolCoreFrame.TabPosition ~= 3 then
                    needsFullRefresh = true;
                end
                GRM_UI.GRM_ToolCoreFrame.TabPosition = 3;                   -- Set Position
                self:LockHighlight();                                       -- Lock Highlight
                GRM_UI.ConfigureToolTab();
                -- Load Lock window
                if needsFullRefresh then
                    GRM_UI.FullMacroToolRefresh();
                end
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText10:Show();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab:SetScript ( "OnEnter" , function( self )
            if not CanGuildDemote() then
                GRM_UI.SetTooltipScale();
                GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
                GameTooltip:AddLine ( GRM.L ( "Player's rank does not have permission to demote others in the guild" ) );
                GameTooltip:Show();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab:SetScript ( "OnLeave" , function()
            if GameTooltip:IsVisible() then
                GRM_UI.RestoreTooltipScale();
                GameTooltip:Hide();
            end
        end);

        -- method:          GRM_UI.ConfigureToolTab()
        -- What it Does:    Locks the selected tab highlighted
        -- Purpose:         UX feature
        GRM_UI.ConfigureToolTab = function()
            if GRM_UI.GRM_ToolCoreFrame.TabPosition == 1 then
                -- Highlights
                GRM_UI.GRM_ToolCoreFrame.GRM_KickTab:LockHighlight();
                GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab:UnlockHighlight();
                GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab:UnlockHighlight();

            elseif GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 then
                GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab:LockHighlight();
                GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab:UnlockHighlight();
                GRM_UI.GRM_ToolCoreFrame.GRM_KickTab:UnlockHighlight();

            elseif GRM_UI.GRM_ToolCoreFrame.TabPosition == 3 then
                GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab:LockHighlight();
                GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab:UnlockHighlight();
                GRM_UI.GRM_ToolCoreFrame.GRM_KickTab:UnlockHighlight();
            end
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:Hide();
        end
        
        -- Macro'd ScrollFrame
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollBorderFrame:SetSize ( 370 , 350 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollBorderFrame:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame , "TOPLEFT" , 15 , -50 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrame:SetSize ( 352 , 326 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrame:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollBorderFrame , "BOTTOMLEFT" , 5 , 10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrame:SetScrollChild ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrame:SetHitRectInsets ( 0 , -30 , 0 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.BlacklistedNames = {};
        -- Slider Parameters
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder:SetOrientation ( "VERTICAL" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder:SetSize ( 20 , 305 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrame , "TOPRIGHT" , 8.5 , -10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder:SetValue ( 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder:SetValueStep ( 25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder:SetStepsPerPage ( 13 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder.currentV = 0;
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder:SetScript ( "OnValueChanged" , function ( self , value )
            GRM.HybridScrollOnValueChangedConfig (
                self , value , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrame , 
                13 , 25 , GRM.BuildMacrodScrollFrame , GRM_UI.GRM_ToolCoreFrame.MacroEntries
            );
        end);
        
        -- Queued ScrollFrame
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollBorderFrame:SetSize ( 280 , 350 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollBorderFrame:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollBorderFrame , "RIGHT" , 150 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollBorderFrame:SetHitRectInsets ( 1 , 50 , 1 , 1 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrame:SetSize ( 262 , 326 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrame:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollBorderFrame , "BOTTOMLEFT" , 5 , 10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrame:SetScrollChild ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrame:SetHitRectInsets ( 0 , -30 , 0 , 0 );
        -- Slider Parameters
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder:SetOrientation ( "VERTICAL" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder:SetSize ( 20 , 305 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrame , "TOPRIGHT" , 8.5 , -10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder:SetValue ( 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder:SetValueStep ( 25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder:SetStepsPerPage ( 13 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder.currentV = 0;
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder:SetScript ( "OnValueChanged" , function ( self , value )
            GRM.HybridScrollOnValueChangedConfig (
                self , value , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrame , 
                13 , 25 , GRM.BuildQueuedScrollFrame , GRM_UI.GRM_ToolCoreFrame.QueuedEntries
            );
        end);

        -- Ignored ScrollFrame
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollBorderFrame:SetSize ( 290 , 325 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollBorderFrame:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame , "TOPLEFT" , 30 , -60 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrame:SetSize ( 272 , 301 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrame:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollBorderFrame , "BOTTOMLEFT" , 5 , 10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrame:SetScrollChild ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrame:SetHitRectInsets ( 0 , -30 , 0 , 0 );
        -- Slider Parameters
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder:SetOrientation ( "VERTICAL" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder:SetSize ( 20 , 280 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrame , "TOPRIGHT" , 8.5 , -10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder:SetValue ( 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder:SetValueStep ( 25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder:SetStepsPerPage ( 12 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder.currentV = 0;
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder:SetScript ( "OnValueChanged" , function ( self , value )
            GRM.HybridScrollOnValueChangedConfig (
                self , value , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrame , 
                12 , 25 , GRM.BuildIgnoredScrollFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries
            );
        end);
        
        -- Rules Scroll Frame
        -- Ignored ScrollFrame
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollBorderFrame:SetSize ( 305 , 200 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollBorderFrame:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_KickTab , "BOTTOMLEFT" , 0 , -42 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrame:SetSize ( 287 , 176 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrame:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollBorderFrame , "BOTTOMLEFT" , 5 , 10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrame:SetScrollChild ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrame:SetHitRectInsets ( 0 , -30 , 0 , 0 );
        -- Slider Parameters
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder:SetOrientation ( "VERTICAL" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder:SetSize ( 20 , 155 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrame , "TOPRIGHT" , 8.5 , -10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder:SetValue ( 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder:SetValueStep ( 25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder:SetStepsPerPage ( 12 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder.currentV = 0;
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder:SetScript ( "OnValueChanged" , function ( self , value )
            GRM.HybridScrollOnValueChangedConfig (
                self , value , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrame , 
                8 , 22 , GRM.BuildRulesScrollFrame , GRM_UI.GRM_ToolCoreFrame.RuleEntries
            );
        end);


        if not MacroFrame then
            ShowMacroFrame();
            MacroFrameCloseButton:Click();
        end

        MacroFrame:HookScript ( "OnHide" , function()
            if not GRM_G.HK then        -- Don't want to wipe the macro yet.
                if GRM_UI.GRM_ToolCoreFrame:IsVisible() and #GRM_UI.GRM_ToolCoreFrame.MacroEntries > 0 then
                    -- To ensure no overlap of default frame logic actions.
                    C_Timer.After ( 0.5 , function()
                        GRM.BuildMacrodScrollFrame ( true , true );
                    end);
                end
            end
        end);

        -- Context Menu Initializations
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:SetSize( 80 , 105 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:SetBackdrop ( GRM_UI.noteBackdrop2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:SetFrameStrata ( "FULLSCREEN_DIALOG" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuText:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu , 7 , -10 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu , 7 , -25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1:SetSize ( 65 , 20 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1:SetHighlightTexture ( "Interface\\Buttons\\UI-Panel-Button-Highlight" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1.GRM_ContextButton1Text:SetPoint ( "Left" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1.GRM_ContextButton1Text:SetWidth ( 65 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1.GRM_ContextButton1Text:SetJustifyH ( "LEFT" );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1 , "BOTTOMLEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2:SetSize ( 65 , 20 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2:SetHighlightTexture ( "Interface\\Buttons\\UI-Panel-Button-Highlight" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2.GRM_ContextButton2Text:SetPoint ( "Left" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2.GRM_ContextButton2Text:SetWidth ( 65 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2.GRM_ContextButton2Text:SetJustifyH ( "LEFT" );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuDividerText:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton , "TOPLEFT" , 0 , 4 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuDividerText:SetText ("__");
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu , "BOTTOMLEFT" , 7 , 5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton:SetHighlightTexture ( "Interface\\Buttons\\UI-Panel-Button-Highlight" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton:SetSize ( 65 , 20 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton.GRM_ToolContextMenuCancelButtonText:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton.GRM_ToolContextMenuCancelButtonText:SetWidth ( 65 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton.GRM_ToolContextMenuCancelButtonText:SetJustifyH ( "LEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton:SetScript ( "OnClick" , function ( _ , button )
            if button == "LeftButton" then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:Hide();
                GRM.ClearRuleHighlights();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:SetScript ( "OnKeyDown" , function ( self , key )
            self:SetPropagateKeyboardInput ( true );
            if key == "ESCAPE" then
                self:SetPropagateKeyboardInput ( false );
                GRM.ClearRuleHighlights();
                self:Hide();
            end
        end);


    end

    -- End of one-time load only, now need to be reloaded on any change of font, size, or language.
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton:SetScript ( "OnClick" , function ( _ , button )
        if button == "LeftButton" then
            if #GRM_UI.GRM_ToolCoreFrame.QueuedEntries > 0 then
                if MacroFrame:IsVisible() then          -- this needs to be hidden or the script won't update the macros.a
                    MacroFrameCloseButton:Click();
                end
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.BlacklistedNames = {};
                GRM.BuildMacrodScrollFrame ( true , true );
            else
                GRM.Report ( GRM.L ( "No Names to Add to the Macro" ) );
            end
        end
    end);

    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText1:SetText( GRM.L ( "Name:" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText1:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 14 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText2:SetText( GRM.L ( "Macro:" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText2:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 14 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText3:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText4:SetText( GRM.L ( "Name:" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText4:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 14 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText5:SetText( GRM.L ( "Action" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText5:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 14 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText6:SetText( GRM.L ( "Hot Key: {name}" , "CTRL-SHIFT-K" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText6:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText7:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText8:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 18 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText8:SetText( GRM.L ( "Queued Actions" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText9:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 18 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText9:SetText( GRM.L ( "Current Actions" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameRankRestrictionText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameRankRestrictionText:SetText( GRM.L ( "Players the same rank or higher will not be shown" ) );

    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions:SetText ( GRM.L ( "Permissions" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 14 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1:SetText ( GRM.L ( "Kick" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2:SetText ( GRM.L ( "Promote" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3:SetText ( GRM.L ( "Demote" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );

    -- Safe List Tool
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText1:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText1:SetText ( GRM.L ( "Name:" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText2:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText2:SetText ( GRM.L ( "Ignored Action:" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText3:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 18 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText3:SetText ( GRM.L ( "Ignored Players Safe From Action" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreCheckButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreCheckButtonText:SetText ( GRM.L ( "Only show players with ignored action" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton.GRM_ToolIgnoreResetSelectedNamesButtonText:SetText ( GRM.L ( "Clear Selection" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton.GRM_ToolIgnoreResetSelectedNamesButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton.GRM_ToolIgnoreRemoveAllButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton.GRM_ToolIgnoreRemoveAllButtonText:SetText ( GRM.L ( "Remove all players from Ignore List" ) );

    -- Button Text
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton.GRM_ToolBuildMacroButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton.GRM_ToolResetSelectedMacroNamesButtonText:SetText ( GRM.L ( "Clear Selection" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton.GRM_ToolResetSelectedMacroNamesButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton.GRM_ToolClearSelectedMacrodNamesButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton.GRM_ToolViewSafeListButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton.GRM_ToolViewSafeListButtonText:SetText ( GRM.L ( "View Ignore List" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalQueText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalQueText:SetText ( GRM.L ( "Total Queued:" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalQueText2:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalIgnoredText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalIgnoredText:SetText ( GRM.L ( "Actions Ignored:" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalIgnoredText2:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );

    -- Rules
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameKickRulesText:SetText ( GRM.L ( "Rules" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameKickRulesText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 14 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetText ( GRM.L ( "Only recommend to kick if all player linked alts exceed max time" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_CustomRuleAddButton.GRM_CustomRuleAddButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_CustomRuleAddButton.GRM_CustomRuleAddButtonText:SetText ( GRM.L ( "Add Custom Rule" ) );

    -- Tabs
    GRM_UI.GRM_ToolCoreFrame.GRM_KickTabText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 14 );
    GRM_UI.GRM_ToolCoreFrame.GRM_KickTabText:SetText ( GRM.L ( "Kick" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_PromoTabText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 14 );
    GRM_UI.GRM_ToolCoreFrame.GRM_PromoTabText:SetText ( GRM.L ( "Promote" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTabText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 14 );
    GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTabText:SetText ( GRM.L ( "Demote" ) );

    -- Settings Reset
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButtonText:SetText ( GRM.L ( "Restore Defaults" ) );

    -- Context Menu
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuDividerText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton.GRM_ToolContextMenuCancelButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton.GRM_ToolContextMenuCancelButtonText:SetText ( GRM.L ( "Cancel" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuText:SetText ( GRM.L ( "Options" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1.GRM_ContextButton1Text:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2.GRM_ContextButton2Text:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    
    ----------------------
    --- CUSTOM FILTERS ---
    ----------------------

    if not isManual then

        --------------- RULES FRAME -----------------

        
        -- Core Frame
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:ClearAllPoints();
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:SetPoint ( "CENTER" , UIParent );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:SetSize ( 450 , 550 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:EnableMouse ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:SetMovable ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:SetToplevel ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:SetFrameStrata ( "HIGH" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:RegisterForDrag ( "LeftButton" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:SetScript ( "OnDragStart" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.StartMoving );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:SetScript ( "OnDragStop" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.StopMovingOrSizing );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:Hide();
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule = {};
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.isEdit = false;
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.ruleNameOriginal = "";
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:SetScript ( "OnKeyDown" , function ( self , key )
            self:SetPropagateKeyboardInput ( true );
            if key == "ESCAPE" then
                self:SetPropagateKeyboardInput ( false );
                self:Hide();
            end
        end);
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:SetScript ( "OnHide" , function()
            -- reset the rules
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule = {};
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.isEdit = false;
            GRM_UI.GRM_ToolCoreFrame.GRM_CustomRuleAddButton.GRM_CustomRuleAddButtonText:SetText ( GRM.L ( "Add Custom Rule" ) );
            GRM.ClearRuleHighlights();
        end);

        -- Close Button
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesFrameCloseButton:SetPoint ( "TOPRIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "TOPRIGHT" , 0 , 0 );

        -- Title
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRuleNumberText:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "TOPLEFT" , 15 , -15 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRuleNumberText:SetTextColor ( 1 , 0 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "TOP" , 0 , -18 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetSize ( 250 , 30 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetTextInsets( 2 , 3 , 3 , 2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetMaxLetters ( 25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:EnableMouse( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetAutoFocus( false );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetTextColor ( 1 , 0.82 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetNumeric ( false );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox.ruleNameText = "";

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetScript ( "OnEnter" , function( self )
            GRM_UI.SetTooltipScale()
            GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
            GameTooltip:AddLine( GRM.L ( "|CFFE6CC7FClick|r to Change the Rule Name" ) );
            GameTooltip:Show();
        end);
    
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetScript ( "OnLeave" , function()
            GRM_UI.RestoreTooltipScale();
            GameTooltip:Hide();
        end);        

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetScript ( "OnEscapePressed" , function ( self )
            self:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox.ruleNameText );
            self:ClearFocus();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetScript ( "OnEnterPressed" , function ( self )
            self:ClearFocus();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetScript ( "OnEditFocusLost" , function ( self )
            self:HighlightText ( 0 , 0 );
            self:SetText ( GRM.Trim ( self:GetText() ) );

            if self:GetText() == "" then
                GRM.Report ( GRM.L ( "Please Set a Name for this Rule. It can be 1 to 25 characters in length." ) );
            end

            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox.ruleNameText = self:GetText();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.name = self:GetText();
        end)

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetScript ( "OnEditFocusGained" , function ( self )
            self:HighlightText ( 0 );
            self:SetCursorPosition ( 0 );
            GRM_UI.RestoreTooltipScale();
            GameTooltip:Hide();
        end);
        
        -- LEVEL RANGE
        -- Radial buttons
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1:SetHitRectInsets ( 0 , -115 , 0 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1Text:SetPoint ( "Left" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1 , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2:SetHitRectInsets ( 0 , -150 , 0 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1 , "BOTTOMLEFT" , 0 , -5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text:SetPoint ( "Left" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2 , "RIGHT" , 2 , 0 );
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1:SetScript ( "OnClick", function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1:SetChecked ( true );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1Text:SetTextColor ( 1 , 0 , 0 ); 
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2:SetChecked ( false );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text:SetTextColor ( 1 , 0.82 , 0 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelFilter = false;
            GRM_UI.DisableLevelSelectionEditBoxes();            
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2:SetScript ( "OnClick", function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelFilter = true;
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2:SetChecked ( true );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text:SetTextColor ( 1 , 0 , 0 ); 
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1:SetChecked ( false );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1Text:SetTextColor ( 1 , 0.82 , 0 );
            GRM_UI.EnableLevelSelectionEditBoxes();            
        end);
        
        -- Edit Boxes
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRangeText:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text , "BOTTOMLEFT" , 0 , -10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRangeText:SetTextColor ( 1 , 0.82 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetSize ( 50 , 20 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRangeText , "RIGHT" , 10 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetNumeric ( true );
        if GRM_G.RetailBuild < 60000 then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetMaxLetters ( 2 ); -- 60000+ is Warlords of Draenor on, where level cap could be > 100
        else
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetMaxLetters ( 3 );
        end
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetAutoFocus( false )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetTextInsets( 2 , 3 , 3 , 2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:EnableMouse( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox.levelNameText = "";
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetJustifyH ( "CENTER" );

        -- Divider
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelText:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox , "RIGHT" , 10 , 0 );
        -- Divider
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetSize ( 50 , 20 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelText , "RIGHT" , 10 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetNumeric ( true );
        if GRM_G.RetailBuild < 60000 then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetMaxLetters ( 2 ); -- 60000+ is Warlords of Draenor on, where level cap could be > 100
        else
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetMaxLetters ( 3 );
        end
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetAutoFocus( false )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetTextInsets( 2 , 3 , 3 , 2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:EnableMouse( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox.levelNameText = "";
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetJustifyH ( "CENTER" );
    
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetScript ( "OnEscapePressed" , function ( self )
            self:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox.levelNameText );
            self:ClearFocus();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetScript ( "OnEnterPressed" , function ( self )
            self:ClearFocus();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetScript ( "OnEditFocusLost" , function ( self )
            self:HighlightText ( 0 , 0 );
            local number = tonumber ( GRM.Trim ( self:GetText() ) );
            if number == 0 then
                number = 1;
            end

            if number >= GRM_G.LvlCap then
                number = GRM_G.LvlCap;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox.levelNameText = tostring ( GRM_G.LvlCap );
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox.levelNameText = tostring ( number );
            end
            self:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox.levelNameText );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelRange[1] = number;

            -- need to Adjust the 2nd if necessary as well.
            local number2 = tonumber ( GRM.Trim ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:GetText() ) );

            if ( number == GRM_G.LvlCap and GRM_G.LvlCap > number2 ) or ( number2 ~= GRM_G.LvlCap and number > number2 ) then
                number2 = number;
                if number2 == GRM_G.LvlCap then
                    number2 = 999;
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox.levelNameText = tostring ( GRM_G.LvlCap );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox.levelNameText = tostring ( number2 );
                end
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox.levelNameText );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelRange[2] = number2;
            end
            
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetScript ( "OnTabPressed" , function ( self )
            self:ClearFocus();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetFocus();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetScript ( "OnEditFocusGained" , function ( self )
            self:HighlightText ( 0 );
            self:SetCursorPosition ( 0 );
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetScript ( "OnEscapePressed" , function ( self )
            self:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox.levelNameText );
            self:ClearFocus();
        end);
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetScript ( "OnEnterPressed" , function ( self )
            self:ClearFocus();
        end);
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetScript ( "OnEditFocusLost" , function ( self )
            self:HighlightText ( 0 , 0 );
            local number = tonumber ( GRM.Trim ( self:GetText() ) );
            if number == 0 then
                number = 1;
            end
        
            if number >= GRM_G.LvlCap then
                number = 999;           -- 999 is default for level cap so when expansion changes and level cap goes up, it auto floats the new filters to level cap again.
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox.levelNameText = tostring ( GRM_G.LvlCap );
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox.levelNameText = tostring ( number );
            end
            self:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox.levelNameText );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelRange[2] = number;
        
            -- need to Adjust the 2nd if necessary as well.
            local number2 = tonumber ( GRM.Trim ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:GetText() ) );
        
            if number < number2 then
                number2 = number;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox.levelNameText = tostring ( number2 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox.levelNameText );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelRange[1] = number2;
            end
            
        end);
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetScript ( "OnTabPressed" , function ( self )
            self:ClearFocus();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetFocus();
        end);
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetScript ( "OnEditFocusGained" , function ( self )
            self:HighlightText ( 0 );
            self:SetCursorPosition ( 0 );
        end);



        -- Confirm Button
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesConfirmButton:SetSize ( 145 , 25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesConfirmButton:SetPoint ( "BOTTOMRIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "BOTTOM" , -20 , 15 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesConfirmButton.GRM_ToolCustomRulesConfirmButtonText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesConfirmButton );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesConfirmButton:SetScript ( "OnClick" , function ( _ , button )
            if button == "LeftButton" then
                if GRM.IsRuleReady() then
                    -- Add or edit the new rule
                    GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser][GRM.ruleTypeEnum[GRM_UI.GRM_ToolCoreFrame.TabPosition]][GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.name] = GRM.DeepCopyArray ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule );
                    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.isEdit and GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.ruleNameOriginal ~= GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.name then
                        GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser][GRM.ruleTypeEnum[GRM_UI.GRM_ToolCoreFrame.TabPosition]][GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.ruleNameOriginal] = nil;
                    end
                    
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:Hide();
                    GRM.RefreshNumberOfHoursTilRecommend();
                    GRM_UI.FullMacroToolRefresh();
                end
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesCancelButton:SetSize ( 145 , 25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesCancelButton:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "BOTTOM" , 20 , 15 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesCancelButton.GRM_ToolCustomRulesCancelButtonText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesCancelButton );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesCancelButton:SetScript ( "OnClick" , function ( _ , button )
            if button == "LeftButton" then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:Hide();
            end
        end);

        -- Method:          SetRankNamesToCustomRuleCheckButtons()
        -- What it Does:    Sets all the custom rules checkbox to the rank names
        -- Purpose:         Keep rank names set properly.
        local SetRankNamesToCustomRuleCheckButtons = function()
            local numRanks = GuildControlGetNumRanks(); -- minus 1 because we are not including the guild leader
            local button , buttontext;

            for i = 1 , ( numRanks - 1 ) do
                button = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][1];
                buttontext = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][2];

                if i <= ( numRanks - 1 ) then
                    buttontext:SetText ( GuildControlGetRankName ( numRanks + 1 - i ) );
                    buttontext:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
                    button:Show();
                else
                    button:Hide();
                end

            end
        end

        -- Initializes all checkboxes
        local BuildRankCheckBoxes = function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes or {};
            local numRanks = GuildControlGetNumRanks() - 1;

            for i = 1 , numRanks do
                if not GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i] then
                    local button = CreateFrame ( "CheckButton" , "GRM_ToolCustomRulesRank" .. i , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "OptionsSmallCheckButtonTemplate" );
                    local buttontext = button:CreateFontString ( "GRM_ToolCustomRulesRank" .. i .. "Text" , "OVERLAY" , "GameFontNormalSmall" );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i] = { button , buttontext };

                    if i == 1 then
                        button:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1 , "BOTTOMRIGHT" , 0 , -5 );
                    else
                        if i % 3 == 1 then
                            button:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i - 3][1] , "BOTTOMLEFT" , 0 , -5 );
                        else
                            button:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i - 1][1] , "RIGHT" , 100 , 0 );
                        end
                    end
                    buttontext:SetPoint ( "LEFT" , button , "RIGHT" , 2 , 0 );
                    buttontext:SetWidth ( 95 );
                    buttontext:SetJustifyH ( "LEFT" )

                    button:SetScript ( "OnClick" , function ( self , button )
                        if button == "LeftButton" then
                            if self:GetChecked() then
                                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.ranks[i] = true;
                            else
                                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.ranks[i] = false;
                            end
                        end
                    end);

                end
            end

            -- Need to set the following button in the correct position
            if #GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes > 6 then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1:SetPoint ( "TOPRIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[7][1] , "BOTTOMLEFT" , 0 , -15 );
            elseif #GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes > 3 then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1:SetPoint ( "TOPRIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[4][1] , "BOTTOMLEFT" , 0 , -15 );
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1:SetPoint ( "TOPRIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[1][1] , "BOTTOMLEFT" , 0 , -15 );
            end

            SetRankNamesToCustomRuleCheckButtons();
        end

        -- Method:          GRM_UI.SetRankCustomRuleFilters()
        -- What it Does:    Applies the custom rules selected ranks
        -- Purpose:         Set the rules properly as they are used.
        GRM_UI.SetRankCustomRuleFilters = function()
            local numRanks = GuildControlGetNumRanks() - 1;
            if #GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes ~= numRanks then       -- If window was open at same time rank was removed, we can rebuild the frames
                BuildRankCheckBoxes();
            end

            for i = 1 , numRanks do
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.ranks[i] ~= nil then
                    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.ranks[i] then
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][1]:SetChecked ( true );
                    else
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][1]:SetChecked ( false );
                    end
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.ranks[i] = false;
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][1]:SetChecked ( false );
                end
            end
        end

        -- Method:          GRM_UI.SetDefaultRankFilters()
        -- What it Does:    Sets all the default rules to true and puts all the buttons as checked, even though they are disabled
        -- Purpose          Purely aesthetics and ease to manipulate if enabling buttons
        GRM_UI.SetDefaultRankFilters = function()
            local numRanks = GuildControlGetNumRanks() - 1;
            if #GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes ~= numRanks then       -- If window was open at same time rank was removed, we can rebuild the frames
                BuildRankCheckBoxes();
            end

            for i = 1 , numRanks do
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.ranks[i] = true;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][1]:SetChecked ( true );
            end
        end

        -- Method:              GRM_UI.EnableCustomSelectionOfRanks()
        -- What it Does:        Activates the checkboxes so individual ranks can be selected.
        -- Purpose:             Allow custom rank filtering.
        GRM_UI.EnableCustomSelectionOfRanks = function()
            for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes do
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][1]:Enable();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][2]:SetTextColor ( 1 , 0.82 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankFilter = true;
            end
        end

        -- What it Does:            Enables all Custom Rule Rank Checkboxes and greys them out.
        GRM_UI.DisableCustomSelectionRanks = function()
            for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes do
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][1]:Disable();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][2]:SetTextColor ( 0.5 , 0.5 , 0.5 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankFilter = false;
            end
        end
        -- Method:          GRM_UI.DisableLevelSelectionEditBoxes()
        -- What it Does:    Disables editing of this feature in the controls
        -- Purpose:         Easier UX controls
        GRM_UI.DisableLevelSelectionEditBoxes = function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:Disable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetTextColor ( 0.5 , 0.5 , 0.5 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelText:SetTextColor ( 0.5 , 0.5 , 0.5 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:Disable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetTextColor ( 0.5 , 0.5 , 0.5 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRangeText:SetTextColor ( 0.5 , 0.5 , 0.5 );
        end

        -- Method:          GRM_UI.EnableLevelSelectionEditBoxes()
        -- What it Does:    Enables editing of this feature in the controls
        -- Purpose:         Easier UX controls
        GRM_UI.EnableLevelSelectionEditBoxes = function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:Enable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetTextColor ( 1 , 1 , 1 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelText:SetTextColor ( 1 , 0.82 , 0 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:Enable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetTextColor ( 1 , 1 , 1 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRangeText:SetTextColor ( 1 , 0.82 , 0 );
        end

        -- Method:          GRM_UI.ConfigureCustomRuleKickFrame ( bool , string )
        -- What it Does:    Configures the values of all the buttons on the custom rules creation window
        -- Purpose:         Keep rules settings displayed properly.
        GRM_UI.ConfigureCustomRuleKickFrame = function ( isEdit , ruleName )

            local matchString = "";

            -- Build Rank Filter
            BuildRankCheckBoxes();

            if isEdit then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule = GRM.GetKickRule ( ruleName );
                -- Build header text
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRuleNumberText:Show();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetText ( ruleName );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox.ruleNameText = ruleName;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.ruleNameOriginal = ruleName;

                -- Inactivity filter
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.activityFilter then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton:SetChecked ( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:Enable();
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetTextColor ( 1 , 0.82 , 0 );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton:SetChecked ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:Disable();
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetTextColor ( 0.5 , 0.5 , 0.5 );
                end
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox.value = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.numDaysOrMonths;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.numDaysOrMonths );
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.isMonths then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText:SetText ( GRM.L ( "Months") );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText:SetText ( GRM.L ( "Days") );
                end
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.allAltsApplyToKick then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:SetChecked ( true );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:SetChecked ( false );
                end

                -- Rank Filter
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankFilter then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1:SetChecked( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2:SetChecked ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2Text:SetTextColor ( 1 , 0.82 , 0 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1Text:SetTextColor ( 1 , 0 , 0 );
                    GRM_UI:EnableCustomSelectionOfRanks(); 
                else
                    
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2:SetChecked ( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1:SetChecked( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1Text:SetTextColor ( 1 , 0.82 , 0 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2Text:SetTextColor ( 1 , 0 , 0 );
                    GRM_UI.DisableCustomSelectionRanks();
                end
                GRM_UI.SetRankCustomRuleFilters();

                -- Level Range
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelFilter then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1Text:SetTextColor ( 1 , 0.82 , 0  );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1:SetChecked( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2:SetChecked ( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text:SetTextColor ( 1 , 0 , 0 );
                    GRM_UI.EnableLevelSelectionEditBoxes();
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1:SetChecked( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2:SetChecked ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1Text:SetTextColor ( 1 , 0 , 0 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text:SetTextColor ( 1 , 0.82 , 0 );
                    GRM_UI.DisableLevelSelectionEditBoxes();
                end
                local levelRange = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelRange[1];
                if levelRange == 999 then
                    levelRange = GetMaxPlayerLevel();
                end
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetText ( levelRange );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox.levelNameText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:GetText();
                levelRange = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelRange[2];
                if levelRange == 999 then
                    levelRange = GetMaxPlayerLevel();
                end
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetText ( levelRange );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox.levelNameText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:GetText();

                -- Note Matching
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.noteMatch then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButton:SetChecked( true );
                    GRM_UI.EnableNoteMatch();
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButton:SetChecked ( false );
                    GRM_UI.DisableNoteMatch();
                end
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.notesToCheck[1] then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton:SetChecked ( true );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton:SetChecked ( false );
                end
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.notesToCheck[2] then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButton:SetChecked ( true );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButton:SetChecked ( false );
                end
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.notesToCheck[3] then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton:SetChecked ( true );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton:SetChecked ( false );
                end

                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.matchingString == "" then
                    matchString = GRM.L ( "Click to Set" );
                else
                    matchString = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.matchingString;
                end

                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetText ( matchString );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox.stringPattern = matchString;



            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule = GRM.BuildNewKickRuleTemplate();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRuleNumberText:Hide();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.name );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox.ruleNameText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.name;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.ruleNameOriginal = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.name;

                -- Inactivity filter
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton:SetChecked ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox.value = 12;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetText ( "12" );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText:SetText ( GRM.L ( "Months") );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:SetChecked ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:Enable();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetTextColor ( 1 , 0.82 , 0 );

                -- Rank Filter
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2:SetChecked ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2Text:SetTextColor ( 1 , 0 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1Text:SetTextColor ( 1 , 0.82 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1:SetChecked( false );
                                
                GRM_UI.SetDefaultRankFilters();
                GRM_UI.DisableCustomSelectionRanks();

                -- Level Range
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1:SetChecked ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2:SetChecked ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1Text:SetTextColor ( 1 , 0 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text:SetTextColor ( 1 , 0.82 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetText ( 1 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetText ( GRM_G.LvlCap );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox.levelNameText = "1";
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox.levelNameText = tostring ( GRM_G.LvlCap );
                GRM_UI.DisableLevelSelectionEditBoxes();

                -- Custom Note
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButton:SetChecked ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton:SetChecked ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButton:SetChecked ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton:SetChecked ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetText ( GRM.L ( "Click to Set" ) );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox.stringPattern = "";
                GRM_UI.DisableNoteMatch();
                
                
                

            end

            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.isEdit = isEdit;            

        end
 
        -- Method:          GRM_UI.ConfigureCustomRulePromoteFrame ( bool , string )
        -- -- What it Does:    Configures the values of all the buttons on the custom rules creation window
        -- -- Purpose:         Keep rules settings displayed properly.
        -- GRM_UI.ConfigureCustomRulePromoteFrame = function ( isEdit , ruleName )

        -- end

        -- -- Method:          GRM_UI.ConfigureCustomRuleDemoteFrame ( bool , string )
        -- -- What it Does:    Configures the values of all the buttons on the custom rules creation window
        -- -- Purpose:         Keep rules settings displayed properly.
        -- GRM_UI.ConfigureCustomRuleDemoteFrame = function ( isEdit , ruleName )

        -- end

        -- INACTIVITY CUSTOM RULES
        --------------------------

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "TOPLEFT" , 25 , -75 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButtonText:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton:SetScript ( "OnClick", function()
            if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton:GetChecked() then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.activityFilter = true;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:Enable();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetTextColor ( 1 , 0.82 , 0 );
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.activityFilter = false;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:Disable();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetTextColor ( 0.5 , 0.5 , 0.5    );
            end
        end);
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButtonText , "RIGHT" , 5 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetSize ( 25 , 22 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetMaxLetters ( 2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetNumeric ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetTextColor ( 1.0 , 0 , 0 , 1.0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:EnableMouse ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox.value = 0;
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetAutoFocus( false );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.ruleButtons = {};

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetScript ( "OnEscapePressed" , function( self )
            self:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox.value );
            self:ClearFocus();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetScript ( "OnEnterPressed" , function( self )
            self:ClearFocus();   
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetScript ( "OnEditFocusLost" , function( self ) 
            self:HighlightText ( 0 , 0 );

            local numMonths = tonumber ( self:GetText() );
            if numMonths > 0 and numMonths < 100 then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.numDaysOrMonths = numMonths;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox.value = numMonths;

                GRM_UI.RefreshManagementTool();
            else
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.isMonths then
                    GRM.Report ( GRM.L ( "Please choose a month between 1 and 99" ) );
                elseif not GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.isMonths then
                    GRM.Report ( GRM.L ( "Please choose a day between 1 and 99" ) );
                end
            end   
            self:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox.value );
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox , "RIGHT" , 3 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:SetSize (  60 , 18 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:SetBackdrop ( GRM_UI.noteBackdrop2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:SetFrameStrata ( "DIALOG" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText:SetWidth ( 50 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText:SetWordWrap ( false );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected , "BOTTOM" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:SetWidth ( 60 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:SetBackdrop ( GRM_UI.noteBackdrop2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:SetFrameStrata ( "DIALOG" );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:SetScript ( "OnKeyDown" , function ( self , key )
            self:SetPropagateKeyboardInput ( true );
            if key == "ESCAPE" then
                self:SetPropagateKeyboardInput ( false );
                self:Hide();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:Show();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:SetScript ( "OnShow" , function() 
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:Hide();
        end)

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:SetScript ( "OnMouseDown" , function( _ , button )
            if button == "LeftButton" then
                if  GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:IsVisible() then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:Hide();
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:Show();
                    GRM_UI.PopulateScaleSelectionDropDown();
                end
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:SetScript ( "OnEnter" , function( self )
            GRM_UI.SetTooltipScale()
            GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
            GameTooltip:AddLine( GRM.L ( "|CFFE6CC7FClick|r to Change" ) );
            GameTooltip:Show();
        end);
    
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:SetScript ( "OnLeave" , function()
            GRM_UI.RestoreTooltipScale();
            GameTooltip:Hide();
        end)

        -- Method:          GRM_UI.PopulateScaleSelectionDropDown()
        -- What it Does:    Creates a dropdown window for the GRM tool to allow player to select whether to choose months or days in terms of time passed.
        -- Purpose:         Greater flexibility and control to the player
        GRM_UI.PopulateScaleSelectionDropDown = function()
            local buffer = 3;
            local height = 0;
            local width = 60;
            local names = { GRM.L ( "Months" ) , GRM.L ( "Days" ) };

            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu.Buttons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu.Buttons or {};

            for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu.Buttons do
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu.Buttons[i][1]:Hide();
            end

            for i = 1 , 2 do
                if not GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu.Buttons[i] then
                    local tempButton = CreateFrame ( "Button" , "GRM_ToolTimeScaleButton" .. i , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu.Buttons[i] = { tempButton , tempButton:CreateFontString ( "GRM_ToolTimeScaleButtonText" .. i , "OVERLAY" , "GameFontWhiteTiny" ) }
                end

                local FontButton = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu.Buttons[i][1];
                local FontButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu.Buttons[i][2];

                FontButton:SetWidth ( width );
                FontButton:SetHeight ( 11 );
                FontButton:SetHighlightTexture ( "Interface\\Buttons\\UI-Panel-Button-Highlight" );
                FontButtonText:SetText ( names[i] );
                FontButtonText:SetWidth ( width - 5 );
                FontButtonText:SetWordWrap ( false );
                FontButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
                FontButtonText:SetPoint ( "CENTER" , FontButton );
                FontButtonText:SetJustifyH ( "CENTER" );

                if i == 1 then
                    FontButton:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu , 0 , -7 );
                    height = height + FontButton:GetHeight();
                else
                    FontButton:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu.Buttons[i - 1][1] , "BOTTOM" , 0 , -buffer );
                    height = height + FontButton:GetHeight() + buffer;
                end

                FontButton:SetScript ( "OnClick" , function( self , button ) 
                    if button == "LeftButton" then
                        local number = tonumber ( string.match ( self:GetName() , ("%d+" ) ) );

                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText:SetText ( FontButtonText:GetText() );
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:Hide();
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:Show();

                        -- Days to months.
                        if number == 1 and not GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.isMonths then
                            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.isMonths = true;
                            
                            if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.numDaysOrMonths == 99 then
                                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.numDaysOrMonths = 12;
                                GRM.Report ( GRM.L ( "Time before recommending to kick has been set to the default period of 12 Months." ) );
                            else
                                local num = math.floor ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.numDaysOrMonths / 30 );
                                if num == 0 then
                                    num = 1;
                                end
                                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.numDaysOrMonths = num;
                                GRM.Report ( GRM.L ( "Time before recommending to kick has been set to {num} Months." , nil , nil , num ) );
                            end
                            
                        -- Going from months to days
                        elseif number == 2 and GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.isMonths then
                            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.isMonths = false;

                            if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.numDaysOrMonths > 3 then
                                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.numDaysOrMonths = 99;
                                GRM.Report ( GRM.L ( "Time before recommending to kick has been set to 99 Days. For a longer time period, use the months instead." ) );
                                
                            else
                                local num = 30 * GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.numDaysOrMonths;
                                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.numDaysOrMonths = num;
                                GRM.Report ( GRM.L ( "Time before recommending to kick has been set to {num} Days." , nil , nil , num ) );
                            end

                        end

                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox.value = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.numDaysOrMonths;
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox.value );
                    end
                end);
                FontButton:Show();
            end
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:SetHeight ( height + 15 );
        end

        -- CUSTOM RANK RULE Button Controls
        --------------------
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2 , "BOTTOMLEFT" , 0 , -5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1:SetHitRectInsets ( 0 , -150 , 0 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1Text:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1 , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1:SetScript ( "OnClick", function()
            GRM_UI.EnableCustomSelectionOfRanks();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1:SetChecked ( true );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2:SetChecked ( false );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2:SetHitRectInsets ( 0 , -115 , 0 , 0 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2Text:SetTextColor ( 1 , 0.82 , 0 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1Text:SetTextColor ( 1 , 0 , 0 ); 
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2:SetPoint ( "TOPRIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed , "BOTTOMLEFT" , -8 , -15 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2Text:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2 , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2:SetScript ( "OnClick", function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2:SetChecked ( true );
            GRM_UI.DisableCustomSelectionRanks();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1:SetChecked ( false );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1Text:SetTextColor ( 1 , 0.82 , 0 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2Text:SetTextColor ( 1 , 0 , 0 ); 
        end);
        
        -- String matching Custom Rules
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButton:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text , "BOTTOMLEFT" , -18 , -40 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButton:SetHitRectInsets ( 0 , -115 , 0 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButtonText:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButton , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButton:SetScript ( "OnClick" , function( self )
            if self:GetChecked() then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.noteMatch = true;
                GRM_UI.EnableNoteMatch();
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.noteMatch = false;
                GRM_UI.DisableNoteMatch();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButtonText , "RIGHT" , 15 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetMaxLetters ( 20 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:EnableMouse ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetAutoFocus( false );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetSize ( 175 , 20 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetNumeric ( false );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox.stringPattern = "";

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButton , "BOTTOMRIGHT" , 0 , -5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton:SetHitRectInsets ( 0 , -75 , 0 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButtonText:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton:SetScript ( "OnClick" , function( self )
            if self:GetChecked() then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.notesToCheck[1] = true;

            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.notesToCheck[1] = false;

            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButton:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButtonText , "RIGHT" , 8 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButton:SetHitRectInsets ( 0 , -75 , 0 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButtonText:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButton , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButton:SetScript ( "OnClick" , function( self )
            if self:GetChecked() then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.notesToCheck[2] = true;

            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.notesToCheck[2] = false;

            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButtonText , "RIGHT" , 8 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton:SetHitRectInsets ( 0 , -75 , 0 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButtonText:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton:SetScript ( "OnClick" , function( self )
            if self:GetChecked() then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.notesToCheck[3] = true;

            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.notesToCheck[3] = false;

            end
        end);

        GRM_UI.EnableNoteMatch = function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:Enable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetTextColor ( 1 , 1 , 1 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton:Enable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButtonText:SetTextColor ( 1 , 0.82 , 0 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButton:Enable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButtonText:SetTextColor ( 1 , 0.82 , 0 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton:Enable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButtonText:SetTextColor ( 1 , 0.82 , 0 );
        end

        GRM_UI.DisableNoteMatch = function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:Disable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetTextColor ( 0.5 , 0.5 , 0.5  );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton:Disable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButtonText:SetTextColor ( 0.5 , 0.5 , 0.5  );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButton:Disable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButtonText:SetTextColor ( 0.5 , 0.5 , 0.5  );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton:Disable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButtonText:SetTextColor ( 0.5 , 0.5 , 0.5  );
        end

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetScript ( "OnEscapePressed" , function ( self )
            self:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox.stringPattern );
            self:ClearFocus();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetScript ( "OnEnterPressed" , function ( self )
            self:ClearFocus();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetScript ( "OnEditFocusLost" , function ( self )
            self:HighlightText ( 0 , 0 );
            self:SetText ( GRM.Trim ( self:GetText() ) );
            local textResult = self:GetText();

            if textResult == "" then
                textResult = GRM.L ( "Click to Set" );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.matchingString = "";
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.matchingString = textResult;
            end
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox.stringPattern = textResult;
            self:SetText ( textResult );
        end)

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetScript ( "OnEditFocusGained" , function ( self )
            if self:GetText() == GRM.L ( "Click to Set" ) then
                self:SetText ( "" );
            end
            self:HighlightText ( 0 );
            self:SetCursorPosition ( 0 );
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolSuggestIdeasText:SetPoint( "BOTTOM" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "BOTTOM" , 0 , 75 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolSuggestIdeasText:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolSuggestIdeasText:SetWidth ( 200 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolSuggestIdeasText:SetSpacing ( 1 );
    
    end

    -- Custom Rules Fontstrings
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRuleNumberText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 18 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRuleNumberText:SetText ( "(" .. GRM.L ( "Edit" ) .. ")" );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetFont( GRM_G.FontChoice , GRM_G.FontModifier + 16 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesConfirmButton.GRM_ToolCustomRulesConfirmButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesConfirmButton.GRM_ToolCustomRulesConfirmButtonText:SetText( GRM.L ( "Confirm" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesCancelButton.GRM_ToolCustomRulesCancelButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesCancelButton.GRM_ToolCustomRulesCancelButtonText:SetText ( GRM.L ( "Cancel" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButtonText:SetText ( GRM.L ( "Kick Inactive Player Reminder at" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 10 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1Text:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1Text:SetText ( GRM.L ( "Apply Only to Selected Ranks" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2Text:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2Text:SetText ( GRM.L ( "Apply to All Ranks" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1Text:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1Text:SetText ( GRM.L ( "Apply to All Levels" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text:SetText ( GRM.L ( "Apply Only to Level Range" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelText:SetText ( GRM.L ( "To" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRangeText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRangeText:SetText ( GRM.L ( "Level Range:" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButtonText:SetText ( GRM.L ( "Require Text Match" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButtonText:SetText ( GRM.L ( "Public Note" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButtonText:SetText ( GRM.L ( "Officer Note" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButtonText:SetText ( GRM.L ( "Custom Note" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolSuggestIdeasText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolSuggestIdeasText:SetText ( "Suggestions on Kick Filters? Submit to Discord!" );
end

-----------------------------
--- UI Control Functions ----
-----------------------------

-- Method:          GRM_UI.RefreshToolPermissionReport()
-- What it Does:    Rebuilds the permissions text
-- Purpose:         UX
GRM_UI.RefreshToolPermissionReport = function()
    if GRM_UI.GRM_ToolCoreFrame.IsInitialized and GRM_UI.GRM_ToolCoreFrame:IsVisible() then
        if CanGuildRemove() then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1_K:Hide();
        else
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1_K:Show();
        end

        if CanGuildPromote() then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2_P:Hide();
        else
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2_P:Show();
        end

        if CanGuildDemote() then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3_D:Hide();
        else
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3_D:Show();
        end
    end
end


-----------------------------
----- QUED SCROLL FRAME -----
-----------------------------

-- Method:          GRM.GetQueuedEntries ( bool )
-- What it Does:    Determines which grouping to import
-- Purpose:         Proper sorting of players in the guild to be added to the mass kick tool
GRM.GetQueuedEntries = function ()
    local result = {};

    if GRM_UI.GRM_ToolCoreFrame.TabPosition == 1 then
        result = GRM.GetKickNamesByFilterRules();
    elseif GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 then
        result = GRM.GetPromoteNamesByFilterRules();
    elseif GRM_UI.GRM_ToolCoreFrame.TabPosition == 3 then
        result = GRM.GetDemoteNamesByFilterRules();
    end

    return result;
end

-- Method:          GRM.SetKickQueuedValues ( int , int )
-- What it Does:    Builds the values of the given line in the window
-- Purpose:         Quality of life feature.
GRM.SetKickQueuedValues = function ( ind , ind2 )
    local line = GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[ind];

    -- Player Name
    line[2]:SetText ( GRM_UI.GRM_ToolCoreFrame.QueuedEntries[ind2].name );
    line[2]:SetTextColor ( GRM_UI.GRM_ToolCoreFrame.QueuedEntries[ind2].class[1] , GRM_UI.GRM_ToolCoreFrame.QueuedEntries[ind2].class[2] , GRM_UI.GRM_ToolCoreFrame.QueuedEntries[ind2].class[3] , 1 );
    line[3]:SetText ( GRM_UI.GRM_ToolCoreFrame.QueuedEntries[ind2].action );

    if GRM_UI.GRM_ToolCoreFrame.QueuedEntries[ind2].action == GRM.L ( "Kick" )then
        line[3]:SetTextColor ( 1.0 , 0.84 , 0 , 1 );
    elseif GRM_UI.GRM_ToolCoreFrame.QueuedEntries[ind2].action == GRM.L ( "Promote" ) then
        line[3]:SetTextColor ( 1.0 , 0.84 , 0 , 1 );
    elseif GRM_UI.GRM_ToolCoreFrame.QueuedEntries[ind2].action ==  GRM.L ( "Demote" ) then
        line[3]:SetTextColor ( 1.0 , 0.84 , 0 , 1 );
    end

    -- Update the tooltip if underlying data changes
    if GameTooltip:IsVisible() and GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[ind][1]:IsMouseOver() then 
        GRM.UpdateQueuedTooltip ( ind );
    end
end

-- Method:          GRM.KickQueuedHybridShiftDown()
-- What it Does:    Shifts all the values DOWN one line to give the illusion of scrolling when in reality this is just a hybrid scrollframe
-- Purpose:         Clean scrolling
GRM.KickQueuedHybridShiftDown = function()
    if #GRM_UI.GRM_ToolCoreFrame.QueuedEntries > 13 then
        local buttons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons;
        local MouseOverButton = 0;

        -- Shift them down...
        for i = 1 , #buttons - 1 do

            -- Header Line
            buttons[i][2]:SetText( buttons[i+1][2]:GetText() );
            buttons[i][2]:SetTextColor ( buttons[i+1][2]:GetTextColor ( buttons[i+1][3]:GetText() ) );
            buttons[i][3]:SetText( buttons[i+1][3]:GetText() );
            buttons[i][3]:SetTextColor ( buttons[i+1][3]:GetTextColor ( buttons[i+1][3]:GetText() ) );

            if MouseOverButton == 0 and buttons[i][1]:IsMouseOver() then
                MouseOverButton = i;
            end
        end

        GRM.KickQueuedSetLastValue();
        if MouseOverButton > 0 then
            GRM.UpdateQueuedTooltip ( MouseOverButton );
        end
    end
end

-- Method:          GRM.KickQueuedHybridShiftUp()
-- What it Does:    Shifts all the values up one line to give the illusion of scrolling when in reality this is just a hybrid scrollframe
-- Purpose:         Clean scrolling
GRM.KickQueuedHybridShiftUp = function()
    if #GRM_UI.GRM_ToolCoreFrame.QueuedEntries > 13 then
        local buttons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons;
        local MouseOverButton = 0;

        for i = #buttons , 2 , -1 do

            buttons[i][2]:SetText( buttons[i-1][2]:GetText() );
            buttons[i][2]:SetTextColor ( buttons[i-1][2]:GetTextColor ( buttons[i-1][2]:GetText() ) );
            buttons[i][3]:SetText( buttons[i-1][3]:GetText() );
            buttons[i][3]:SetTextColor ( buttons[i-1][3]:GetTextColor ( buttons[i-1][3]:GetText() ) );

            if MouseOverButton == 0 and buttons[i][1]:IsMouseOver() then
                MouseOverButton = i;
            end
        end

        GRM.KickQueuedSetFirstValue();
        if MouseOverButton > 0 then
            GRM.UpdateQueuedTooltip ( MouseOverButton );
        end
    end
end

-- Method:          GRM.KickQueuedSetLastValue()
-- What it Does:    Sets the last value of the hybridscrollframe backups at position 16
-- Purpose:         Clean scrolling
GRM.KickQueuedSetLastValue = function()
    GRM.SetKickQueuedValues ( #GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset );
end

-- Method:          GRM.KickQueuedSetFirstValue()
-- What it Does:    Sets the first value of the hybridscrollframe backups at position 1
-- Purpose:         Clean scrolling
GRM.KickQueuedSetFirstValue = function()
    GRM.SetKickQueuedValues ( 1 , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset - #GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons + 1 );
end

-- Method:          GRM.GetToolTipLine ( table )
-- What it Does:    Constructs a string based on the rule info, for a tooltip
-- Purpose:         UX
GRM.GetToolTipLine = function ( rulePart )
    local result = {};

    for i = 1 , #rulePart do
        if rulePart[i][1] == "Inactive" then
            table.insert ( result , " - " .. GRM.L ( "Last Online" ) .. ": " .. GRM.HoursReport ( rulePart[i][2] ) );
        elseif rulePart[i][1] == "Rank" then
            table.insert ( result , " - " .. GRM.L ( "Matching Rank" ) .. ": " .. rulePart[i][2] );
        elseif rulePart[i][1] == "Level" then
            table.insert ( result , " - " .. GRM.L ( "Within Level Range: {num} - {custom1}" , nil , nil , rulePart[i][2] , rulePart[i][3] ) );
        elseif rulePart[i][1] == "Note Match" then
            table.insert ( result , " - " .. GRM.L ( "Note match: {name}" , "\"" .. rulePart[i][2] .. "\"" ) );
        end
    end

    return result;
end

-- Method:          GRM.UpdateQueuedTooltip()
-- What it Does:    Sets the tooltip for the Queued scrollframe in the GRM kick tool
-- Purpose:         Make it clear the QoL controls.
GRM.UpdateQueuedTooltip = function ( ind )

    local playerName = GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[ind][2]:GetText();
    local reason = GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[ind][3]:GetText();
    local details;

    GRM_UI.SetTooltipScale();
    GameTooltip:SetOwner ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[ind][1] , "ANCHOR_CURSOR" );
    GameTooltip:AddLine ( playerName , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[ind][2]:GetTextColor() );

    if reason == GRM.L ( "Kick" ) then

        for i = 1 , #GRM_UI.GRM_ToolCoreFrame.QueuedEntries do
            if GRM_UI.GRM_ToolCoreFrame.QueuedEntries[i].name == playerName then
                for j = #GRM_UI.GRM_ToolCoreFrame.QueuedEntries[i] , 1 , -1 do
                    GameTooltip:AddLine ( GRM_UI.GRM_ToolCoreFrame.QueuedEntries[i][j][1] )     -- Rule Name
                    details = GRM.GetToolTipLine ( GRM_UI.GRM_ToolCoreFrame.QueuedEntries[i][j][2] );     -- Rule Sub details

                    for k = 1 , #details do
                        GameTooltip:AddLine ( details[k] , 1 , 1 , 1 );
                    end
                    GameTooltip:AddLine ( " " );    -- adds a small space between the lines

                end

                break;
            end
        end

    elseif reason == GRM.L ( "Promote" ) then

    elseif reason == GRM.L ( "Demote" ) then

    end

    
    GameTooltip:AddLine ( GRM.L ( "|CFFE6CC7FCtrl-Click|r to open Player Window" ) );
    GameTooltip:AddLine( GRM.L ( "|CFFE6CC7FCtrl-Shift-Click|r to Search the Log for Player" ) );
    GameTooltip:Show();

end

-- Method:          GRM.TriggerKickQueuedWindowRefresh()
-- What it Does:    Refreshes the GRM Kick Tool's Queued window after hiding the tooltip
-- Purpose:         Prevent code bloat for something with repeated use.
GRM.TriggerKickQueuedWindowRefresh = function()
    GRM_UI.RestoreTooltipScale();
    GameTooltip:Hide();
    GRM.BuildQueuedScrollFrame ( true , true , false );
    GRM_UI.RefreshToolButtonsOnUpdate();
end

-- Method:          GRM.BuildQueuedScrollFrame( bool , bool , bool )
-- What it Does:    Updates the Queued scrollframe as needed
-- Purpose:         UX of the GRM mass kick tool
GRM.BuildQueuedScrollFrame = function ( showAll , fullRefresh , isBanAltList , bannedInGuildList )
    local hybridScrollFrameButtonCount = 13;
    local buttonHeight = 25;
    local scrollHeight = 0;
    local buttonWidth = GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrame:GetWidth() - 5;
    if showAll and fullRefresh then
        if not isBanAltList and not bannedInGuildList then
            GRM_UI.GRM_ToolCoreFrame.QueuedEntries = GRM.GetQueuedEntries ( true );
        elseif isBanAltList then
            GRM_UI.GRM_ToolCoreFrame.QueuedEntries = GRM.DeepCopyArray ( GRM_G.KickAllAltsTable );
            GRM_G.KickAllAltsTable = {};
        elseif bannedInGuildList then
            GRM_UI.GRM_ToolCoreFrame.QueuedEntries = GRM.DeepCopyArray ( GRM_G.KickAllBannedTable );
            GRM_G.KickAllBannedTable = {};
        end
    end

    GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons or {};
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset = GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset or ( hybridScrollFrameButtonCount );

    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset < hybridScrollFrameButtonCount then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset = hybridScrollFrameButtonCount;
    elseif GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset > hybridScrollFrameButtonCount and GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset > #GRM_UI.GRM_ToolCoreFrame.QueuedEntries then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset = #GRM_UI.GRM_ToolCoreFrame.QueuedEntries;
    end

    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.QueuedEntries do
        -- Build HybridScrollFrame Buttons
        if i <= hybridScrollFrameButtonCount then
            if not GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[i] then

                local button = CreateFrame ( "Button" , "QueuedButton1_" .. i , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[i] = {
                    button ,
                    button:CreateFontString ( "QueuedString1_" .. i , "OVERLAY" , "GameFontWhiteTiny" ),
                    button:CreateFontString ( "QueuedString2_" .. i , "OVERLAY" , "GameFontWhiteTiny" )
                };

                button = GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[i][1];
                if i == 1 then
                    button:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame , "TOP" , 7 , 0 );
                else 
                    button:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[i-1][1] , "BOTTOMLEFT" , 0 , 0 );
                end

                button:SetHighlightTexture ( "Interface\\Buttons\\UI-Panel-Button-Highlight" );
                button:SetSize ( buttonWidth , buttonHeight );
                GRM.BuildKickQueuedScrollButtons ( i  , false );
                
            end
        end

        if i >= ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset - hybridScrollFrameButtonCount + 1 ) and i <= GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset then
            GRM.SetKickQueuedValues ( i - ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset - hybridScrollFrameButtonCount ) , i );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[i - ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset - hybridScrollFrameButtonCount )][1]:Show();
        end
        
        -- Slider Height is controlled by tallying how many of these are necessary
        scrollHeight = scrollHeight + buttonHeight;
    end

    -- Hide unused buttons...
    for i = #GRM_UI.GRM_ToolCoreFrame.QueuedEntries + 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons do
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[i][1]:Hide();
    end

    GRM.SetHybridScrollFrameSliderParameters ( 
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder, 
        buttonWidth , buttonHeight , scrollHeight , #GRM_UI.GRM_ToolCoreFrame.QueuedEntries , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons , 
        GRM.KickQueuedHybridShiftDown , GRM.KickQueuedHybridShiftUp , hybridScrollFrameButtonCount
    );

    if #GRM_UI.GRM_ToolCoreFrame.QueuedEntries > 13 then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder:Show();
    else
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder:Hide();
    end

    if #GRM_UI.GRM_ToolCoreFrame.QueuedEntries > 0 then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton.GRM_ToolBuildMacroButtonText:SetText( GRM.L ( "Click to Build Macro" ) );
    else
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton.GRM_ToolBuildMacroButtonText:SetText( GRM.L ( "No Current Names to Add" ) );
    end

    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalQueText2:SetText ( #GRM_UI.GRM_ToolCoreFrame.QueuedEntries );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalIgnoredText2:SetText ( #GRM_UI.GRM_ToolCoreFrame.Safe );

end

-- Method:          GRM.BuildKickQueuedScrollButtons ( int , boolean )
-- What it Does:    Initiates the buttons and their values for each line of the Queued window of the GRM kick tool's hybridscrollframe
-- Purpose:         Create a smooth scrolling experience in the GRM kick window
GRM.BuildKickQueuedScrollButtons = function ( ind , isResizeAction )
    local coreButton = GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[ind][1];
    local buttonText1 = GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[ind][2];
    local buttonText2 = GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[ind][3];

    -- Name
    buttonText1:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    buttonText2:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );

    -- Actions don't need to be run more than once.
    if not isResizeAction then

        buttonText1:SetPoint ( "LEFT" , coreButton , "LEFT" , 5 , 0 );
        buttonText1:SetJustifyH ( "LEFT" );
        buttonText1:SetWidth ( 146 )
        buttonText1:SetWordWrap ( false );

        buttonText2:SetPoint ( "LEFT" , buttonText1 , "RIGHT" , 5 , 0 );
        buttonText2:SetJustifyH ( "CENTER" );
        buttonText2:SetWidth ( 101 )
        buttonText2:SetWordWrap ( false );

        coreButton:EnableMouse ( true );
        coreButton:RegisterForDrag ( "LeftButton" );

        -- Setup draggable conditions
        coreButton:SetScript ( "OnDragStart" , function()
            GRM_UI.GRM_ToolCoreFrame:StartMoving();
        end);
        coreButton:SetScript ( "OnDragStop" , function()
            GRM_UI.GRM_ToolCoreFrame:StopMovingOrSizing();
            GRM_UI.SaveToolPosition();
        end);

        coreButton:SetScript ( "OnMouseDown" , function ( _ , button )
            local playerName = GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[ind][2]:GetText();
            if button == "LeftButton" then
                if IsShiftKeyDown() and IsControlKeyDown() then
                    GRM_UI.RestoreTooltipScale();
                    GameTooltip:Hide();
                    -- If Core GRM window is not open, let's open it!
                    if not GRM_UI.GRM_RosterChangeLogFrame:IsVisible() then
                        GRM_UI.GRM_RosterChangeLogFrame:Show();
                    end
                    GRM_UI.GRM_RosterChangeLogFrame.GRM_LogTab:Click();
                    GRM_UI.GRM_RosterChangeLogFrame.GRM_LogFrame.GRM_LogEditBox:SetText( GRM.SlimName ( playerName ) );
                elseif IsControlKeyDown() then
                    GRM.OpenPlayerWindow( playerName );
                end
            end
        end);            

        coreButton:SetScript ( "OnEnter" , function ()
            GRM.UpdateQueuedTooltip( ind );
        end);

        coreButton:SetScript ( "OnLeave" , function()
            GRM_UI.RestoreTooltipScale();
            GameTooltip:Hide();
        end);
    end
end

-- Method:          GRM.IsMouseStillOverAnyButton ( array )
-- What it Does:    Returns true if the mouse is still over anothe button in the hybridscrollframe
-- Purpose:         
GRM.IsMouseStillOverAnyButton = function ( buttons )
    local result = false;
        
    for i = 1 , #buttons do
        if buttons[i][1]:IsMouseOver() then
            result = true;
            break;
        end
    end

    return result;
end

---------------------------
--- MACROD Scroll Frame ---
---------------------------

-- Method:          GRM.IsAnyMacroHighlighted()
-- What it Does:    It scans t hrough the macros and reports true if any are selected and the number of selected
-- Purpose:         To adjust the text statement of the button.
GRM.IsAnyMacroHighlighted = function()
    local result = false;
    local count = 0;

    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.MacroEntries do
        if GRM_UI.GRM_ToolCoreFrame.MacroEntries[i].isHighlighted then
            count = count + 1;
            result = true;
        end
    end

    return result , count;
end

-- Method:          GRM.SetMacroButtonText()
-- What it Does:    Determines which text messages needs to be set to the button text.
-- Purpose:         UX quality of life.
GRM.SetMacroButtonText = function()
    local result , count = GRM.IsAnyMacroHighlighted();
    if result then
        if count > 1 then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton.GRM_ToolClearSelectedMacrodNamesButtonText:SetText ( GRM.L ( "Click to remove selected names from the macro" ) );
        else
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton.GRM_ToolClearSelectedMacrodNamesButtonText:SetText ( GRM.L ( "Click to remove selected name from the macro" ) );
        end
    else
        if #GRM_UI.GRM_ToolCoreFrame.MacroEntries == 0 then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton.GRM_ToolClearSelectedMacrodNamesButtonText:SetText ( GRM.L ( "Macro is currently empty" ) );
        else
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton.GRM_ToolClearSelectedMacrodNamesButtonText:SetText ( GRM.L ( "No names selected to remove from macro" ) );
        end
    end
end

-- Method:          GRM.IsNameBlacklisted ( string )
-- What it Does:    Returns true if name is on the temp blacklisted list as it has been removed from the macro build.
-- Purpose:         Keep the purge macro names from being rebuilt into the macro, for this session of the window being open.
GRM.IsNameBlacklisted = function ( name )
    local result = false;

    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.BlacklistedNames do
        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.BlacklistedNames[i] == name then
            result = true;
            break;
        end
    end

    return result;
end

-- Method:          GRM.GetMacroEntries ()
-- What it Does:    Determines which grouping to import
-- Purpose:         Proper sorting of players in the guild to be added to the mass kick tool
GRM.GetMacroEntries = function ()
    local result = {};
    local macroTxt = "";
    local tempText = "";
    local finalCount = 0;
    local count = 0;
    local count2 = 0;
    local i = 1;
    local entries = GRM_UI.GRM_ToolCoreFrame.QueuedEntries;
    local macroSet = false;
    
    -- Create the macro
    while i <= #entries do
        if not GRM.IsNameBlacklisted ( entries[i].name ) then
            tempText = macroTxt;
            -- Save room on the macro if player is on the same server as you
            if count == 0 then
                tempText = "/run GRM_G.HK=true\n" .. entries[i].macro .. " " .. GRM.GetMacroFormattedName ( entries[i].name );
                count = 1;
            else
                tempText = tempText .. "\n" .. entries[i].macro .. " " .. GRM.GetMacroFormattedName ( entries[i].name );
            end

            -- Macro still not full and we are still on the first set
            if #tempText < 256 and count2 == 0 then
                macroTxt = tempText;
                table.insert ( result , entries[i] );
                i = i + 1;

            -- Macro Still not full and we are on the 2nd loop that is not being used to be built
            elseif #tempText < 256 and count2 > 0 then
                macroTxt = tempText;
                i = i + 1;

            -- Macro IS full, and we are still on the first set.
            elseif #tempText > 255 and count2 == 0 then
                finalCount = #macroTxt;
                GRM.CreateMacro ( macroTxt , "GRM_Tool" , "INV_MISC_QUESTIONMARK" , "CTRL-SHIFT-K" );
                macroSet = true;
                count = 0;
                count2 = count2 + 1;
                macroTxt = "";
                tempText = "";

            -- Macro IS full, and we are on the subsequent sets.
            elseif #tempText > 255 and count2 > 0 then
                count = 0;
                count2 = count2 + 1;
                macroTxt = "";
            end

        else
            i = i + 1;      -- Name was blacklisted, moving on.
        end

        if i > #entries then
            if not macroSet and #tempText > 0 then
                finalCount = #macroTxt;
                GRM.CreateMacro ( macroTxt , "GRM_Tool" , "INV_MISC_QUESTIONMARK" , "CTRL-SHIFT-K" );
            end
            count2 = count2 + 1;
            -- Finished!
        end
    end

    return result , count2 , finalCount;
end

-- Method:          GRM.PurgeMacrodNames()
-- What it Does:    Removes the names just macro'd from the list
-- Purpose:         Rebuild the macros ASAP!
GRM.PurgeMacrodNames = function()

    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.MacroEntries do
        for j = #GRM_UI.GRM_ToolCoreFrame.QueuedEntries , 1 , -1 do
            if GRM_UI.GRM_ToolCoreFrame.MacroEntries[i].name == GRM_UI.GRM_ToolCoreFrame.QueuedEntries[j].name then
                table.remove ( GRM_UI.GRM_ToolCoreFrame.QueuedEntries , j );
                break;
            end
        end
    end

end

-- Method:          GRM.SetKickMacrodValues ( int , int )
-- What it Does:    Builds the values of the given line in the window
-- Purpose:         Quality of life feature.
GRM.SetKickMacrodValues = function ( ind , ind2 )
    local line = GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[ind];

    -- Player Name
    line[2]:SetText ( GRM.GetMacroFormattedName ( GRM_UI.GRM_ToolCoreFrame.MacroEntries[ind2].name ) );
    line[2]:SetTextColor ( GRM_UI.GRM_ToolCoreFrame.MacroEntries[ind2].class[1] , GRM_UI.GRM_ToolCoreFrame.MacroEntries[ind2].class[2] , GRM_UI.GRM_ToolCoreFrame.MacroEntries[ind2].class[3] , 1 );
    line[3]:SetText ( GRM_UI.GRM_ToolCoreFrame.MacroEntries[ind2].macro );

    if GRM_UI.GRM_ToolCoreFrame.MacroEntries[ind2].isHighlighted then
        line[1]:LockHighlight();
    else
        line[1]:UnlockHighlight();
    end

    -- Update the tooltip if underlying data changes
    if GameTooltip:IsVisible() and GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[ind][1]:IsMouseOver() then 
        GRM.UpdateMacrodTooltip ( ind );
    end
end

-- Method:          GRM.KickMacrodHybridShiftDown()
-- What it Does:    Shifts all the values DOWN one line to give the illusion of scrolling when in reality this is just a hybrid scrollframe
-- Purpose:         Clean scrolling
GRM.KickMacrodHybridShiftDown = function()
    if #GRM_UI.GRM_ToolCoreFrame.MacroEntries > 13 then
        local buttons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons;
        local MouseOverButton = 0;
        local name = "";

        -- Shift them down...
        for i = 1 , #buttons - 1 do
            name = buttons[i+1][2]:GetText();
            -- Header Line
            buttons[i][2]:SetText( name );
            buttons[i][2]:SetTextColor ( buttons[i+1][2]:GetTextColor ( buttons[i+1][2]:GetText() ) );
            buttons[i][3]:SetText( buttons[i+1][3]:GetText() );
            buttons[i][3]:SetTextColor ( buttons[i+1][3]:GetTextColor ( buttons[i+1][3]:GetText() ) );

            for k = 1 , #GRM_UI.GRM_ToolCoreFrame.MacroEntries do
                if GRM_UI.GRM_ToolCoreFrame.MacroEntries[k].name == name then
                    if GRM_UI.GRM_ToolCoreFrame.MacroEntries[k].isHighlighted then
                        buttons[i][1]:LockHighlight();
                    else
                        buttons[i][1]:UnlockHighlight();
                    end
                    break;
                end
            end

            if MouseOverButton == 0 and buttons[i][1]:IsMouseOver() then
                MouseOverButton = i;
            end
        end

        GRM.KickMacrodSetLastValue();
        if MouseOverButton > 0 then
            GRM.UpdateMacrodTooltip ( MouseOverButton );
        end
    end
end

-- Method:          GRM.KickMacrodHybridShiftUp()
-- What it Does:    Shifts all the values up one line to give the illusion of scrolling when in reality this is just a hybrid scrollframe
-- Purpose:         Clean scrolling
GRM.KickMacrodHybridShiftUp = function()
    if #GRM_UI.GRM_ToolCoreFrame.MacroEntries > 13 then
        local buttons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons;
        local MouseOverButton = 0;
        local name = "";

        for i = #buttons , 2 , -1 do
            name = buttons[i-1][2]:GetText();

            buttons[i][2]:SetText( name );
            buttons[i][2]:SetTextColor ( buttons[i-1][2]:GetTextColor ( buttons[i-1][2]:GetText() ) );
            buttons[i][3]:SetText( buttons[i-1][3]:GetText() );
            buttons[i][3]:SetTextColor ( buttons[i-1][3]:GetTextColor ( buttons[i-1][3]:GetText() ) );

            for k = 1 , #GRM_UI.GRM_ToolCoreFrame.MacroEntries do
                if GRM_UI.GRM_ToolCoreFrame.MacroEntries[k].name == name then
                    if GRM_UI.GRM_ToolCoreFrame.MacroEntries[k].isHighlighted then
                        buttons[i][1]:LockHighlight();
                    else
                        buttons[i][1]:UnlockHighlight();
                    end
                    break;
                end
            end

            if MouseOverButton == 0 and buttons[i][1]:IsMouseOver() then
                MouseOverButton = i;
            end
        end

        GRM.KickMacrodSetFirstValue();
        if MouseOverButton > 0 then
            GRM.UpdateMacrodTooltip ( MouseOverButton );
        end
    end
end

-- Method:          GRM.KickMacrodSetLastValue()
-- What it Does:    Sets the last value of the hybridscrollframe backups at position 16
-- Purpose:         Clean scrolling
GRM.KickMacrodSetLastValue = function()
    GRM.SetKickMacrodValues ( #GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset );
end

-- Method:          GRM.KickMacrodSetFirstValue()
-- What it Does:    Sets the first value of the hybridscrollframe backups at position 1
-- Purpose:         Clean scrolling
GRM.KickMacrodSetFirstValue = function()
    GRM.SetKickMacrodValues ( 1 , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset - #GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons + 1 );
end

-- Method:          GRM.UpdateMacrodTooltip()
-- What it Does:    Sets the tooltip for the Macrod scrollframe in the GRM kick tool
-- Purpose:         Make it clear the QoL controls.
GRM.UpdateMacrodTooltip = function ( ind )
    local playerName = GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[ind][2]:GetText();

    GRM_UI.SetTooltipScale();
    GameTooltip:SetOwner ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[ind][1] , "ANCHOR_CURSOR" );
    GameTooltip:AddLine ( playerName , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[ind][2]:GetTextColor() );

    GameTooltip:AddLine ( " " );    -- adds a small space between the lines
    GameTooltip:AddLine ( GRM.L ( "|CFFE6CC7FClick|r to Select for Removal" ) );
    GameTooltip:AddLine ( GRM.L ( "|CFFE6CC7FCtrl-Click|r to open Player Window" ) );
    GameTooltip:AddLine( GRM.L ( "|CFFE6CC7FCtrl-Shift-Click|r to Search the Log for Player" ) );
    GameTooltip:Show();
end

-- Method:          GRM.TriggerKickMacrodWindowRefresh()
-- What it Does:    Refreshes the GRM Kick Tool's Macrod window after hiding the tooltip
-- Purpose:         Prevent code bloat for something with repeated use.
GRM.TriggerKickMacrodWindowRefresh = function()
    GRM_UI.RestoreTooltipScale();
    GameTooltip:Hide();
    GRM.BuildMacrodScrollFrame ( true , true );
    GRM_UI.RefreshToolButtonsOnUpdate();
end

-- Method:          GRM.RemoveNamesFromMacroEntries()
-- what it Does:    Cleans up the macro as needed
-- Purpose:         UX features for easier use.
GRM.RemoveNamesFromMacroEntries = function ()
    for i = #GRM_UI.GRM_ToolCoreFrame.MacroEntries , 1 , - 1 do
        if GRM_UI.GRM_ToolCoreFrame.MacroEntries[i].isHighlighted then
            GRM_UI.GRM_ToolCoreFrame.MacroEntries[i].isHighlighted = false;
            table.insert ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.BlacklistedNames , GRM_UI.GRM_ToolCoreFrame.MacroEntries[i].name );        -- Add the name to the blacklist
            table.remove ( GRM_UI.GRM_ToolCoreFrame.MacroEntries , i );
        end
    end
    -- need to remove from qued as well.
    GRM.BuildMacrodScrollFrame ( false , false );
end

-- Method:          GRM.BuildMacrodScrollFrame( bool , bool )
-- What it Does:    Updates the Macrod scrollframe as needed
-- Purpose:         UX of the GRM mass kick tool
GRM.BuildMacrodScrollFrame = function ( showAll , fullRefresh )
    local hybridScrollFrameButtonCount = 13;
    local buttonHeight = 25;
    local scrollHeight = 0;
    local buttonWidth = GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrame:GetWidth() - 5;
    local count = 0;
    local size = 0;

    GRM.ResetToolMacrodHighlights();
    
    if ( showAll and fullRefresh ) or ( not showAll and not fullRefresh ) then
        GRM_UI.GRM_ToolCoreFrame.MacroEntries , count , size = GRM.GetMacroEntries();
    elseif not fullRefresh then
        GRM.CreateMacro ( "" , "GRM_Tool" , "INV_MISC_QUESTIONMARK" , "CTRL-SHIFT-K" );    -- Clear the macro
    end


    GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons or {};
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset = GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset or ( hybridScrollFrameButtonCount );

    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset < hybridScrollFrameButtonCount then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset = hybridScrollFrameButtonCount;
    elseif GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset > hybridScrollFrameButtonCount and GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset > #GRM_UI.GRM_ToolCoreFrame.MacroEntries then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset = #GRM_UI.GRM_ToolCoreFrame.MacroEntries;
    end

    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.MacroEntries do
        -- Build HybridScrollFrame Buttons
        if i <= hybridScrollFrameButtonCount then
            if not GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[i] then

                local button = CreateFrame ( "Button" , "MacrodButton1_" .. i , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[i] = {
                    button ,
                    button:CreateFontString ( "MacrodString1_" .. i , "OVERLAY" , "GameFontWhiteTiny" ),
                    button:CreateFontString ( "MacrodString2_" .. i , "OVERLAY" , "GameFontNormalTiny" )
                };

                button = GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[i][1];
                if i == 1 then
                    button:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame , "TOP" , 7 , 0 );
                else 
                    button:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[i-1][1] , "BOTTOMLEFT" , 0 , 0 );
                end

                -- button:SetHighlightTexture ( "Interface\\Buttons\\UI-Panel-Button-Highlight" );
                button:SetSize ( buttonWidth , buttonHeight );
                button:SetHighlightTexture ( "Interface\\Buttons\\UI-Panel-Button-Highlight" );
                GRM.BuildKickMacrodScrollButtons ( i  , false );
                
            end
        end

        if i >= ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset - hybridScrollFrameButtonCount + 1 ) and i <= GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset then
            GRM.SetKickMacrodValues ( i - ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset - hybridScrollFrameButtonCount ) , i );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[i - ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset - hybridScrollFrameButtonCount )][1]:Show();
        end
        
        -- Slider Height is controlled by tallying how many of these are necessary
        scrollHeight = scrollHeight + buttonHeight;
    end

    -- Hide unused buttons...
    for i = #GRM_UI.GRM_ToolCoreFrame.MacroEntries + 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons do
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[i][1]:Hide();
    end

    GRM.SetHybridScrollFrameSliderParameters ( 
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder, 
        buttonWidth , buttonHeight , scrollHeight , #GRM_UI.GRM_ToolCoreFrame.MacroEntries , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons , 
        GRM.KickMacrodHybridShiftDown , GRM.KickMacrodHybridShiftUp , hybridScrollFrameButtonCount
    );
    
    if #GRM_UI.GRM_ToolCoreFrame.MacroEntries > 13 then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder:Show();
    else
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder:Hide();
    end

    -- Macro text
    if #GRM_UI.GRM_ToolCoreFrame.MacroEntries > 0 then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText3:SetText ( GRM.L ( "Macro Size: {num}/255" , nil , nil , size ) );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText3:Show();
        if count == 1 then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText7:SetText ( GRM.L ( "Press the Hot-key 1 time to complete all actions" ) );
        elseif count > 1 then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText7:SetText ( GRM.L ( "Press the Hot-key {num} times to complete all actions" , nil , nil , count ) );
        end
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText7:Show();
    else
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText3:Hide();
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText7:Hide();
    end

    -- Permissions Text
    GRM_UI.RefreshToolPermissionReport();
    GRM.SetMacroButtonText();

end

-- Method:          GRM.ResetToolMacrodHighlights()
-- What it Does:    Unlocks all the highlights
-- Purpose:         GRM special tool UX
GRM.ResetToolMacrodHighlights = function()
    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons ~= nil then
        for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons do
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[i][1]:UnlockHighlight();
        end
    end

    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.MacroEntries do
        GRM_UI.GRM_ToolCoreFrame.MacroEntries[i].isHighlighted = false;
    end
end

-- Method:          GRM.BuildKickMacrodScrollButtons ( int , boolean )
-- What it Does:    Initiates the buttons and their values for each line of the Macrod window of the GRM kick tool's hybridscrollframe
-- Purpose:         Create a smooth scrolling experience in the GRM kick window
GRM.BuildKickMacrodScrollButtons = function ( ind , isResizeAction )
    local coreButton = GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[ind][1];
    local buttonText1 = GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[ind][2];
    local buttonText2 = GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[ind][3];

    -- Name
    buttonText1:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    buttonText2:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );

    -- Actions don't need to be run more than once.
    if not isResizeAction then

        buttonText1:SetPoint ( "LEFT" , coreButton , "LEFT" , 5 , 0 );
        buttonText1:SetJustifyH ( "LEFT" );
        buttonText1:SetWidth ( 146 )
        buttonText1:SetWordWrap ( false );

        buttonText2:SetPoint ( "LEFT" , buttonText1 , "RIGHT" , 5 , 0 );
        buttonText2:SetJustifyH ( "LEFT" );
        buttonText2:SetWidth ( 191 );
        buttonText2:SetWordWrap ( false );

        coreButton:EnableMouse ( true );
        coreButton:RegisterForDrag ( "LeftButton" );

        -- Setup draggable conditions
        coreButton:SetScript ( "OnDragStart" , function()
            GRM_UI.GRM_ToolCoreFrame:StartMoving();
        end);
        coreButton:SetScript ( "OnDragStop" , function()
            GRM_UI.GRM_ToolCoreFrame:StopMovingOrSizing();
            GRM_UI.SaveToolPosition();
        end);

        coreButton:SetScript ( "OnMouseDown" , function ( _ , button )
            local playerName = GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[ind][2]:GetText();
            if string.find ( playerName , "-" , 1 , true ) == nil then
                playerName = playerName .. "-" .. GRM_G.realmName;
            end
            if button == "LeftButton" then
                if IsShiftKeyDown() and IsControlKeyDown() then
                    GRM_UI.RestoreTooltipScale();
                    GameTooltip:Hide();
                    -- If Core GRM window is not open, let's open it!
                    if not GRM_UI.GRM_RosterChangeLogFrame:IsVisible() then
                        GRM_UI.GRM_RosterChangeLogFrame:Show();
                    end
                    GRM_UI.GRM_RosterChangeLogFrame.GRM_LogTab:Click();
                    GRM_UI.GRM_RosterChangeLogFrame.GRM_LogFrame.GRM_LogEditBox:SetText( GRM.SlimName ( playerName ) );
                elseif IsControlKeyDown() then
                    GRM.OpenPlayerWindow( playerName );
                else

                    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.MacroEntries do
                        if GRM_UI.GRM_ToolCoreFrame.MacroEntries[i].name == playerName then

                            if not GRM_UI.GRM_ToolCoreFrame.MacroEntries[i].isHighlighted then
                                GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[ind][1]:LockHighlight();
                                GRM_UI.GRM_ToolCoreFrame.MacroEntries[i].isHighlighted = true;
                            else
                                GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[ind][1]:UnlockHighlight();
                                GRM_UI.GRM_ToolCoreFrame.MacroEntries[i].isHighlighted = false;
                            end
                            GRM.SetMacroButtonText();

                            break;
                        end
                    end

                end
            end
        end);            

        coreButton:SetScript ( "OnEnter" , function ()
            GRM.UpdateMacrodTooltip( ind );
        end);

        coreButton:SetScript ( "OnLeave" , function()
            GRM_UI.RestoreTooltipScale();
            GameTooltip:Hide();
        end);

    end
end

-------------------------
-- Ignored List Window --
-------------------------

-- Method:          GRM.IsAnyIgnoredHighlighted()
-- What it Does:    It scans through the Ignored List and reports true if any are selected and the number of selected
-- Purpose:         To adjust the text statement of the button.
GRM.IsAnyIgnoredHighlighted = function()
    local result = false;
    local count = 0;

    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries do
        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[i].isHighlighted then
            count = count + 1;
            result = true;
        end
    end

    return result , count;
end

-- Method:          GRM.SetIgnoredButtonText()
-- What it Does:    Determines which text messages needs to be set to the Clear Ignored Text
-- Purpose:         UX quality of life.
GRM.SetIgnoredButtonText = function()
    local result , count = GRM.IsAnyIgnoredHighlighted();
    if result then
        if count > 1 then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText:SetText ( GRM.L ( "Click to remove selected names from Ignore List" ) );
        else
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText:SetText ( GRM.L ( "Click to remove selected name from Ignore List" ) );
        end
    else
        if #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries == 0 then
            -- there ARE players on the safe list, but they are currently being filtered out to only show those with active actions being filtered.
            local c = #( select ( 2 , GRM.GetSafePlayers ( true ) ) );
            if c > 0 and GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].ignoreFilter then
                if c > 1 then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText:SetText ( GRM.L ( "No players to select. {num} players filtered" , nil , nil , c ) );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText:SetText ( GRM.L ( "No players to select. 1 player filtered" ) );
                end
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText:SetText ( GRM.L ( "No players on Ignore List" ) );
            end
        else
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText:SetText ( GRM.L ( "No names selected to remove from Ignore List" ) );
        end
    end

    -- Count Visible
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText4:SetText( GRM.L ( "Ignored Players: {num}" , nil , nil , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries ) );
end

-- Method:          GRM.ResetIgnoredHighlights()
-- What it Does:    Unlocks all the highlights
-- Purpose:         GRM special tool UX
GRM.ResetIgnoredHighlights = function()
    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons ~= nil then
        for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons do
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[i][1]:UnlockHighlight();
        end
    end

    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries do
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[i].isHighlighted = false;
    end
end

-- Method:          GRM.GetIgnoredEntries ()
-- What it Does:    Determines which grouping to import
-- Purpose:         Proper sorting of players in the guild to be added to the GRM Tool
GRM.GetIgnoredEntries = function ()
    local result = {};
    if GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].ignoreFilter then
        result = GRM.GetOnlySafePlayersWithIgnoredAction();
    else
        result = select ( 2 , GRM.GetSafePlayers ( true ) );
        
        -- Now, see if we need to add a reason.
        for i = 1 , #GRM_UI.GRM_ToolCoreFrame.Safe do
            for j = 1 , #result do
                if result[j].name == GRM_UI.GRM_ToolCoreFrame.Safe[i].name then
                    result[j].reason = GRM_UI.GRM_ToolCoreFrame.Safe[i].reason;
                    break;
                end
            end
        end
    end   

    return result;
end

-- Method:          GRM.RemoveHighlightedPlayersFromIgnoredList()
-- What it Does:    Removes the highlights from the selected names, and sets them to no longer be ignored, and then rebuilds teh frames with that data.
-- Purpose:         Ability to manage ignore list in mass.
GRM.RemoveHighlightedPlayersFromIgnoredList = function ()
    local guildData = GRM_GuildMemberHistory_Save[ GRM_G.F ][ GRM_G.guildName ];
    local player;

    -- We need to scan and find all the entries, then find them in the guild
    for i = #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries , 1 , -1 do

        -- First check if it is highlighted
        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[i].isHighlighted then

            -- Now scan through the roster and update.
            player = guildData[ GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[i].name ];
            if player ~= nil then
                player.safeList = false;
                table.remove ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries , i );

                -- Rebuild the mouseover frame in case it is open
                if GRM_G.currentName == player.name and GRM_UI.GRM_MemberDetailMetaData:IsVisible() then
                    GRM.PopulateMemberDetails ( GRM_G.currentName );
                end
            end
        end
    end

    -- Unlock the highlights now.
    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons ~= nil then
        for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons do
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[i][1]:UnlockHighlight();
        end
    end

    GRM.TriggerKickQueuedWindowRefresh();
    GRM.TriggerIgnoredQueuedWindowRefresh();
    GRM.SetIgnoredButtonText();
end

-- Method:          GRM.ClearAllPlayersFromIgnoreList()
-- What it Does:    Removes all players from the ignore list
-- Purpose:         Ease of allowing the player to easily remove all from the ignore list.
GRM.ClearAllPlayersFromIgnoreList = function()
    local guildData = GRM_GuildMemberHistory_Save[ GRM_G.F ][ GRM_G.guildName ];
    local count = 0;

    for _ , player in pairs ( guildData ) do
        if type ( player ) == "table" then
            if player.safeList then
                player.safeList = false;
                count = count + 1;
            end
        end
    end

    if count > 0 then
        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons ~= nil then
            for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons do
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[i][1]:UnlockHighlight();
            end
        end

        GRM.TriggerKickQueuedWindowRefresh();
        GRM.TriggerIgnoredQueuedWindowRefresh();
        GRM.SetIgnoredButtonText();

        if count == 1 then
            GRM.Report ( GRM.L ( "{num} player was removed from Ignore List" , nil , nil , "1" ) );
        else
            GRM.Report ( GRM.L ( "{num} players removed from the Ignored List" , nil , nil , count ) );
        end
        
        if GRM_UI.GRM_MemberDetailMetaData:IsVisible() then
            GRM_UI.GRM_MemberDetailMetaData.GRM_SafeFromRulesCheckButton:SetChecked ( false );
        end
    end
end

-- Method:          GRM.GetNumIgnored()
-- What it Does:    Returns the count of total ignored people
-- Purpose:         To determine the number ignored for UI purposes.
GRM.GetNumIgnored = function()
    local guildData = GRM_GuildMemberHistory_Save[ GRM_G.F ][ GRM_G.guildName ];
    local count = 0;

    for _ , player in pairs ( guildData ) do
        if type ( player ) == "table" then
            if player.safeList then
                count = count + 1;
            end
        end
    end

    return count;
end

-- Method:          GRM.IsAnyIgnored()
-- What it Does:    Returns true if at least one can be ignored - easy check rather than relying on a full count
-- Purpose:         UX
GRM.IsAnyIgnored = function()
    local guildData = GRM_GuildMemberHistory_Save[ GRM_G.F ][ GRM_G.guildName ];
    local result = false;

    for _ , player in pairs ( guildData ) do
        if type ( player ) == "table" then
            if player.safeList then
                result = true;
                break;
            end
        end
    end

    return result;
end

-- Method:          GRM.GetOnlySafePlayersWithIgnoredAction()
-- What it Does:    Returns the list of players in a proper format for compatibility
-- Purpose:         Transition these useful lists to the ignored window frames, more for programming ease.
GRM.GetOnlySafePlayersWithIgnoredAction = function ()
    local result = {};
    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.Safe do
        result[i] = {};
        result[i].name = GRM_UI.GRM_ToolCoreFrame.Safe[i].name;
        result[i].class = GRM_UI.GRM_ToolCoreFrame.Safe[i].class;
        result[i].isHighlighted = false;
        result[i].reason = GRM_UI.GRM_ToolCoreFrame.Safe[i].reason;
        result[i].rankIndex = GRM_UI.GRM_ToolCoreFrame.Safe[i].rankIndex;
        result[i].lastOnline = GRM_UI.GRM_ToolCoreFrame.Safe[i].lastOnline;
    end
    return result;
end

-- Method:          GRM.SetIgnoredValues ( int , int )
-- What it Does:    Builds the values of the given line in the window
-- Purpose:         Quality of life feature.
GRM.SetIgnoredValues = function ( ind , ind2 )
    local line = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[ind];
    local colors = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[ind2].class;
    -- Player Name
    line[2]:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[ind2].name );
    line[2]:SetTextColor ( colors[1] , colors[2] , colors[3] , 1 );
    if #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[ind2].reason > 0 then
        line[3]:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[ind2].reason );
        line[3]:SetTextColor ( 1.0 , 0.84 , 0 , 1 );
    else
        line[3]:SetText ( "None" );
        line[3]:SetTextColor ( 0 , 0.77 , 0.063 , 1 );
    end

    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[ind2].isHighlighted then
        line[1]:LockHighlight();
    else
        line[1]:UnlockHighlight();
    end

    -- Update the tooltip if underlying data changes
    if GameTooltip:IsVisible() and GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[ind][1]:IsMouseOver() then 
        GRM.UpdateIgnoredToolTip ( ind );
    end
end

-- Method:          GRM.IgnoredHybridShiftDown()
-- What it Does:    Shifts all the values DOWN one line to give the illusion of scrolling when in reality this is just a hybrid scrollframe
-- Purpose:         Clean scrolling
GRM.IgnoredHybridShiftDown = function()
    if #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries > 12 then
        local buttons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons;
        local MouseOverButton = 0;
        local name = "";

        -- Shift them down...
        for i = 1 , #buttons - 1 do
            name = buttons[i+1][2]:GetText();

            -- Header Line
            buttons[i][2]:SetText( name );
            buttons[i][2]:SetTextColor ( buttons[i+1][2]:GetTextColor ( buttons[i+1][3]:GetText() ) );
            buttons[i][3]:SetText( buttons[i+1][3]:GetText() );
            buttons[i][3]:SetTextColor ( buttons[i+1][3]:GetTextColor ( buttons[i+1][3]:GetText() ) );

            for k = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries do
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[k].name == name then
                    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[k].isHighlighted then
                        buttons[i][1]:LockHighlight();
                    else
                        buttons[i][1]:UnlockHighlight();
                    end
                    break;
                end
            end

            if MouseOverButton == 0 and buttons[i][1]:IsMouseOver() then
                MouseOverButton = i;
            end
        end

        GRM.IgnoredSetLastValue();
        if MouseOverButton > 0 then
            GRM.UpdateIgnoredToolTip ( MouseOverButton );
        end
    end
end

-- Method:          GRM.IgnoredHybridShiftUp()
-- What it Does:    Shifts all the values up one line to give the illusion of scrolling when in reality this is just a hybrid scrollframe
-- Purpose:         Clean scrolling
GRM.IgnoredHybridShiftUp = function()
    if #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries > 12 then
        local buttons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons;
        local MouseOverButton = 0;
        local name = "";

        for i = #buttons , 2 , -1 do
            name = buttons[i-1][2]:GetText();

            buttons[i][2]:SetText( buttons[i-1][2]:GetText() );
            buttons[i][2]:SetTextColor ( buttons[i-1][2]:GetTextColor ( buttons[i-1][2]:GetText() ) );
            buttons[i][3]:SetText( buttons[i-1][3]:GetText() );
            buttons[i][3]:SetTextColor ( buttons[i-1][3]:GetTextColor ( buttons[i-1][3]:GetText() ) );

            for k = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries do
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[k].name == name then
                    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[k].isHighlighted then
                        buttons[i][1]:LockHighlight();
                    else
                        buttons[i][1]:UnlockHighlight();
                    end
                    break;
                end
            end

            if MouseOverButton == 0 and buttons[i][1]:IsMouseOver() then
                MouseOverButton = i;
            end
        end

        GRM.IgnoredSetFirstValue();
        if MouseOverButton > 0 then
            GRM.UpdateIgnoredToolTip ( MouseOverButton );
        end
    end
end

-- Method:          GRM.IgnoredSetLastValue()
-- What it Does:    Sets the last value of the hybridscrollframe
-- Purpose:         Clean scrolling
GRM.IgnoredSetLastValue = function()
    GRM.SetIgnoredValues ( #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset );
end

-- Method:          GRM.IgnoredSetFirstValue()
-- What it Does:    Sets the first value of the hybridscrollframe
-- Purpose:         Clean scrolling
GRM.IgnoredSetFirstValue = function()
    GRM.SetIgnoredValues ( 1 , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset - #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons + 1 );
end

-- Method:          GRM.UpdateQueuedTooltip()
-- What it Does:    Sets the tooltip for the Queued scrollframe in the GRM kick tool
-- Purpose:         Make it clear the QoL controls.
GRM.UpdateIgnoredToolTip = function ( ind )

    local playerName = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[ind][2]:GetText();
    local reason = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[ind][3]:GetText();
    local lastOnline = "";
    local atLeastOne = false;
    local rankRestrictText = "";
    local index;

    GRM_UI.SetTooltipScale();
    GameTooltip:SetOwner ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[ind][1] , "ANCHOR_CURSOR" );
    GameTooltip:AddLine ( playerName , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[ind][2]:GetTextColor() );

    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries do
        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[i].name == playerName then
            index = i;
            if GRM_G.playerRankID >= GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[i].rankIndex then
                rankRestrictText = GRM.GetReasonIgnoredMsg ( GRM_G.playerRankID , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[i].rankIndex );
            end
            break;
        end
    end

    if string.find ( reason , GRM.L ( "Kick" ) , 1 , true ) then
        atLeastOne = true;
        
        if index ~= nil then
            lastOnline = GRM.HoursReport ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[index].lastOnline );
            GameTooltip:AddLine ( GRM.L ( "Last Online" ) );
            GameTooltip:AddLine ( lastOnline , 1 , 1 , 1 );
        end
    end

    if string.find ( reason , GRM.L ( "Promote" ) , 1 , true ) then
        atLeastOne = true;
    end

    if string.find ( reason , GRM.L ( "Demote" ) , 1 , true ) then
        atLeastOne = true;
    end

    if not atLeastOne then
        GameTooltip:AddLine ( GRM.L ( "Action" ) );
        GameTooltip:AddLine ( GRM.L ( "None" ) , 0 , 0.77 , 0.063 );
    end

    if rankRestrictText ~= "" then
        GameTooltip:AddLine ( rankRestrictText , 1 , 0 , 0 );
    end
    
    GameTooltip:AddLine ( " " );    -- adds a small space between the lines
    GameTooltip:AddLine ( GRM.L ( "|CFFE6CC7FClick|r to Select for Removal" ) );
    GameTooltip:AddLine ( GRM.L ( "|CFFE6CC7FCtrl-Click|r to open Player Window" ) );
    GameTooltip:AddLine( GRM.L ( "|CFFE6CC7FCtrl-Shift-Click|r to Search the Log for Player" ) );
    GameTooltip:Show();

end

-- Method:          GRM.TriggerIgnoredQueuedWindowRefresh()
-- What it Does:    Refreshes the GRM Tool's Ignored window after hiding the tooltip
-- Purpose:         Prevent code bloat for something with repeated use.
GRM.TriggerIgnoredQueuedWindowRefresh = function()
    GRM_UI.RestoreTooltipScale();
    GameTooltip:Hide();
    
    if GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].ignoreFilter then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreCheckButton:SetChecked( true );
    end        

    GRM.BuildIgnoredScrollFrame ( true , true );
    GRM.SetIgnoredButtonText();
    GRM_UI.RefreshToolButtonsOnUpdate();
end

-- Method:          GRM.BuildIgnoredScrollFrame( bool , bool )
-- What it Does:    Updates the Ignored scrollframe as needed
-- Purpose:         UX of the GRM mass kick tool
GRM.BuildIgnoredScrollFrame = function ( showAll , fullRefresh )
    local hybridScrollFrameButtonCount = 12;
    local buttonHeight = 25;
    local scrollHeight = 0;
    local buttonWidth = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrame:GetWidth() - 5;

    GRM.ResetIgnoredHighlights();

    if showAll and fullRefresh then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries = GRM.GetIgnoredEntries ();
    end

    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons or {};
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset or ( hybridScrollFrameButtonCount );

    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset < hybridScrollFrameButtonCount then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset = hybridScrollFrameButtonCount;
    elseif GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset > hybridScrollFrameButtonCount and GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset > #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset = #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries;
    end

    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries do
        -- Build HybridScrollFrame Buttons
        if i <= hybridScrollFrameButtonCount then
            if not GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[i] then

                local button = CreateFrame ( "Button" , "IgnoredButton1_" .. i , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[i] = {
                    button ,
                    button:CreateFontString ( "IgnoredString1_" .. i , "OVERLAY" , "GameFontWhiteTiny" ),
                    button:CreateFontString ( "IgnoredString2_" .. i , "OVERLAY" , "GameFontWhiteTiny" )
                };

                button = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[i][1];
                if i == 1 then
                    button:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame , "TOP" , 7 , 0 );
                else 
                    button:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[i-1][1] , "BOTTOMLEFT" , 0 , 0 );
                end

                button:SetHighlightTexture ( "Interface\\Buttons\\UI-Panel-Button-Highlight" );
                button:SetSize ( buttonWidth , buttonHeight );
                GRM.BuildIgnoredScrollButtons ( i  , false );
                
            end
        end

        if i >= ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset - hybridScrollFrameButtonCount + 1 ) and i <= GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset then
            GRM.SetIgnoredValues ( i - ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset - hybridScrollFrameButtonCount ) , i );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[i - ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset - hybridScrollFrameButtonCount )][1]:Show();
        end
        
        -- Slider Height is controlled by tallying how many of these are necessary
        scrollHeight = scrollHeight + buttonHeight;
    end

    -- Hide unused buttons...
    for i = #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries + 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons do
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[i][1]:Hide();
    end

    GRM.SetHybridScrollFrameSliderParameters ( 
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder, 
        buttonWidth , buttonHeight , scrollHeight , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons , 
        GRM.IgnoredHybridShiftDown , GRM.IgnoredHybridShiftUp , hybridScrollFrameButtonCount
    );

    if #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries > 12 then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder:Show();
    else
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder:Hide();
    end

end

-- Method:          GRM.BuildIgnoredScrollButtons ( int , boolean )
-- What it Does:    Initiates the buttons and their values for each line of the Ignored List window
-- Purpose:         Create a smooth scrolling experience in the GRM Ignored window
GRM.BuildIgnoredScrollButtons = function ( ind , isResizeAction )
    local coreButton = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[ind][1];
    local buttonText1 = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[ind][2];
    local buttonText2 = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[ind][3];

    -- Name
    buttonText1:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    buttonText2:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );

    -- Actions don't need to be run more than once.
    if not isResizeAction then

        buttonText1:SetPoint ( "LEFT" , coreButton , "LEFT" , 5 , 0 );
        buttonText1:SetJustifyH ( "LEFT" );
        buttonText1:SetWidth ( 135 )
        buttonText1:SetWordWrap ( false );

        buttonText2:SetPoint ( "LEFT" , buttonText1 , "RIGHT" , 5 , 0 );
        buttonText2:SetJustifyH ( "CENTER" );
        buttonText2:SetWidth ( 101 )
        buttonText2:SetWordWrap ( false );

        coreButton:EnableMouse ( true );
        coreButton:RegisterForDrag ( "LeftButton" );

        -- Setup draggable conditions
        coreButton:SetScript ( "OnDragStart" , function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:StartMoving();
        end);
        coreButton:SetScript ( "OnDragStop" , function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:StopMovingOrSizing();
        end);

        coreButton:SetScript ( "OnMouseDown" , function ( _ , button )
            local playerName = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[ind][2]:GetText();
            if button == "LeftButton" then
                if IsShiftKeyDown() and IsControlKeyDown() then
                    GRM_UI.RestoreTooltipScale();
                    GameTooltip:Hide();
                    -- If Core GRM window is not open, let's open it!
                    if not GRM_UI.GRM_RosterChangeLogFrame:IsVisible() then
                        GRM_UI.GRM_RosterChangeLogFrame:Show();
                    end
                    GRM_UI.GRM_RosterChangeLogFrame.GRM_LogTab:Click();
                    GRM_UI.GRM_RosterChangeLogFrame.GRM_LogFrame.GRM_LogEditBox:SetText( GRM.SlimName ( playerName ) );
                elseif IsControlKeyDown() then
                    GRM.OpenPlayerWindow( playerName );
                else
                    -- Deal with the highlights!
                    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries do
                        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[i].name == playerName then

                            if not GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[i].isHighlighted then
                                GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[ind][1]:LockHighlight();
                                GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[i].isHighlighted = true;
                            else
                                GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[ind][1]:UnlockHighlight();
                                GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[i].isHighlighted = false;
                            end
                            GRM.SetIgnoredButtonText();

                            break;
                        end
                    end

                end
            end
        end);            

        coreButton:SetScript ( "OnEnter" , function ()
            GRM.UpdateIgnoredToolTip( ind );
        end);

        coreButton:SetScript ( "OnLeave" , function()
            GRM_UI.RestoreTooltipScale();
            GameTooltip:Hide();
        end);
    end
end


-----------------------------------
--------- RULES SCROLLFRAME -------
-----------------------------------

-- Method:          GRM.GetKickRulesCount()
-- What it Does:    Returns the number of rules that already exist
-- purpose:         So it can be determined with rule number is being added
GRM.GetKickRulesCount = function()
    local count = 0;

    for _ in pairs ( GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].kickRules ) do
        count = count + 1;
    end

    return count;
end

-- Method:          GRM.RemoveKickRule()
-- What it Does:    Removes the named kick Rule
-- Purpose:         Ability to purge rules no longer needed.
GRM.RemoveKickRule = function( name )
    GRM.AdjustKickRuleNumbers ( name , GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser]["kickRules"][name].ruleNumber );
    GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser]["kickRules"][name] = nil;
    GRM_UI.FullMacroToolRefresh();
end

-- Method:          GRM.RemoveRuleButtonLogic ( string , string )
-- What it Does:    Removes the given rule
-- Purpose:         Control over adding and removing rules.
GRM.RemoveRuleButtonLogic = function ( ruleType , name )
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:Hide();
    GRM.AdjustKickRuleNumbers ( name , GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser][ruleType][name].ruleNumber );
    GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser][ruleType][name] = nil;
    GRM_UI.FullMacroToolRefresh();
end

-- Method:          GRM.AdjustKickRuleNumbers ( string , int )
-- What it Does:    Adjusts the given rule number
GRM.AdjustKickRuleNumbers = function ( name , number )
    for ruleName , rule in pairs ( GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].kickRules ) do
        if ruleName ~= name and rule.ruleNumber > number then
            rule.ruleNumber = rule.ruleNumber - 1;
        end
    end
end

-- Method:          GRM.GetKickRule()
-- What it Does:    Returns the given rule by name
-- Purpose:         To easily be able to edit the existing rule
GRM.GetKickRule = function ( name )
    return GRM.DeepCopyArray ( GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser]["kickRules"][name] );
end

-- Method:          GRM.ChangeRuleName ( string , string , string )
-- What it Does:    Copies the old rule and sets the new one.
-- Purpose:         Allow the editing of the rule names
GRM.ChangeRuleName = function ( ruleType , newName , oldName )
    GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser][ruleType][newName] = GRM.DeepCopyArray ( GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser][ruleType][oldName] );
    GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser][ruleType][newName].name = newName;
    GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser][ruleType][oldName] = nil;
end

-- Method:          GRM.BuildNewKickRuleTemplate( string , int )
-- What it Does:    Creates a new rules template to be added on confirmation
-- Purpose:         To easily add new rules.
GRM.BuildNewKickRuleTemplate = function( name , num )
    local ruleNumber = num or GRM.GetKickRulesCount() + 1;
    local ruleName = "";
    local nameSet = false;

    if name ~= nil then
        ruleName = name;
    else
        while not nameSet do
            ruleName = GRM.L ( "Kick Rule {num}" , nil , nil , ruleNumber );
            if GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser]["kickRules"][ruleName] ~= nil then
                ruleNumber = ruleNumber + 1;
            else
                nameSet = true;
            end
        end
    end
    local result = {};

    result.name = ruleName
    result.isEnabled = true;

    result.activityFilter = true;
    result.isMonths = true;
    result.numDaysOrMonths = 12;
    result.allAltsApplyToKick = true;

    result.rankFilter = false;
    result.ranks = {};

    result.levelFilter = false;
    result.levelRange = { 1 , 999 };

    result.classFilter = false;
    result.classes = {};

    result.raceFilter = false;
    result.races = {};

    result.noteMatch = false;
    result.notesToCheck = { true , true , true };   -- Officer, Public, Custom
    result.matchingString = "";
    result.ruleNumber = GRM.GetKickRulesCount() + 1;

    return result , ruleName;
end

-- Method:          GRM.IsAnyInTableEnabled ( table )
-- What it Does:    Takes a boolean 1D array and returns true as long as one value in the array is true
-- Purpose:         Universal use for multi table checks on the custom rules window
GRM.IsAnyInTableEnabled = function( givenTable )
    for i = 1 , #givenTable do
        if givenTable[i] then
            return true;
        end
    end

    return false;
end

-- Method:          GRM.AreAllEnabled( table )
-- What it Does:    If any of the results are NOT enabled it returns false
-- Purpose:         UX controls for the custom rules
GRM.AreAllEnabled = function ( givenTable )
    for i = 1 , #givenTable do
        if not givenTable[i] then
            return false;
        end
    end

    return true;
end

GRM.IsRuleReady = function()
    local result = true;

    -- Name must be valid
    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.name == "" then
        result = false;
        GRM.Report ( GRM.L ( "Please Set a Name for this Rule. It can be 1 to 25 characters in length." ) );
    end
    -- Rank filter rule check
    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankFilter then
        if GRM.IsAnyInTableEnabled( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.ranks ) then
            if GRM.AreAllEnabled ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.ranks ) then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankFilter = false;      -- No need to set the rank filter as enabled if all ranks are being checked.
            end
        else
            result = false;
            GRM.Report ( GRM.L ( "Please select at least 1 RANK to apply this rule to." ) );
        end
    end

    if result then

        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelFilter then
            if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelRange[1] == 1 and GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelRange[2] == 999 then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelFilter = false;     -- No need to check a range if it already fits the range.
            end
        end

        -- If no string is set just disable this feature.
        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.noteMatch and GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.matchingString == "" then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.noteMatch = false;
        end

    end

    return result;
end

-- Method:          GRM.GetRuleEntries ( int )
-- What it Does:    Determines which rule grouping to import
-- Purpose:         Proper sorting of players in the guild to be added to the mass kick tool
GRM.GetRuleEntries = function ( ruleType )
    local result = {};
    local tempTable = {};

    if ruleType == 1 then
        tempTable = GRM.DeepCopyArray ( GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].kickRules );
    elseif ruleType == 2 then
        tempTable = GRM.DeepCopyArray ( GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].promoteRules );
    elseif ruleType == 3 then
        tempTable = GRM.DeepCopyArray ( GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].demoteRules );
    end

    for _ , rule in pairs ( tempTable ) do
        table.insert ( result , rule );
    end
    sort ( result , function ( a , b ) return a.ruleNumber < b.ruleNumber end );

    return result;
end

-- Method:          GRM.ClearRuleHighlights()
-- What it Does:    Clears the highlights when loading and refreshing the rules each time it is edited.
-- Purpose:         Clean UX
GRM.ClearRuleHighlights = function()
    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons do
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i][3] = false;
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i][1]:UnlockHighlight();
    end
end

-- Method:          GRM.ClearRuleHighlightsButGiven ( frame )
-- What it Does:    Clears the highlights of all the buttons that were NOT clicked
-- Purpose:         Clean UX
GRM.ClearRuleHighlightsButGiven = function( button )
    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons do
        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i][1] ~= button then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i][3] = false;
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i][1]:UnlockHighlight();
        else
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i][3] = true;
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i][1]:LockHighlight();
        end
    end
end

-- Method:          GRM.IsRuleHighlighted()
-- What it Does:    Returns true if any of the rules are highlighted
-- purpose:         UX controls
GRM.IsRuleHighlighted = function()
    local result = false;
    local ruleName = "";

    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons do
        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i][3] then
            ruleName = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i][2]:GetText();
            result = true;
            break;
        end
    end

    return result , ruleName;
end

-- Method:          GRM.BuildRuleButtons ( int , boolean , int )
-- What it Does:    Initiates the buttons and their values for each line of the Rules window of the GRM macro tool's hybridscrollframe
-- Purpose:         Create a smooth scrolling experience in the GRM macro tool window
GRM.BuildRuleButtons = function ( ind , isResizeAction , buttonWidth )
    local coreButton = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[ind][1];
    local buttonText1 = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[ind][2];
    local checkButton = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[ind][4];

    buttonText1:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 14 );

    -- Actions don't need to be run more than once.
    if not isResizeAction then

        checkButton:SetPoint ( "LEFT" , coreButton , "LEFT" , 5 , 0 );
        checkButton:SetHitRectInsets ( 0 , 0 , 0 , 0 );

        buttonText1:SetPoint ( "LEFT" , checkButton , "RIGHT" , 5 , 0 );
        buttonText1:SetJustifyH ( "LEFT" );
        buttonText1:SetWidth ( buttonWidth - 35 )
        buttonText1:SetWordWrap ( false );
        
        coreButton:EnableMouse ( true );
        coreButton:RegisterForDrag ( "LeftButton" );

        -- Setup draggable conditions
        coreButton:SetScript ( "OnDragStart" , function()
            GRM_UI.GRM_ToolCoreFrame:StartMoving();
        end);
        coreButton:SetScript ( "OnDragStop" , function()
            GRM_UI.GRM_ToolCoreFrame:StopMovingOrSizing();
            GRM_UI.SaveToolPosition();
        end);

        coreButton:SetScript ( "OnMouseDown" , function ( self , button )
            local ruleName = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[ind][2]:GetText();
            if button == "RightButton" then

                -- Set the Button Logic
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1:SetScript ( "OnClick" , function()
                    GRM_UI.ConfigureCustomRuleKickFrame ( true , ruleName );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:Show();
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:Hide();
                end);
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2:SetScript ( "OnClick" , function()
                    GRM.RemoveRuleButtonLogic ( GRM.ruleTypeEnum[GRM_UI.GRM_ToolCoreFrame.TabPosition] , ruleName );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:Hide();
                    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:IsVisible() and GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.name == ruleName then
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:Hide();
                    end
                end);

                GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:ClearAllPoints();
                GRM.ClearRuleHighlightsButGiven ( self );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:SetPoint ( "BOTTOMRIGHT" , self , "TOPLEFT" , 0 , -2 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1.GRM_ContextButton1Text:SetText ( GRM.L ( "Edit" ) );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2.GRM_ContextButton2Text:SetText ( GRM.L ( "Remove" ) );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:Show();
                GRM_UI.RestoreTooltipScale();
                GameTooltip:Hide();
            end
        end);            

        coreButton:SetScript ( "OnEnter" , function ()
            GRM.UpdateRulesTooltip( ind );
        end);

        coreButton:SetScript ( "OnLeave" , function()
            GRM_UI.RestoreTooltipScale();
            GameTooltip:Hide();
        end);

        local refreshTooltip = function( anchor )
            GRM_UI.SetTooltipScale();
            GameTooltip:SetOwner ( anchor , "ANCHOR_CURSOR" );

            if anchor:GetChecked() then
                GameTooltip:AddLine( GRM.L ( "|CFFE6CC7FLeft-Click|r to Disable Rule" ) );
            else
                GameTooltip:AddLine( GRM.L ( "|CFFE6CC7FLeft-Click|r to Enable Rule" ) );
            end
            GameTooltip:Show();
        end

        checkButton:SetScript ( "OnClick" , function( self , button )
            if button == "LeftButton" then
                local ruleName = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[ind][2]:GetText();
                if self:GetChecked() then
                    GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser][GRM.ruleTypeEnum[GRM_UI.GRM_ToolCoreFrame.TabPosition]][ruleName].isEnabled = true;
                    refreshTooltip( self );
                else
                    GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser][GRM.ruleTypeEnum[GRM_UI.GRM_ToolCoreFrame.TabPosition]][ruleName].isEnabled = false;
                    refreshTooltip( self );
                end
                GRM_UI.FullMacroToolRefresh();
            end
        end);

        checkButton:SetScript ( "OnEnter" , function ( self )
            refreshTooltip( self );
        end);

        checkButton:SetScript ( "OnLeave" , function()
            GRM_UI.RestoreTooltipScale();
            GameTooltip:Hide();
        end);

    end
end

-- Method:          GRM.BuildRulesScrollFrame( bool , bool )
-- What it Does:    Updates the Rules scrollframe as needed
-- Purpose:         UX of the GRM mass kick tool
GRM.BuildRulesScrollFrame = function ( showAll , fullRefresh )
    local hybridScrollFrameButtonCount = 8;
    local buttonHeight = 22;
    local scrollHeight = 0;
    local buttonWidth = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrame:GetWidth() - 5;

    if showAll and fullRefresh then
        GRM_UI.GRM_ToolCoreFrame.RuleEntries = GRM.GetRuleEntries ( GRM_UI.GRM_ToolCoreFrame.TabPosition );
    end

    GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons or {};
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset or ( hybridScrollFrameButtonCount );

    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset < hybridScrollFrameButtonCount then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset = hybridScrollFrameButtonCount;
    elseif GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset > hybridScrollFrameButtonCount and GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset > #GRM_UI.GRM_ToolCoreFrame.RuleEntries then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset = #GRM_UI.GRM_ToolCoreFrame.RuleEntries;
    end

    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.RuleEntries do
        -- Build HybridScrollFrame Buttons
        if i <= hybridScrollFrameButtonCount then
            if not GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i] then

                local button = CreateFrame ( "Button" , "RuleButton" .. i , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame );
                local checkButton = CreateFrame ( "Checkbutton" , "RuleCheckButton" , button , "OptionsSmallCheckButtonTemplate" );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i] = {
                    button ,
                    button:CreateFontString ( "RuleButton" .. i .. "Text" , "OVERLAY" , "GameFontWhiteTiny" ),
                    false,
                    checkButton
                };

                button = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i][1];
                if i == 1 then
                    button:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame , "TOP" , 7 , 0 );
                else 
                    button:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i-1][1] , "BOTTOMLEFT" , 0 , 0 );
                end

                button:SetHighlightTexture ( "Interface\\Buttons\\UI-Panel-Button-Highlight" );
                button:SetSize ( buttonWidth , buttonHeight );
                GRM.BuildRuleButtons ( i  , false , buttonWidth );
                
            end
        end

        if i >= ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset - hybridScrollFrameButtonCount + 1 ) and i <= GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset then
            GRM.SetRuleValues ( i - ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset - hybridScrollFrameButtonCount ) , i );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i - ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset - hybridScrollFrameButtonCount )][1]:Show();
        end
        
        -- Slider Height is controlled by tallying how many of these are necessary
        scrollHeight = scrollHeight + buttonHeight;
    end

    -- Hide unused buttons...
    for i = #GRM_UI.GRM_ToolCoreFrame.RuleEntries + 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons do
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i][1]:Hide();
    end

    GRM.SetHybridScrollFrameSliderParameters ( 
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder, 
        buttonWidth , buttonHeight , scrollHeight , #GRM_UI.GRM_ToolCoreFrame.RuleEntries , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons , 
        GRM.KickRulesHybridShiftDown , GRM.KickRulesHybridShiftUp , hybridScrollFrameButtonCount
    );

    if #GRM_UI.GRM_ToolCoreFrame.RuleEntries > 8 then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder:Show();
    else
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder:Hide();
    end

    GRM.ClearRuleHighlights();

end

-- Method:          GRM.SetRuleValues ( int , int )
-- What it Does:    Builds the values of the given line in the window
-- Purpose:         Quality of life feature.
GRM.SetRuleValues = function ( ind , ind2 )
    local line = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[ind];

    -- Player Name
    line[2]:SetText ( GRM_UI.GRM_ToolCoreFrame.RuleEntries[ind2].name );
    if GRM_UI.GRM_ToolCoreFrame.RuleEntries[ind2].isEnabled then
        line[4]:SetChecked ( true );
    else
        line[4]:SetChecked ( false );
    end

    -- Update the tooltip if underlying data changes
    if GameTooltip:IsVisible() and GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[ind][1]:IsMouseOver() then 
        GRM.UpdateRulesTooltip ( ind );
    end
end

-- Method:          GRM.KickRulesHybridShiftDown()
-- What it Does:    Shifts all the values DOWN one line to give the illusion of scrolling when in reality this is just a hybrid scrollframe
-- Purpose:         Clean scrolling
GRM.KickRulesHybridShiftDown = function()
    if #GRM_UI.GRM_ToolCoreFrame.RuleEntries > 8 then
        local buttons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons;
        local MouseOverButton = 0;

        -- Shift them down...
        for i = 1 , #buttons - 1 do

            -- Header Line
            buttons[i][2]:SetText( buttons[i+1][2]:GetText() );
            buttons[i][4]:SetChecked ( buttons[i+1][4]:GetChecked() );

            if MouseOverButton == 0 and buttons[i][1]:IsMouseOver() then
                MouseOverButton = i;
            end
        end

        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:IsVisible() then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:Hide();
            GRM.ClearRuleHighlights();
        end

        GRM.KickRulesSetLastValue();
        if MouseOverButton > 0 then
            GRM.UpdateRulesTooltip ( MouseOverButton );
        end
    end
end

-- Method:          GRM.KickRulesHybridShiftUp()
-- What it Does:    Shifts all the values up one line to give the illusion of scrolling when in reality this is just a hybrid scrollframe
-- Purpose:         Clean scrolling
GRM.KickRulesHybridShiftUp = function()
    if #GRM_UI.GRM_ToolCoreFrame.RuleEntries > 8 then
        local buttons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons;
        local MouseOverButton = 0;

        for i = #buttons , 2 , -1 do

            buttons[i][2]:SetText( buttons[i-1][2]:GetText() );
            buttons[i][4]:SetChecked( buttons[i-1][4]:GetChecked() );

            if MouseOverButton == 0 and buttons[i][1]:IsMouseOver() then
                MouseOverButton = i;
            end
        end

        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:IsVisible() then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:Hide();
            GRM.ClearRuleHighlights();
        end

        GRM.KickRulesSetFirstValue();
        if MouseOverButton > 0 then
            GRM.UpdateRulesTooltip ( MouseOverButton );
        end
    end
end

-- Method:          GRM.KickRulesSetLastValue()
-- What it Does:    Sets the last value of the hybridscrollframe backups at position 16
-- Purpose:         Clean scrolling
GRM.KickRulesSetLastValue = function()
    GRM.SetRuleValues ( #GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset );
end

-- Method:          GRM.KickRulesSetFirstValue()
-- What it Does:    Sets the first value of the hybridscrollframe backups at position 1
-- Purpose:         Clean scrolling
GRM.KickRulesSetFirstValue = function()
    GRM.SetRuleValues ( 1 , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset - #GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons + 1 );
end

-- Method:          GRM.GetRanksIncludedInFilter ( table )
-- What it Does:    Returns the name of all the ranks currently being filtered
-- Purpose:         Custom rule UX controls.
GRM.GetRanksIncludedInFilter = function( listOfRanks )
    local namedRanks = {};
    local num = 1;

    -- Don't need to include Guild Leader rank
    for i = GuildControlGetNumRanks() , 2 , -1 do
        if listOfRanks[num] then
            table.insert ( namedRanks , GuildControlGetRankName ( i ) );
        end
        num = num + 1;
    end

    return namedRanks;
end

-- Method:          GRM.UpdateRulesTooltip()
-- What it Does:    Sets the tooltip for the Queued scrollframe in the GRM kick tool
-- Purpose:         Make it clear the QoL controls.
GRM.UpdateRulesTooltip = function ( ind )
    local kickRuleName = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[ind][2]:GetText();
    local rule = GRM.GetKickRule ( kickRuleName );
    local c = {};
    c.E = { 0 , 0.77 , 0.063 }; -- enabled
    c.D = { 1 , 0 , 0 };        -- disabled

    GRM_UI.SetTooltipScale();
    GameTooltip:SetOwner ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[ind][1] , "ANCHOR_CURSOR" );
    GameTooltip:AddLine ( "|CFFE6CC7F" .. GRM.L ( "Rule Filter: {name}" , "|r" .. rule.name ) , 0 , 0.8 , 1 );
    GameTooltip:AddLine ( " " );

    if rule.activityFilter then
        local time = "";
        if rule.isMonths then
            time = GRM.L ( "Months");
        else
            time = GRM.L ( "Days" );
        end

        GameTooltip:AddDoubleLine ( GRM.L ( "Inactivity:" ) , GRM.L ( "Notify if inactive for {num} {name}" , time , nil , rule.numDaysOrMonths ) , 1 , 0.82 , 0 , 1 , 1 , 1 );
    else
        GameTooltip:AddDoubleLine ( GRM.L ( "Inactivity:" ) , GRM.L ( "Disabled" ) , 1 , 0.82 , 0 , c.D[1] , c.D[2] , c.D[3] );
    end

    if rule.rankFilter then
        local listOfRanks = GRM.GetRanksIncludedInFilter( rule.ranks );
        local ranks = listOfRanks[1];
        for i = 2 , #listOfRanks do
            ranks = ranks .. ", " .. listOfRanks[i];
        end
        GameTooltip:AddDoubleLine ( GRM.L ( "Ranks:" ) , ranks , 1 , 0.82 , 0 , 1 , 1 , 1 );
    else
        GameTooltip:AddDoubleLine ( GRM.L ( "Ranks:" ) , GRM.L ( "All Ranks" ) , 1 , 0.82 , 0 , 1 , 1 , 1 );
    end

    if rule.levelFilter then
        local topLevel;
        if rule.levelRange[2] == 999 then
            topLevel = GRM_G.LvlCap;
        else
            topLevel = rule.levelRange[2];
        end
        GameTooltip:AddDoubleLine ( GRM.L ( "Level Range:" ) , GRM.L ( "{num} to {custom1}" , nil , nil , rule.levelRange[1] , topLevel ) , 1 , 0.82 , 0 , 1 , 1 , 1 );
    else
        GameTooltip:AddDoubleLine ( GRM.L ( "Level Range:" ) , GRM.L ( "1 to {num}" , nil , nil , GRM_G.LvlCap ) , 1 , 0.82 , 0 , 1 , 1 , 1 );
    end

    if rule.noteMatch then
        GameTooltip:AddDoubleLine ( GRM.L ( "Note Match:" ) , "\"" .. rule.matchingString .. "\"" , 1 , 0.82 , 0 , 1 , 1 , 1 );
    else
        GameTooltip:AddDoubleLine ( GRM.L ( "Note Match:" ) , GRM.L ( "Disabled" ) , 1 , 0.82 , 0 , c.D[1] , c.D[2] , c.D[3] );
    end

    GameTooltip:AddLine ( " " );
    GameTooltip:AddLine ( "|CFFE6CC7F" .. GRM.L ( "Right-Click|r to Edit or Remove custom rule" ) );

    GameTooltip:Show();
end

------------------------------------------
------ Custom Rules UI Controls ----------

GRM.GetPromoteNamesByFilterRules = function()
    return {};
end
GRM.GetDemoteNamesByFilterRules = function()
    return {};
end

-- Method:          GRM.GetMacroFormattedName ( string )
-- What it Does:    Returns either a name with a server or not
-- Purpose:         If a player is on the same server as you, you don't need to add their server, thus you can remove it and allow more space in the macro tool
GRM.GetMacroFormattedName = function ( name )
    local result = "";
    if string.find ( name , GRM_G.realmName , 1 , true ) ~= nil then      -- If the player has the same realm name as me than it can be shortened.
        result = GRM.SlimName ( name );
    else
        result = name;
    end

    return result;
end

-- Method:          GRM.GetKickNamesByFilterRules ()
-- What it Does:    Gets the names that adhere to the given rules
-- Purpose:         UX
GRM.GetKickNamesByFilterRules = function()
    local listOfPlayers = {};

    -- No need to do all the work if there are no rules to check!
    if GRM.GetKickRulesCount() == 0 or GRM_G.guildName == "" or GRM_G.guildName == nil then
        return listOfPlayers;
    end

    -- The name formatting is purely to be used for the macro to be added.
    
    local ruleConfirmedCheck = true
    local listOfPlayers , tempRuleCollection = {} , {};   

    for _ , player in pairs ( GRM_GuildMemberHistory_Save[ GRM_G.F ][ GRM_G.guildName ] ) do
        if type ( player ) == "table" then
            -- reset for this player.

            for ruleName , rule in pairs ( GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].kickRules ) do
                if rule.isEnabled then
                    ruleConfirmedCheck = true;
                    tempRuleCollection = {};
                    -- Check filter

                    -- Inactivity
                    if rule.activityFilter then
                        ruleConfirmedCheck = false;

                        if not rule.allAltsApplyToKick or ( rule.allAltsApplyToKick and not GRM.IsAnyAltActiveForRecommendKicks ( player.alts , ruleName ) ) then
                            -- Is actually considered inactive
                            if player.lastOnline >= GRM_G.NumberOfHoursTilRecommend.kick[ruleName] then
                                -- Cannot remove players same rank or higher, so they have to be a higher index than you to remove them.
                                if GRM_G.playerRankID < player.rankIndex then
                                    ruleConfirmedCheck = true;
                                    table.insert ( tempRuleCollection , { "Inactive" , player.lastOnline } );
                                end
                            end

                        end

                    end

                    -- Rank Filters
                    if ruleConfirmedCheck and rule.rankFilter then
                        ruleConfirmedCheck = false;

                        if rule.ranks[(GuildControlGetNumRanks() - player.rankIndex)] then
                            ruleConfirmedCheck = true;
                            table.insert ( tempRuleCollection , { "Rank" , player.rankName } );
                        end

                    end

                    -- Level Filters
                    if ruleConfirmedCheck and rule.levelFilter then
                        ruleConfirmedCheck = false;

                        local topLevel;
                        if rule.levelRange[2] == 999 then
                            topLevel = GRM_G.LvlCap;
                        else
                            topLevel = rule.levelRange[2];
                        end
                        if player.level >= rule.levelRange[1] and player.level <= topLevel then
                            ruleConfirmedCheck = true;
                            table.insert ( tempRuleCollection , { "Level" , rule.levelRange[1] , topLevel } );
                        end

                    end

                    -- Note match filter
                    if ruleConfirmedCheck and rule.noteMatch then

                        if #rule.matchingString > 0 then
                            ruleConfirmedCheck = false;

                            -- public note
                            if rule.notesToCheck[1] and string.find ( string.lower ( player.note ) , string.lower ( rule.matchingString ) , 1 , true ) ~= nil then
                                ruleConfirmedCheck = true;
                            end
                            -- Officer Note
                            if not ruleConfirmedCheck and rule.notesToCheck[2] and string.find ( string.lower ( player.officerNote ) , string.lower ( rule.matchingString ) , 1 , true ) ~= nil then
                                ruleConfirmedCheck = true;
                            end
                            -- Custom Note
                            if not ruleConfirmedCheck and rule.notesToCheck[3] and string.find ( string.lower ( player.customNote[6] ) , string.lower ( rule.matchingString ) , 1 , true ) ~= nil then
                                ruleConfirmedCheck = true;
                            end

                            if ruleConfirmedCheck then
                                table.insert ( tempRuleCollection , { "Note Match" , rule.matchingString } );
                            end
                        end

                    end

                    if ruleConfirmedCheck then
                        -- RULE IS GOOD - ADD PLAYER
                        -- Check safe list too
                        if not player.safeList then      -- Ignore for scanning... but I still want a count of the ignored.
                            local index = GRM.GetIndexOfPlayerOnList ( listOfPlayers , player.name );

                            if index == nil then
                                table.insert ( listOfPlayers , {} );
                                index = #listOfPlayers;
                                listOfPlayers[index].name = player.name;
                                listOfPlayers[index].class = GRM.GetClassColorRGB ( player.class );
                                listOfPlayers[index].lastOnline = player.lastOnline;
                                listOfPlayers[index].action = GRM.L ( "Kick" );
                                listOfPlayers[index].macro = "/gremove";
                                listOfPlayers[index].isHighlighted = false;
                            end
                            
                            table.insert ( listOfPlayers[index] , { rule.name , tempRuleCollection } );
                            sort ( listOfPlayers , function ( a , b ) return a.name < b.name end );

                        else
                            local index = GRM.GetIndexOfPlayerOnList ( GRM_UI.GRM_ToolCoreFrame.Safe , player.name );

                            if index == nil and player.name ~= GRM_G.addonUser then
                                table.insert ( GRM_UI.GRM_ToolCoreFrame.Safe , {} );
                                index = #GRM_UI.GRM_ToolCoreFrame.Safe;
                                GRM_UI.GRM_ToolCoreFrame.Safe[index].name = player.name
                                GRM_UI.GRM_ToolCoreFrame.Safe[index].rankIndex = player.rankIndex;
                                GRM_UI.GRM_ToolCoreFrame.Safe[index].class = GRM.GetClassColorRGB ( player.class );
                                GRM_UI.GRM_ToolCoreFrame.Safe[index].reason = GRM.L ( "Kick" );
                                GRM_UI.GRM_ToolCoreFrame.Safe[index].lastOnline = player.lastOnline;
                                GRM_UI.GRM_ToolCoreFrame.Safe[index].isHighlighted = false;
                                sort ( GRM_UI.GRM_ToolCoreFrame.Safe , function ( a , b ) return a.name < b.name end );
                            end
                        end
                    end
                end
            end
        end
    end
    return listOfPlayers;
end

-----------------------------------------------------------
-- EXTRA CONTROL FUNCTIONS IN RELATION TO THIS FEATURE ----
-----------------------------------------------------------
-- Note, they will be placed under the general GRM global

-- Method:          GRM.RefreshAllMacroToolFrames()
-- What it Does:    Triggers a refresh of ALL the hybridscrollframes and features of the GRM Macro tool
-- Purpose:         UX
GRM.RefreshAllMacroToolFrames = function()
    if GRM_UI.GRM_ToolCoreFrame:IsVisible() then
        GRM_UI.RefreshManagementTool();

        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:IsVisible() then
            GRM.TriggerIgnoredQueuedWindowRefresh();
        end
    end                    
end

-- Method:          GRM.GetSafePlayers()
-- What it Does:    Returns the number of players that are set to be ignored on the recommendations macro
-- Purpose:         It is good to know the count for visual reasons
GRM.GetSafePlayers = function( getCountAndPlayers )
    local count = 0;
    local names = {};
    local guildData = GRM_GuildMemberHistory_Save[ GRM_G.F ][ GRM_G.guildName ];

        for _ , player in pairs ( guildData ) do
            if type ( player ) == "table" and player.safeList and player.name ~= GRM_G.addonuser then

                count = count + 1;
                -- Default just gets the count - otherwise it returns the list of players as well.
                if getCountAndPlayers then
                    names[count] = {};
                    names[count].name = player.name;
                    names[count].class = GRM.GetClassColorRGB ( player.class );
                    names[count].isHighlighted = false;
                    names[count].reason = "";
                    names[count].rankIndex = player.rankIndex;
                    names[count].lastOnline = player.lastOnline;
                end
            end
        end
    return count , names;
end

-- Method:          GRM.GetReasonIgnoredMsg ( int , int , int )
-- What it Does:    Returns the string reason an action cannot occur on the ignore list
-- Purpose:         To help the player understand why another player cannot be removed.
GRM.GetReasonIgnoredMsg = function ( myRank , targetRank )
    local result = "";

    if myRank >= targetRank then

        if myRank == targetRank then
            result = GRM.L ( "Same Rank" );
        elseif myRank > targetRank then
            result = GRM.L ( "Higher Rank" );
        end
    end

    return result;
end


-- RULES!!!
-- Method:          GRM.GetCountOfNamesBeingFiltered()
-- What it Does:    Returns the number of names rules apply to
-- Purpose:         Refreshes the names
GRM.GetCountOfNamesBeingFiltered = function()
    local listOfNames = GRM.GetKickNamesByFilterRules();
    local c = 0;

    for _ in pairs ( listOfNames ) do
        c = c + 1;
    end

    return c;
end
--     local result = {};
--     local guildData = GRM_GuildMemberHistory_Save[ GRM_G.F ][ GRM_G.guildName ];
--     local tempDetails = {};
--     local needsToSave = false;
--     local saveControlCheck = false;
--     local notAllKickRulesMet = false
--     -- local notAllKickRulesMet , notAllPromoRulesMet, notAllDemoteRulesMet = false , false , false;
--     GRM_UI.GRM_ToolCoreFrame.Safe = {};         -- Reset the list of names

--     -- Escape if database hasn't fully loaded yet
--     if not guildData then
--         return result;
--     end
--     -- Ok, scan through every member of the guild and scan the rules.

--     if #GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].kickRules > 0 then             -- No Need to do all the work if no rule
--         for _ , player in pairs ( guildData ) do
--             if type ( player ) == "table" then
--                 -- No need to check the rules on the player if they are ranked higher than you...
--                 tempDetails = {};
--                 needsToSave = false;
--                 notAllKickRulesMet = false;
--                 -- notAllKickRulesMet , notAllPromoRulesMet, notAllDemoteRulesMet = false , false , false;
--                 local currentRule = 1;

--                 for j = 1 , #GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].kickRules do
                
--                     -- Kick rules
--                     if CanGuildRemove() and GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].kickRules[j][1] == 1 and GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].kickRules[j][5] and not notAllKickRulesMet  then
--                         saveControlCheck = false;

--                         needsToSave , saveControlCheck , notAllKickRulesMet , tempDetails = GRM.GetNamesFromKickRules ( j , player , needsToSave , saveControlCheck , notAllKickRulesMet , tempDetails );

--                     -- Promote Rules
--                     elseif CanGuildPromote() and GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].kickRules[j][1] == 2 and GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].kickRules[j][4] then
--                         saveControlCheck = false;



--                         if needsToSave and not saveControlCheck then
--                             needsToSave = false;
--                         end
--                     -- Demote Rules
--                     elseif CanGuildDemote() and GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].kickRules[j][1] == 3 and GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].kickRules[j][4] then
--                         saveControlCheck = false;



--                         if needsToSave and not saveControlCheck then
--                             needsToSave = false;
--                         end
--                     end

--                     -- Only add the name if necessary.
--                     if needsToSave and ( j == #GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].kickRules or GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].kickRules[j+1][1] > currentRule ) then
--                         table.insert ( tempDetails , false );
--                         table.insert ( result , tempDetails );        -- I need to do a clean copy
--                     end
                    
--                     -- If the rule changes this should be logged.
--                     if  j + 1 <= #GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].kickRules and GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].kickRules[j+1][1] > currentRule then
--                         currentRule = GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].kickRules[j+1][1];
--                     end
--                 end
--             end
--         end
--     end

--     return result;
-- end


------------------------
--- CUSTOM RULES -------
------------------------

-- Method:          GRM_UI.RefreshManagementTool( bool )
-- What it Does:    Refreshes the management tool
-- Purpose:         Compartmentalize the refresh details.
GRM_UI.RefreshManagementTool = function( isBanAltList , isBanInGuild )
    if not GRM_UI.GRM_ToolCoreFrame.IsInitialized then

        -- Check permissions - set tab as default one 
        if not CanGuildRemove() then
            if CanGuildPromote() then
                GRM_UI.GRM_ToolCoreFrame.TabPosition = 2;
            elseif CanGuildDemote() then
                GRM_UI.GRM_ToolCoreFrame.TabPosition = 3;
            end
        end

        GRM_UI.LoadToolFrames ( false );
    end
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.BlacklistedNames = {};  -- reset the blacklist.
    GRM.BuildQueuedScrollFrame ( true , true , isBanAltList , isBanInGuild );
    -- On reshow, always reset the macro
    GRM_UI.GRM_ToolCoreFrame.MacroEntries = {};
    GRM.BuildMacrodScrollFrame ( true , false );
    
    -- Load the options properly
    GRM_UI.LoadRulesUI();
    GRM_UI.RefreshToolButtonsOnUpdate();

    -- Populate the macro 
    if isBanAltList or isBanInGuild then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton:Click();
    end

end

-- Method:          GRM_UI.RefreshToolButtonsOnUpdate()
-- What it Does:    For the "OnUpdate" script handler of the button to update the text as needed
-- Purpose:         Quality of life information so as not needed to open button, it is just visual.
GRM_UI.RefreshToolButtonsOnUpdate = function()

    if GRM_G.guildName ~= "" then
        local count = GRM.GetCountOfNamesBeingFiltered();

        if GRM_UI.GRM_LoadToolButton:IsVisible() then
            if count > 0 then
                GRM_UI.GRM_LoadToolButtonText:SetText ( GRM.L ( "Macro Tool: {num}" , nil , nil , count ) );
            else
                GRM_UI.GRM_LoadToolButtonText:SetText ( GRM.L ( "Macro Tool" ) );
            end
        end

        if GRM_UI.GRM_LoadToolOldRosterButton:IsVisible() then
            if count > 0 then
                GRM_UI.GRM_LoadToolOldRosterButtonText:SetText ( GRM.L ( "Macro Tool: {num}" , nil , nil , count ) );
            else
                GRM_UI.GRM_LoadToolOldRosterButtonText:SetText ( GRM.L ( "Macro Tool" ) );
            end
        end
    else
        GRM_UI.GRM_LoadToolButtonText:SetText ( GRM.L ( "Macro Tool" ) );
        C_Timer.After ( 5 , function()
            GRM_UI.RefreshToolButtonsOnUpdate();
        end);
    end
end

-- Method:          GRM_UI.LoadRulesUI()
-- What it Does:    Rebuilds the options settings... for kick rules
-- Purpose:         UX easily on call, can be recalled with a rank change too.
GRM_UI.LoadRulesUI = function()
    GRM_UI.ConfigureToolTab();
    GRM.BuildRulesScrollFrame ( true , true );
end

-- Method:          GRM_UI.FullMacroToolRefresh()
-- What it Does:    Triggers a full refresh of ALL frames, like if the player creates and adds a new rule it will reprocess all
-- Purpose:         Quality of life, live updating of the UI as changes are made.
GRM_UI.FullMacroToolRefresh = function()
    GRM.RefreshNumberOfHoursTilRecommend();
    GRM_UI.RefreshManagementTool();
    GRM.SyncSettings();
end

-- Method:          GRM_UI.GRM_ToolCoreFrame()
-- What it Does:    Handles some on load property controls, if it is a rules load, or you are loading to use the tool for kicking alts or currently banned but still in guild players
-- Purpose:         UX ease of controls.
GRM_UI.GRM_ToolCoreFrame:SetScript ( "OnShow" , function ()

    if GRM_G.KickAltControl then
        GRM_UI.RefreshManagementTool( GRM_G.KickAltControl );
        GRM_G.KickAltControl = false;
    elseif GRM_G.kickBannedControl then
        GRM_UI.RefreshManagementTool( false , GRM_G.kickBannedControl );
        GRM_G.kickBannedControl = false;
    else
        GRM_UI.RefreshManagementTool( false , false );
    end
end);
