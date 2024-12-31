
local inCar = false
local before = {}
local isReady = nil
Citizen.CreateThread(function()
    while true do
        local player = PlayerPedId()
        local health = GetEntityHealth(player) - 100
        local armour = GetPedArmour(player)
        TriggerEvent('esx_status:getStatus', 'hunger', function(status) food = status.val / 10000 end)
        TriggerEvent('esx_status:getStatus', 'thirst', function(status) water = status.val / 10000 end)
        if not food or not water then
            SendNUIMessage({status = 'visible', data = false})
            goto continue
        end
        if not isReady then
            isReady = true
        end
        if health < 0 then health = 0 end
        SendNUIMessage({status = 'info', data = {health=health,armour=armour,food=food,water=water}})
        ::continue::
        Citizen.Wait(3000)
    end
end)
local wait = 1000
Citizen.CreateThread(function()
    while true do
        if before.ready ~= isReady then
            before.ready = true
            SendNUIMessage({status = 'visible', data = true})
            wait = 1000
            goto endLoop
        end
        do
            local pause = IsPauseMenuActive()
            if pause ~= before.pause then
                if pause then
                    SendNUIMessage({status = 'visible', data = false})
                else
                    SendNUIMessage({status = 'visible', data = true})
                end
                before.pause = pause
            end
            local player = PlayerPedId()
            local isPedInVehicle = IsPedInAnyVehicle(player)
            if isPedInVehicle then
                local vehicle = GetVehiclePedIsIn(player)
                if GetPedInVehicleSeat(vehicle, -1) == player then
                    wait = 200
                    inCar = true
                    local fuel = GetVehicleFuelLevel(vehicle)
                    local speed = GetEntitySpeed(vehicle)
                    if not is_mph then
                        speed = speed*3.6
                    else
                        speed = speed*2.236936
                    end
                    local engine = GetVehicleEngineHealth(vehicle) / 10
                    if fuel ~= before.fuel then
                        before.fuel = fuel
                    end
                    if speed ~= before.speed then
                        before.speed = speed
                    end
                    if engine ~= before.engine then
                        before.engine = engine
                    end
                end
                before.speedometer_visible = true
                SendNUIMessage({status = 'speedometer', data = {visible=true,speed=before.speed,engine=before.engine,fuel=before.fuel,mph=is_mph}})
            else
                if before.speedometer_visible then 
                    before.speedometer_visible = false
                    SendNUIMessage({status = 'speedometer', data = {visible=false}})
                end
                inCar = false
                wait = 1000
            end
    
            local isPedArmed = IsPedArmed(player, 4)
            if isPedArmed then
                wait = 200
                local weaponHash = GetSelectedPedWeapon(player)
                local ammoInClip = GetAmmoInClip(player, weaponHash)
                local maxAmmo = GetMaxAmmoInClip(player, weaponHash, true)
                local totalAmmo = GetAmmoInPedWeapon(player, weaponHash)
                before.weapon_visible = true
                SendNUIMessage({
                    status = 'weapon',
                    data = {
                        visible = true,
                        ammoInClip = ammoInClip,
                        maxAmmo = maxAmmo,
                        totalAmmo = (totalAmmo - ammoInClip)
                    }
                })
            else
                if before.weapon_visible then
                    before.weapon_visible = false
                    SendNUIMessage({
                        status = 'weapon',
                        data = {visible = false}
                    })
                end
            end
        end
        ::endLoop::
        Citizen.Wait(wait)
    end
end)

function GetAmmoInClip(ped, weaponHash)
    local ammoClip = Citizen.InvokeNative(0x2E1202248937775C, ped, weaponHash, Citizen.PointerValueInt())
    return ammoClip
end