local Frame = CreateFrame("Frame")
Frame:RegisterEvent("PLAYER_LOGIN")
Frame:SetScript("OnEvent", function(...)
if BigWigsLoader then 
  BigWigsLoader.RegisterMessage(Frame, "BigWigs_FrameCreated", function(event, frame, name) if frame and name == "QueueTimer" then frame:Hide() end end) 
end
end)

PlayerFrame:UnregisterEvent("UNIT_COMBAT")PetFrame:UnregisterEvent("UNIT_COMBAT")
