TriggerEvent('esx_service:activateService', 'dmvschool', -1)

TriggerEvent('esx_society:registerSociety', 'dmvschool', "Szkoła Jazdy", 'society_dmvschool', 'society_dmvschool', 'society_dmvschool', {
    type = 'public'
})

RegisterServerEvent('hex_drive:zdanet')
AddEventHandler('hex_drive:zdanet', function(target2)
    TriggerEvent('esx_license:addLicense', target2, 'dmv', function()
	end)
end)

RegisterServerEvent('hex_drive:zdanea')
AddEventHandler('hex_drive:zdanea', function(target2)
    TriggerEvent('esx_license:addLicense', target2, 'drive_bike', function()
	end)
end)

RegisterServerEvent('hex_drive:zdaneb')
AddEventHandler('hex_drive:zdaneb', function(target)
    TriggerEvent('esx_license:addLicense', target, 'drive', function()
	end)
end)

RegisterServerEvent('hex_drive:zdanec')
AddEventHandler('hex_drive:zdanec', function(target2)
    TriggerEvent('esx_license:addLicense', target2, 'drive_truck', function()
	end)
end)