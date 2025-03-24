-- made by fluffy :3

-- Put this in a tool that you want the handle to be placed down and when touched will give the player the tool
-- Recommended that you turn off dropping for the tool as if turned on then players can make an infinite amount of copies of the tool

local tool = script.Parent

local newHandle = script.Parent:FindFirstChild("Handle"):Clone()
newHandle.Parent = tool.Parent
newHandle.Anchored = true

tool.Parent = game.ServerStorage

local function giveTool(bp)
	if bp.Parent:FindFirstChild("Humanoid") then
		if not bp.Parent:FindFirstChild(tool.Name) and not game:GetService("Players"):GetPlayerFromCharacter(bp.Parent).Backpack:FindFirstChild(tool.Name) then
			local newTool = tool:Clone()
			newTool:FindFirstChild("toolGivingScript"):Destroy()
			newTool.Parent = bp.Parent
		end
	end
end

newHandle.Touched:Connect(giveTool)
