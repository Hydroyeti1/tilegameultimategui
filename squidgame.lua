local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Anticheat Moment", "Synapse")
local Tab = Window:NewTab("Fun")
local Section = Tab:NewSection("Fun")
local End = game:GetService("Workspace").End.EndDoor.EndDoorTeleport
T1 = false
Section:NewToggle("AutoFarm", "Farms winz", function(state)
  T1 = state
end)
Section:NewButton("Breaking ESP", "Easy Find", function(state)
  for _,v in pairs(game:GetService("Workspace").Panes:GetChildren()) do
      if #v.Panel.HitPart:GetChildren() > 0 then
        v.Panel.GlassPanel.Color = Color3.new(255, 1, 1)
      end
    end
end)
Section:NewButton("Jesus", "Panels cannot break.", function(state)
  for _,v in pairs(game:GetService("Workspace").Panes:GetChildren()) do
    if #v.Panel.HitPart:GetChildren() > 0 then
      v.Panel.HitPart:FindFirstChild("TouchInterest"):Destroy()
    end
  end
end)

game:GetService("RunService").RenderStepped:Connect(function()
  if T1 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = End.CFrame
  end
end)