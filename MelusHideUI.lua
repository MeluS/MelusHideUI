
local function HideUICustom()
    PlayerFrame.PlayerFrameContainer.PlayerPortrait:Hide()
    PlayerFrame.PlayerFrameContainer.FrameTexture:Hide()
    PlayerFrame.PlayerFrameContent.PlayerFrameContentMain.StatusTexture:Hide()
    PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual.PlayerPortraitCornerIcon:Hide()

    TargetFrame.TargetFrameContainer.Portrait:Hide()
    TargetFrame.TargetFrameContainer.FrameTexture:Hide()
 end

local MelusHideUI = CreateFrame("Frame", "MuteGroupSounds")
MicroButtonAndBagsBar:RegisterForDrag("LeftButton")
MicroButtonAndBagsBar:SetScript("OnDragStart", MicroButtonAndBagsBar.StartMoving)
MicroButtonAndBagsBar:SetScript("OnDragStop", MicroButtonAndBagsBar.StopMovingOrSizing)

MicroButtonAndBagsBar:SetMovable(true)
MicroButtonAndBagsBar:EnableMouse(true)
MicroButtonAndBagsBar:SetScript("OnMouseDown", function(self, button)
  if button == "LeftButton" and not self.isMoving then
   self:StartMoving();
   self.isMoving = true;
  end
end)
MicroButtonAndBagsBar:SetScript("OnMouseUp", function(self, button)
  if button == "LeftButton" and self.isMoving then
   self:StopMovingOrSizing();
   self.isMoving = false;
  end
end)
MicroButtonAndBagsBar:SetScript("OnHide", function(self)
  if ( self.isMoving ) then
   self:StopMovingOrSizing();
   self.isMoving = false;
  end
end)

MelusHideUI:RegisterEvent("PLAYER_ENTERING_WORLD")
MelusHideUI:RegisterEvent("ZONE_CHANGED_NEW_AREA")
MelusHideUI:SetScript("OnEvent",
  function(self, event, ...)
    HideUICustom()
end)