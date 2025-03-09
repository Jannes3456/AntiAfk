-- Anti-AFK Script mit längeren Tastendrücken
local VirtualInputManager = game:GetService("VirtualInputManager")
local keys = {"W", "A", "S", "D", "Space"} -- Mögliche Tasten

while true do
    local randomKey = keys[math.random(1, #keys)] -- Zufällige Taste wählen
    VirtualInputManager:SendKeyEvent(true, randomKey, false, nil) -- Taste drücken
    print("Anti-AFK: Taste gedrückt ->", randomKey)
    wait(3) -- Taste für 3 Sekunden "halten"
    VirtualInputManager:SendKeyEvent(false, randomKey, false, nil) -- Taste loslassen
    print("Anti-AFK: Taste losgelassen ->", randomKey)
    wait(2) -- 2 Sekunden warten, bis der nächste Zyklus startet (insgesamt 5 Sekunden)
end
