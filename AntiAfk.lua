-- Anti-AFK Script mit zufälligem Teleportieren
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local directions = {Vector3.new(1, 0, 0), Vector3.new(-1, 0, 0), Vector3.new(0, 0, 1), Vector3.new(0, 0, -1)} -- Vorwärts, Rückwärts, Links, Rechts

while true do
    local randomDirection = directions[math.random(1, #directions)] -- Zufällige Richtung auswählen
    local newPosition = character.PrimaryPart.Position + randomDirection -- Position um 1 Stud verschieben
    character:SetPrimaryPartCFrame(CFrame.new(newPosition)) -- Charakter teleportieren
    print("Teleportiert in Richtung:", randomDirection)
    wait(30) -- 30 Sekunden warten, bevor der nächste Teleport stattfindet
end
