ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterNetEvent('Glace:AchatVanille')
AddEventHandler('Glace:AchatVanille', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 6
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('glacev', 1)
        TriggerClientEvent('esx:showNotification', source, "~b~Ticket~s~ : \nMagasin de Glace \nHawick Avenue \n~h~Article  Prix~h~\nGlace à La Vanille ~g~3$ ")

    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('Glace:AchatChocolat')
AddEventHandler('Glace:AchatChocolat', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 6
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('glacec', 1)
        TriggerClientEvent('esx:showNotification', source, "~b~Ticket~s~ : \nMagasin de Glace \nHawick Avenue \n~h~Article  Prix~h~\nGlace au Chocolat ~g~3$ ")

    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('Glace:CitronVert')
AddEventHandler('Glace:CitronVert', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 6
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('glaceci', 1)
        TriggerClientEvent('esx:showNotification', source, "~b~Ticket~s~ : \nMagasin de Glace \nHawick Avenue \n~h~Article  Prix~h~\nGlace au Citron Vert ~g~3$ ")

    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)



RegisterNetEvent('Glace:AchatSchtroumpf')
AddEventHandler('Glace:AchatSchtroumpf', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)  
    local price = 6
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('glaces', 1)
        TriggerClientEvent('esx:showNotification', source, "~b~Ticket~s~ : \nMagasin de Glace \nHawick Avenue \n~h~Article  Prix~h~\nGlace au Schtroumpf ~g~3$ ")

    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)
