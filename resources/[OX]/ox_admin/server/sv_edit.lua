if Config.Framework == "1" then
    ESX = exports['es_extended']:getSharedObject()
elseif Config.Framework == "2" then
    ESX = nil
    CreateThread(function()
        while ESX == nil do
            TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)
            Wait(100)
        end
    end)
elseif Config.Framework == "custom" then
    ESX = exports["osc"]:getSharedObject()
end


RegisterCommand('job2', function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer then
        local secondJob = xPlayer.getJob2() -- Récupère les informations du métier secondaire

        if secondJob and secondJob.name ~= nil and secondJob.name ~= 'unemployed' then
            -- Notification avec les informations du job secondaire
            TriggerClientEvent('ox_lib:notify', source, {
                type = 'info',
                description = string.format(
                    "Votre Job 2 : %s\nGrade : %s (%d)",
                    secondJob.label or 'Inconnu',
                    secondJob.grade_label or 'Inconnu',
                    secondJob.grade or 0
                )
            })
        else
            -- Si le joueur n'a pas de job secondaire
            TriggerClientEvent('ox_lib:notify', source, {
                type = 'error',
                description = "Vous n'avez pas de Job 2."
            })
        end
    else
        -- Si le joueur n'est pas trouvé
        print("Erreur : Impossible de trouver le joueur ID " .. source)
    end
end, false)
