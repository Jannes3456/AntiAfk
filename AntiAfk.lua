-- Anti-AFK Script mit zufälliger Bewegung
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local directions = {Vector3.new(1, 0, 0), Vector3.new(-1, 0, 0), Vector3.new(0, 0, 1), Vector3.new(0, 0, -1)} -- Vorwärts, Rückwärts, Links, Rechts

while true do
    local randomAction = math.random(1, 5) -- Zufällig zwischen 1 und 5 wählen
    if randomAction == 5 then
        humanoid.Jump = true -- Spieler springen lassen
        print("Anti-AFK: Springen!")
    else
        local direction = directions[randomAction] -- Zufällige Richtung auswählen
        character:TranslateBy(direction) -- Spieler bewegen
        print("Anti-AFK: Bewegt in Richtung", direction)
    end
    wait(5) -- 5 Sekunden warten
end
