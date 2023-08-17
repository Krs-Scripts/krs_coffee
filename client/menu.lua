
function openShopMenu(data)
  local BeanMachine = {}

  for i = 1, #Krs.Items do
      local item = Krs.Items[i]
      table.insert(BeanMachine, {
          title = item.title,
          description = "Bean Machine Price $" .. item.price,
          icon = item.icon,
          onSelect = function()
              local money = exports.ox_inventory:Search("count", "money")
              if money >= item.price then
                  print(money)
                  if lib.progressCircle({
                    duration = Krs.DurationBar,
                    label = 'buying coffee',
                    position = 'bottom',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                    },
                    anim = {
                        dict = 'mini@sprunk',
                        clip = 'plyr_buy_drink_pt1'
                    },
                }) then TriggerServerEvent('krs-shop:addItem', item) end
                  
              else
                lib.notify({
                  title = 'Bean Machine',
                  description = 'You don\'t have enough money to purchase this item',
                  type = 'error'
              })
              end
          end,
      })
  end

  lib.registerContext({
      id = 'BeanMachine_Menu',
      title = 'Bean Machine Coffee',
      options = BeanMachine
  })

  lib.showContext('BeanMachine_Menu')
end
