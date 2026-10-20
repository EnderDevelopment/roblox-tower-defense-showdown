-- Unit Clone Script for Roblox Cameraman Tower Defense

local function cloneUnit(originalUnit)
    -- Clone the original unit
    local clonedUnit = originalUnit:Clone()
    
    -- Adjust the position of the cloned unit
    clonedUnit.Position = originalUnit.Position + Vector3.new(0, 0, 5)
    
    -- Parent the cloned unit to the same parent as the original unit
    clonedUnit.Parent = originalUnit.Parent
    
    return clonedUnit
end

-- Example usage:
-- local originalUnit = workspace:FindFirstChild("Unit")
-- if originalUnit then
--     local clonedUnit = cloneUnit(originalUnit)
-- end
