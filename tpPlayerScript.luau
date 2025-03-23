-- Made by Fluffy :3

-- Put this inside of a part that you want when touched, to tp the player touching it to a specific place.

local place = CFrame.new(0, 0, 0) -- Put CFrame/Positon here

script.Parent.Touched:Connect(function(bp)
	if bp.Parent:FindFirstChild("Humanoid") then
		bp.Parent:FindFirstChild("HumanoidRootPart").CFrame = place
	end
end)
