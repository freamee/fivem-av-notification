RegisterNetEvent('aquiverNotify')
AddEventHandler(
    'aquiverNotify',
    function(msg, header, img, time, color)
        if img == nil then
            img = Config.DefaultImage
        end
        if header == nil then
            header = Config.DefaultHeader
        end
        if time == nil then
            time = Config.DefaultTime
        end
        if color == nil then
            color = Config.Colors['default']
        else
            if Config.Colors[color] then
                color = Config.Colors[color]
            end
        end

        SendNUIMessage(
            {
                type = 'aquiverNotify',
                msg = msg,
                header = header,
                img = img,
                time = time,
                color = color
            }
        )
    end
)

if Config.Debug then
    RegisterCommand(
        'testNotify',
        function()
            TriggerEvent('aquiverNotify', 'Testing the text message input.\nOh, thats a new line.', 'Test Header', 'chips.png', 8, 'rgba(255,0,255, 0.25)')
            Citizen.Wait(math.random(200, 700))
            TriggerEvent('aquiverNotify', 'Testing the text message input.\nNewline\nThird line', 'Test Header', 'chips.png', 3, 'error')
            Citizen.Wait(math.random(200, 700))
            TriggerEvent('aquiverNotify', 'Testing the text message input.\nNewline\nThird line', 'Test Header', 'chips.png', 3, 'success')
        end
    )
end
