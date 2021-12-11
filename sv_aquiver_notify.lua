RegisterNetEvent('aquiverNotify')
AddEventHandler(
    'aquiverNotify',
    function(src, msg, header, img)
        TriggerClientEvent('aquiverNotify', src, msg, header, img)
    end
)
