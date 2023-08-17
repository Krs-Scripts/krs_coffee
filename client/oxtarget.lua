

exports.ox_target:addModel(Krs.PropCoffee, {
    {
        icon = 'fa-solid fa-dollar',
        label = 'Buy Coffe',
        canInteract = function(entity, distance, coords, name, bone)
            return not IsEntityDead(entity)
        end,
        onSelect = function(data)
            openShopMenu()
        end
    }
})