local parts = {}

while wait() do
  task.spawn(function()
    for i = 1, 1000000 do
      local newPart = Instance.new("Part")
      newPart.Name = tostring(#parts + 1)
      newPart.Size = Vector3.new(2, 2, 2)
      newPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
      newPart.Anchored = true
      newPart.CanCollide = true
      newPart.Color = Color3.new(1, 0, 0)
      newPart.Parent = workspace

      table.insert(parts, newPart)
    end
  end)
end
print("trolled hahahahahaha")
