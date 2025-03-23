-- made by fluffy :3

-- Put this script inside of a part that you want when touched, to tp the player touching it to a specific place

local place = CFrame.new(0, 0, 0) -- Put Positon/CFrame of where you want the player to be teleported

script.Parent.Touched:Connect(function(bp)
	if bp.Parent:FindFirstChild("Humanoid") then
		bp.Parent:FindFirstChild("HumanoidRootPart").CFrame = place
	end
end)
