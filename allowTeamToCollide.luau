-- made by fluffy :3

-- Put this in either ServerScriptService or Workspace
-- Below put in the name of the team you want to not collide with the walls also put the path to the folder or model with the walls you don't want the team to collide with


local allowedTeamName = "Host" -- The team allowed to pass through the walls
local wallsFolder = game:GetService("Workspace"):FindFirstChild("Walls") -- Folder of all the walls

local PhysicsService = game:GetService("PhysicsService")

PhysicsService:RegisterCollisionGroup("Walls")
for i,v in wallsFolder:GetChildren() do
	v.CollisionGroup = "Walls"
end

PhysicsService:RegisterCollisionGroup(allowedTeamName)

PhysicsService:CollisionGroupSetCollidable(allowedTeamName, "Walls", false)


game:GetService("Players").PlayerAdded:Connect(function(plr)
	plr:GetPropertyChangedSignal("TeamColor"):Connect(function()
		if plr.Team.Name == allowedTeamName then		
			for i,v in plr.Character:GetChildren() do
				if v:IsA("Part") then
					v.CollisionGroup = allowedTeamName
				end
			end
			
			plr.CharacterAdded:Connect(function(char)
				if plr.Team.Name == allowedTeamName then
					for i,v in plr.Character:GetChildren() do
						if v:IsA("Part") then
							v.CollisionGroup = allowedTeamName
						end
					end
				end
			end)
		end
	end)
end)
