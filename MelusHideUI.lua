
local function HideUICustom()
    PlayerFrame.PlayerFrameContainer.PlayerPortrait:Hide()
    PlayerFrame.PlayerFrameContainer.FrameTexture:Hide()
    PlayerFrame.PlayerFrameContent.PlayerFrameContentMain.StatusTexture:Hide()
    PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual.PlayerPortraitCornerIcon:Hide()

    TargetFrame.TargetFrameContainer.Portrait:Hide()
    TargetFrame.TargetFrameContainer.FrameTexture:Hide()
 end

local MelusHideUI = CreateFrame("Frame", "MuteGroupSounds")
MelusHideUI:RegisterEvent("PLAYER_ENTERING_WORLD")
MelusHideUI:RegisterEvent("ZONE_CHANGED_NEW_AREA")
MelusHideUI:SetScript("OnEvent",
  function(self, event, ...)
    HideUICustom()
end)