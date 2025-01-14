-- server.lua

-- Befehl zum Abspielen des Videos an alle Spieler
RegisterCommand('playVideo', function(source, args, rawCommand)
    -- YouTube-URL zum Video
    local youtubeUrl = 'https://www.youtube.com/watch?v=_yZXPggxS18'  -- YouTube-Video-URL
    -- Event an alle Clients senden, um das Video zu starten
    TriggerClientEvent('playVideoForAll', -1, youtubeUrl)  -- -1 bedeutet alle Spieler
end, false)

-- Befehl zum Stoppen des Videos an alle Spieler
RegisterCommand('stopVideo', function(source, args, rawCommand)
    -- Event an alle Clients senden, um das Video zu stoppen
    TriggerClientEvent('stopVideoForAll', -1)  -- -1 bedeutet alle Spieler
end, false)
