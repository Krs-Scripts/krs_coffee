RegisterNetEvent("krs-shop:addItem", function(item)
    local source = source
    local ox_inventory = exports.ox_inventory

    if item.nomeItems and item.price then
        print(item.nomeItems)
        print(item.price)
        ox_inventory:AddItem(source, item.nomeItems, 1)

        ox_inventory:RemoveItem(source, "money", item.price)

        TriggerClientEvent('ox_lib:notify', source, { type = 'success', description = "You bought " .. item.nomeItems .. " for $" .. item.price, duration = 4000 })
    end
end)

lib.versionCheck('Krs/krs-coffee')
