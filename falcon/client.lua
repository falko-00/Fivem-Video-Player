-- client.lua

RegisterNetEvent('playVideoForAll')
AddEventHandler('playVideoForAll', function(videoUrl)
    SetNuiFocus(true, true)  -- Setzt den Fokus auf das NUI
    SendNUIMessage({
        action = 'playVideo',  -- Aktion für das Abspielen des Videos
        url = videoUrl         -- URL des YouTube-Videos
    })
end)

-- Event zum Stoppen des Videos
RegisterNetEvent('stopVideoForAll')
AddEventHandler('stopVideoForAll', function()
    SetNuiFocus(false, false)  -- Entfernt den Fokus von NUI
    SendNUIMessage({
        action = 'stopVideo'  -- Aktion zum Stoppen des Videos
    })
end)
