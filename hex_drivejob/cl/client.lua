lib.registerContext({
    id = 'carsmenu',
    title = 'Menu pojazdów',
    options = {
      {
        title = 'Pojazdy kat. A',
        description = 'Motocykl + samochód',
        icon = 'circle',
        onSelect = function()
            TriggerEvent('hex_drive:a')
        end,
      },
      {
        title = 'Pojazd kat. B',
        description = 'Samochód',
        icon = 'circle',
        onSelect = function()
            TriggerEvent('hex_drive:b')
        end,
      },
      {
        title = 'Pjazd kat. C',
        description = 'Ciężarówka',
        icon = 'circle',
        onSelect = function()
            TriggerEvent('hex_drive:c')
        end,
      },
    }
})

lib.registerContext({
    id = 'lickimenu',
    title = 'Menu licencji',
    options = {
      {
        title = 'Nadaj zdaną teorie',
        description = '',
        icon = 'circle',
        onSelect = function()
            local input = lib.inputDialog('Nadawanie licencji', {'Wpisz ID'})
            TriggerServerEvent('hex_drive:zdanet', input[1])
        end,
      },
      {
        title = 'Nadaj zdaną teorie kat. A',
        description = '',
        icon = 'circle',
        onSelect = function()
            local input = lib.inputDialog('Nadawanie licencji', {'Wpisz ID'})
            TriggerServerEvent('hex_drive:zdanea', input[1])
        end,
      },
      {
        title = 'Nadaj zdaną teorie kat. B',
        description = '',
        icon = 'circle',
        onSelect = function()
            local input = lib.inputDialog('Nadawanie licencji', {'Wpisz ID'})
            TriggerServerEvent('hex_drive:zdaneb', input[1])
        end,
      },
      {
        title = 'Nadaj zdaną teorie kat. C',
        description = '',
        icon = 'circle',
        onSelect = function()
            local input = lib.inputDialog('Nadawanie licencji', {'Wpisz ID'})
            TriggerServerEvent('hex_drive:zdanec', input[1])
        end,
      },
    }
})

blip = AddBlipForCoord(Config.Blip)
SetBlipSprite(blip , 56)
SetBlipScale(blip , 1.0)
SetBlipColour(blip, 70)
SetBlipAsShortRange(blip, true)
BeginTextCommandSetBlipName("STRING")
AddTextComponentString("Szkoła Jazdy")
EndTextCommandSetBlipName(blip)


exports.qtarget:AddBoxZone('bossmenu', vector3(203.8859, -1380.2754, 30.5868), 1.2, 1.2, {
    name= 'bossmenu',
    heading=250.9534,
    debugPoly=false,
    minZ=30.97834,
    maxZ=33.07834,
    }, {
        options = {
            {
                icon = "fas fa-sign-in-alt",
                label = "Otwórz boss menu",
                action = function()  TriggerEvent('esx_society:openBossMenu', 'dmvschool', function(data, menu) end) end
            },
        },
        job = {"dmvschool"},
        distance = 1.5
})

exports.qtarget:AddBoxZone('carsmenu', vector3(207.5278, -1377.5956, 30.5792), 1.2, 1.2, {
    name= 'carsmenu',
    heading=250.9534,
    debugPoly=false,
    minZ=30.97834,
    maxZ=33.07834,
    }, {
        options = {
            {
                icon = "fas fa-sign-in-alt",
                label = "Otwórz menu pojazdów",
                action = function()  lib.showContext('carsmenu') end
            },
        },
        job = {"dmvschool"},
        distance = 1.5
})

exports.qtarget:AddBoxZone('licki', vector3(210.8690, -1380.4952, 30.5875), 1.2, 1.2, {
    name= 'licki',
    heading=250.9534,
    debugPoly=false,
    minZ=30.97834,
    maxZ=33.07834,
    }, {
        options = {
            {
                icon = "fas fa-sign-in-alt",
                label = "Otwórz menu licencji",
                action = function()  lib.showContext('lickimenu') end
            },
        },
        job = {"dmvschool"},
        distance = 1.5
})

exports.qtarget:AddBoxZone('dv', vector3(212.2927, -1384.6141, 30.5826), 1.2, 1.2, {
    name= 'dv',
    heading=250.9534,
    debugPoly=false,
    minZ=30.97834,
    maxZ=33.07834,
    }, {
        options = {
            {
                icon = "fas fa-sign-in-alt",
                label = "Usuń auta",
                action = function()  UsunAuta() end
            },
        },
        job = {"dmvschool"},
        distance = 1.5
})

RegisterNetEvent('hex_drive:a', function()
    if ESX.Game.IsSpawnPointClear(vector3(213.4760, -1375.8120, 30.5875), 3) and ESX.Game.IsSpawnPointClear(vector3(212.2202, -1368.2000, 30.0930), 3) then
    ESX.Game.SpawnVehicle('blista', vector3(213.4760, -1375.8120, 30.5875), 0, function(vehicle)
        ESX.Game.SetVehicleProperties(vehicle, {
            plate = 'EGZAMIN'
        })
    end)
    ESX.Game.SpawnVehicle('pcj', vector3(212.2202, -1368.2000, 30.0930), 227, function(vehicle2)
        ESX.Game.SetVehicleProperties(vehicle2, {
            plate = 'EGZAMIN'
        })
    end)
    else
        TriggerEvent('ox_lib:notify', {
            title = 'Nie ma wolnego miejsca',
            description = '',
            type = 'error'
        })
    end
end)

RegisterNetEvent('hex_drive:b', function()
    if ESX.Game.IsSpawnPointClear(vector3(213.4760, -1375.8120, 30.5875), 3) then
    ESX.Game.SpawnVehicle('blista', vector3(213.4760, -1375.8120, 30.5875), 0, function(vehicle)
        ESX.Game.SetVehicleProperties(vehicle, {
            plate = 'EGZAMIN'
        })
    end)
    else
        TriggerEvent('ox_lib:notify', {
            title = 'Nie ma wolnego miejsca',
            description = '',
            type = 'error'
        })
    end
end)

RegisterNetEvent('hex_drive:c', function()
    if ESX.Game.IsSpawnPointClear(vector3(213.4760, -1375.8120, 30.5875), 3) then
    ESX.Game.SpawnVehicle('mule', vector3(213.4760, -1375.8120, 30.5875), 0, function(vehicle)
        ESX.Game.SetVehicleProperties(vehicle, {
            plate = 'EGZAMIN'
        })
    end)
    else
        TriggerEvent('ox_lib:notify', {
            title = 'Nie ma wolnego miejsca',
            description = '',
            type = 'error'
        })
    end
end)

function UsunAuta()
    local vehicle, dystans = ESX.Game.GetClosestVehicle(vector3(212.2927, -1384.6141, 30.5826))
    if dystans < 5.0 then
    ESX.Game.DeleteVehicle(vehicle)
    else
        TriggerEvent('ox_lib:notify', {
            title = 'Brak pojazdu w pobliżu',
            description = '',
            type = 'error'
        })
    end
end