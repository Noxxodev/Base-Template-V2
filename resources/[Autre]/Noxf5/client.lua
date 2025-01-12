ESX = exports["es_extended"]:getSharedObject()

 
RegisterCommand(Config.Command, function()
    lib.showContext('f5menu')
end)

RegisterKeyMapping(Config.Command, 'Menu personelle', 'keyboard', Config.Key)


lib.registerContext({
    id = 'f5menu',
    title = 'Menu F5',
    options = {
        {
            title = 'Mes documents',
            description = 'Montrer c\'est document',
            icon = 'fa-solid fa-folder',
            onSelect = function()
                lib.showContext('documentmenu')
            end,
        },
        {
            title = 'Gestion véhicules',
            description = 'Gestion véhicules',
            icon = 'fa-solid fa-car',
            onSelect = function()
                lib.showContext('voituremenu')
            end,
        },
    }
})

lib.registerContext({
    id = 'documentmenu',
    title = 'Menu document',
    menu = 'f5menu',
    options = {
        {
            title = 'Carte d\'identité',
            description = 'Carte d\'identité',
            icon = 'fa-solid fa-address-card',
            onSelect = function()
                local player, distance = ESX.Game.GetClosestPlayer()

                if distance ~= -1 and distance <= 3.0 then
                  TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player))
                  TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()))
                else
                    TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()))
                  ESX.ShowNotification('Aucun joueur a proximité')
                end  
            end,
        },
        {
            title = 'Permis de conduire',
            description = 'Permis de conduire',
            icon = 'fa-solid fa-address-card',
            onSelect = function()
                local player, distance = ESX.Game.GetClosestPlayer()

                if distance ~= -1 and distance <= 3.0 then
                  TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player), 'driver')
                  TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'driver')
                else
                  TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'driver')
                  ESX.ShowNotification('Aucun joueur a proximité')
                end
            end,
        },
        {
            title = 'Permis port d\'armes',
            description = 'Permis port d\'armes',
            icon = 'fa-solid fa-address-card',
            onSelect = function()
                local player, distance = ESX.Game.GetClosestPlayer()

                if distance ~= -1 and distance <= 3.0 then
                  TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player), 'weapon')
                  TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'weapon')
                else
                  TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'weapon')
                  ESX.ShowNotification('Aucun joueur a proximité')
                end
            end,
        },
    }
})

lib.registerContext({
    id = 'voituremenu',
    title = 'Menu voiture',
    menu = 'f5menu',
    options = {
        {
            title = 'Baisser les fenêtres',
            icon = 'fa-solid fa-car',
            onSelect = function()
                lib.showContext('fenetrevoiturebaisser')
            end,
        },
        {
            title = 'Monter les fenêtres',
            icon = 'fa-solid fa-car',
            onSelect = function()
                lib.showContext('fenetrevoituremonter')
            end,
        },
        {
            title = 'Ouvrir les portes',
            icon = 'fa-solid fa-car',
            onSelect = function()
                lib.showContext('ouvrirporte')
            end,
        },
        {
            title = 'Fermer les portes',
            icon = 'fa-solid fa-car',
            onSelect = function()
                lib.showContext('fermerporte')
            end,
        },
        {
            title = 'Changer de place',
            icon = 'fa-solid fa-car',
            onSelect = function()
                lib.showContext('changerplace')
            end,
        },
        {
            title = 'Moteur ON / OFF',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                if vehicle ~= nil and vehicle ~= 0 and GetPedInVehicleSeat(vehicle, 0) then
                    SetVehicleEngineOn(vehicle, (not GetIsVehicleEngineRunning(vehicle)), false, true)
                end
            end,
        },
    }
})





lib.registerMenu({
    id = 'voituremenu',
    title = 'Menu voiture',
    position = 'top-left',
    options = {
        {label = 'Moteur ON / OFF', icon = 'fa-solid fa-car', description = 'Moteur ON / OFF'},
    }
}, function(selected, scrollIndex, args)
    if selected == 6 then
        
    end
end)

lib.registerContext({
    id = 'fenetrevoiturebaisser',
    title = 'Menu fenetre',
    menu = 'voituremenu',
    options = {
        {
            title = 'Avant gauche',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                RollDownWindow(vehicle, 0)
                lib.showContext('fenetrevoiturebaisser')
            end,
        },
        {
            title = 'Avant droite',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                RollDownWindow(vehicle, 1)
                lib.showContext('fenetrevoiturebaisser')
            end,
        },
        {
            title = 'Arrière gauche',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                RollDownWindow(vehicle, 2)
                lib.showContext('fenetrevoiturebaisser')
            end,
        },
        {
            title = 'Arrière droite',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                RollDownWindow(vehicle, 3)
                lib.showContext('fenetrevoiturebaisser')
            end,
        },
        {
            title = 'Tout',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                RollDownWindow(vehicle, 0)
                RollDownWindow(vehicle, 1)
                RollDownWindow(vehicle, 2)
                RollDownWindow(vehicle, 3)
                lib.showContext('fenetrevoiturebaisser')
            end,
        },
    }
})


lib.registerContext({
    id = 'fenetrevoituremonter',
    title = 'Monter les fenêtres',
    menu = 'voituremenu',
    options = {
        {
            title = 'Avant gauche',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                RollUpWindow(vehicle, 0)
                lib.showContext('fenetrevoituremonter')
            end,
        },
        {
            title = 'Avant droite',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                RollUpWindow(vehicle, 1)
                lib.showContext('fenetrevoituremonter')
            end,
        },
        {
            title = 'Arrière gauche',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                RollUpWindow(vehicle, 2)
                lib.showContext('fenetrevoituremonter')
            end,
        },
        {
            title = 'Arrière droite',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                RollUpWindow(vehicle, 3)
                lib.showContext('fenetrevoituremonter')
            end,
        },
        {
            title = 'Tout',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                RollUpWindow(vehicle, 0)
                RollUpWindow(vehicle, 1)
                RollUpWindow(vehicle, 2)
                RollUpWindow(vehicle, 3)
                lib.showContext('fenetrevoituremonter')
            end,
        },
    }
})

lib.registerContext({
    id = 'ouvrirporte',
    title = 'Ouverture porte',
    menu = 'voituremenu',
    options = {
        {
            title = 'Avant gauche',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                SetVehicleDoorOpen(vehicle, 0, false)
                lib.showContext('ouvrirporte')
            end,
        },
        {
            title = 'Avant droite',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                SetVehicleDoorOpen(vehicle, 1, false)
                lib.showContext('ouvrirporte')
            end,
        },
        {
            title = 'Arrière gauche',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                SetVehicleDoorOpen(vehicle, 2, false)
                lib.showContext('ouvrirporte')
            end,
        },
        {
            title = 'Arrière droite',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                SetVehicleDoorOpen(vehicle, 3, false)
                lib.showContext('ouvrirporte')
            end,
        },
        {
            title = 'Capot',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                SetVehicleDoorOpen(vehicle, 4, false)
                lib.showContext('ouvrirporte')
            end,
        },
        {
            title = 'Coffre',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                SetVehicleDoorOpen(vehicle, 5, false)
                lib.showContext('ouvrirporte')
            end,
        },
        {
            title = 'Tout',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                SetVehicleDoorOpen(vehicle, 0, false)
                SetVehicleDoorOpen(vehicle, 1, false)
                SetVehicleDoorOpen(vehicle, 2, false)
                SetVehicleDoorOpen(vehicle, 3, false)
                SetVehicleDoorOpen(vehicle, 4, false)
                SetVehicleDoorOpen(vehicle, 5, false)
                lib.showContext('ouvrirporte')
            end,
        },
    }
})


lib.registerContext({
    id = 'fermerporte',
    title = 'Fermeture les portes',
    menu = 'voituremenu',
    options = {
        {
            title = 'Avant gauche',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                SetVehicleDoorShut(vehicle, 0, false)
                lib.showContext('fermerporte')
            end,
        },
        {
            title = 'Avant droite',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                SetVehicleDoorShut(vehicle, 1, false)
                lib.showContext('fermerporte')
            end,
        },
        {
            title = 'Arrière gauche',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                SetVehicleDoorShut(vehicle, 2, false)
                lib.showContext('fermerporte')
            end,
        },
        {
            title = 'Arrière droite',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                SetVehicleDoorShut(vehicle, 3, false)
                lib.showContext('fermerporte')
            end,
        },
        {
            title = 'Capot',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                SetVehicleDoorShut(vehicle, 4, false)
                lib.showContext('fermerporte')
            end,
        },
        {
            title = 'Coffre',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                SetVehicleDoorShut(vehicle, 5, false)
                lib.showContext('fermerporte')
            end,
        },
        {
            title = 'Tout',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
                local vehicle = GetVehiclePedIsIn(playerPed, false)
                SetVehicleDoorShut(vehicle, 0, false)
                SetVehicleDoorShut(vehicle, 1, false)
                SetVehicleDoorShut(vehicle, 2, false)
                SetVehicleDoorShut(vehicle, 3, false)
                SetVehicleDoorShut(vehicle, 4, false)
                SetVehicleDoorShut(vehicle, 5, false)
                lib.showContext('fermerporte')
            end,
        },
    }
})

lib.registerContext({
    id = 'changerplace',
    title = 'Changer de place',
    menu = 'voituremenu',
    options = {
        {
            title = 'Avant gauche',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
		        local vehicle = GetVehiclePedIsIn(playerPed, false)
                SetPedIntoVehicle(GetPlayerPed(-1), vehicle, -1)
                lib.showContext('changerplace')
            end,
        },
        {
            title = 'Avant droite',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
		        local vehicle = GetVehiclePedIsIn(playerPed, false)
                SetPedIntoVehicle(GetPlayerPed(-1), vehicle, 0)
                lib.showContext('changerplace')
            end,
        },
        {
            title = 'Arrière gauche',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
		        local vehicle = GetVehiclePedIsIn(playerPed, false)
                SetPedIntoVehicle(GetPlayerPed(-1), vehicle, 1)
                lib.showContext('changerplace')
            end,
        },
        {
            title = 'Arrière droite',
            icon = 'fa-solid fa-car',
            onSelect = function()
                local playerPed = GetPlayerPed(-1)
		        local vehicle = GetVehiclePedIsIn(playerPed, false)
                SetPedIntoVehicle(GetPlayerPed(-1), vehicle, 2)
                lib.showContext('changerplace')
            end,
        },
    }
})
