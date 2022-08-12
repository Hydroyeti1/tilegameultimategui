-- Using Kavo UI --
-- Version 1.1 --
-- All other scripting by Hydroyeti and Colonel_Konami/MegaKonami --
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Anticheat Moment", "Synapse")
local Tab = Window:NewTab("Fun")
local Sections = {
  Cheat = Tab:NewSection("Cheat"),
  Trolling = Tab:NewSection("Trolling")
}
local End = game:GetService("Workspace").End.EndDoor.EndDoorTeleport
local Start = game:GetService("Workspace").Start.TeleportPart
local Player = game.Players.LocalPlayer.Character.HumanoidRootPart
T1 = false
T2 = false
T3 = false
Sections.Cheat:NewToggle("AutoFarm", "Farms winz", function(state)
  T1 = state
end)
Sections.Trolling:NewButton("Breaking ESP", "Easy Find", function(state)
  for _,v in pairs(game:GetService("Workspace").Panes:GetChildren()) do
      if #v.Panel.HitPart:GetChildren() > 0 then
        v.Panel.GlassPanel.Color = Color3.new(255, 0, 0)
      end
    end
end)
Sections.Cheat:NewButton("Jesus", "Panels cannot break.", function(state)
  for _,v in pairs(game:GetService("Workspace").Panes:GetChildren()) do
    if #v.Panel.HitPart:GetChildren() > 0 then
      v.Panel.HitPart:FindFirstChild("TouchInterest"):Destroy()
    end
  end
end)
Sections.Cheat:NewToggle("Fast Body Pickup", "Instantly picks up bodies.", function(state)
  T2 = state
end)

game:GetService("RunService").RenderStepped:Connect(function()
  if T1 then
    Player.CFrame = End.CFrame
    wait()
    Player.CFrame = CFrame.new(Start.CFrame.X, Start.CFrame.Y, Start.CFrame.Z)
    wait()
  end
  for _,v in pairs(game:GetService("Workspace").Clones:GetChildren()) do
    if T2 then
      v.HumanoidRootPart.Prompt.HoldDuration = 0
    else
      v.HumanoidRootPart.Prompt.HoldDuration = 0.75
    end
  end
end)
