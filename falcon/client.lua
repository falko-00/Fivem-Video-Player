-- client.lua
RegisterNetEvent('playVideoForAll')
AddEventHandler('playVideoForAll', function(videoUrl)
    -- Zufällige Position wählen
    local positions = {
        {left = "10px", top = "10px"},        -- oben links
        {right = "10px", top = "10px"},       -- oben rechts
        {left = "10px", bottom = "10px"},     -- unten links
        {right = "10px", bottom = "10px"},    -- unten rechts
        {left = "50%", top = "50%", transform = "translate(-50%, -50%)"} -- Mitte
    }

    -- Zufällige Position auswählen
    local position = positions[math.random(1, #positions)]

    -- Sende eine Nachricht an NUI, um das Video mit der gewählten Position anzuzeigen
    SendNUIMessage({
        action = 'playVideo',
        url = videoUrl,
        position = position
    })

    -- Setze NUI-Fokus, damit es im Vordergrund bleibt
    SetNuiFocus(true, true)
end)
