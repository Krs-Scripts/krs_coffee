ESX = exports.es_extended:getSharedObject()

function LegitItemPrice(item, price)
    for k,v in pairs(Krs.Items) do 
        if v.nomeItems == item then 
            if price == v.price then 
                return true 
            end 
        end
    end
    return false 
end

RegisterNetEvent("krs-shop:addItem", function(item)
    local source = source
    local ox_inventory = exports.ox_inventory

    if item.nomeItems and item.price then
        if not LegitItemPrice(item.nomeItems, item.price) then 
            -- PUT AC BAN TRIGGER HERE
            return print("[KRS_COFFEE] " .. GetPlayerName(source) .. " is exploiting." .. " | Item: " .. item.nomeItems .. " | price: " .. item.price) 
        end
        ox_inventory:AddItem(source, item.nomeItems, 1)

        ox_inventory:RemoveItem(source, "money", item.price)

        TriggerClientEvent('ox_lib:notify', source, { type = 'success', description = "You bought " .. item.nomeItems .. " for $" .. item.price, duration = 4000 })
    end
end)

lib.versionCheck('Krs/krs-coffee')