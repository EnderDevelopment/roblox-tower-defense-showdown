-- Camera Movement Script

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local function onPlayerAdded(player)
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local camera = workspace.CurrentCamera

    local function onCharacterAdded(newCharacter)
        character = newCharacter
        humanoid = character:WaitForChild("Humanoid")
    end

    player.CharacterAdded:Connect(onCharacterAdded)

    local function updateCamera(dt)
        if humanoid and humanoid.Health > 0 then
            local cameraCFrame = CFrame.new(character.Head.Position) * CFrame.Angles(math.rad(-20), 0, 0)
            camera.CFrame = cameraCFrame
        end
    end

    RunService.Heartbeat:Connect(updateCamera)
end

Players.PlayerAdded:Connect(onPlayerAdded)
