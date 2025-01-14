-- server.lua
RegisterCommand('playVideo', function(source, args, rawCommand)
    -- URL des Videos
    local videoUrl = "https://shorturl.at/f7dFD"  -- Hier die Video-URL einfügen

    -- Event an alle Clients senden
    TriggerClientEvent('playVideoForAll', -1, videoUrl)  -- -1 bedeutet alle Spieler
end, false)
