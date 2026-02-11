local currentShop = nil
local isUIOpen = false
local createdPeds = {}

-- دالة فتح الواجهة
-- دالة لفتح الواجهة وعرض العناصر
RegisterNetEvent('ST-Shop:client:openShop')
AddEventHandler('ST-Shop:client:openShop', function(shopData)
    if Config.DefaultSettings.debug then
    print('Received shop data:', shopData)  -- التحقق من وصول البيانات بشكل صحيح
    end
    if isUIOpen then return end
    
    -- إرسال البيانات إلى واجهة NUI
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = 'open',
        shop = shopData.label,
        items = shopData.items,  -- تأكد من إرسال العناصر بشكل صحيح
        currency = shopData.currency
    })
    
    isUIOpen = true
    currentShop = shopData.name
    
    -- إظهار الواجهة بشكل صريح
    SendNUIMessage({action = 'show'})
    
    if Config.DefaultSettings.debug then
        print('^2[DEBUG]^0 Opening shop:', shopData.name)
    end
end)

--الnui عشان اقدر اربط الواجهات بالسكريبت 
-- حدث لتحديث واجهة NUI عندما يتم إرسال العناصر
RegisterNUICallback('openShopUI', function(shopData, cb)
    -- إرسال العناصر إلى واجهة NUI (HTML/JavaScript)
    SendNUIMessage({
        action = 'showItems',
        items = shopData.items
    })
    cb('ok')
end)


local function CloseShopUI()
    if not isUIOpen then return end

    CreateThread(function()
        SetNuiFocus(false, false)
        SetCursorLocation(0.5, 0.5)
        Wait(100)
        SetPlayerControl(PlayerId(), true, true)
        FreezeEntityPosition(PlayerPedId(), false)
    end)

    SendNUIMessage({ action = 'close' })
    isUIOpen = false
    currentShop = nil
end

RegisterNUICallback("escape", function(_, cb)
    if Config.DefaultSettings.debug then
    print("Escape NUI callback received!") -- تحقق هل يظهر في console
    end
    CloseShopUI()
    cb("ok")
end)
-- تهيئة المتاجر
local function InitializeShops()
    for shopId, shopData in pairs(Config.Shops) do
        if shopData.npc and shopData.npc.coords then
            -- متجر مع NPC
            if createdPeds[shopId] then
                DeletePed(createdPeds[shopId])
            end
            createdPeds[shopId] = exports['qb-target']:SpawnPed({
                model = shopData.npc.model,
                coords = shopData.npc.coords,
                minusOne = true,
                freeze = true,
                invincible = true,
                blockevents = true,
                target = {
                    options = {
                        {
                            type = "client",
                            event = "ST-Shop:client:requestOpen",
                            icon = shopData.npc.target.options[1].icon,
                            label = shopData.npc.target.options[1].label,
                            shop = shopId
                        }
                    },
                    distance = shopData.npc.target.distance
                }
            })

            if shopData.npc.animation then
                RequestAnimDict(shopData.npc.animation.dict)
                while not HasAnimDictLoaded(shopData.npc.animation.dict) do Wait(0) end
                TaskPlayAnim(createdPeds[shopId], shopData.npc.animation.dict, shopData.npc.animation.anim, 8.0, 0.0, -1, 1, 0, false, false, false)
            end

        elseif shopData.coords then
            -- متجر بدون NPC → BoxZone
            exports['qb-target']:AddBoxZone(shopId, shopData.coords, 2.0, 2.0, {
                name = shopId,
                heading = shopData.coords.w or 0.0,
                debugPoly = Config.DefaultSettings.debug,
                minZ = shopData.coords.z - 1,
                maxZ = shopData.coords.z + 2,
            }, {
                options = {
                    {
                        type = "client",
                        event = "ST-Shop:client:requestOpen",
                        icon = "fas fa-shopping-basket",
                        label = "Open Shop",
                        shop = shopId
                    }
                },
                distance = 2.5
            })
        end
    end
end

CreateThread(function()
    -- تحقق من تمكين البليبس في الكونفيج
    for shopName, shopData in pairs(Config.Shops) do
        if shopData.blip then
            local coords
            if shopData.npc and shopData.npc.coords then
                coords = shopData.npc.coords
            elseif shopData.coords then
                coords = shopData.coords
            end
    
            if coords then
                local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
                SetBlipSprite(blip, shopData.blip.id)
                SetBlipColour(blip, shopData.blip.color)
                SetBlipScale(blip, shopData.blip.scale)
    
                BeginTextCommandSetBlipName("STRING")
                AddTextComponentString(shopData.name)
                EndTextCommandSetBlipName(blip)
                SetBlipAsShortRange(blip, true)
            end
        end
    end
    
end)


-- الأحداث الرئيسية
RegisterNetEvent('ST-Shop:client:openShop')
AddEventHandler('ST-Shop:client:openShop', OpenShopUI)

RegisterNetEvent('ST-Shop:client:forceClose')
AddEventHandler('ST-Shop:client:forceClose', CloseShopUI)

RegisterNetEvent('ST-Shop:client:requestOpen')
AddEventHandler('ST-Shop:client:requestOpen', function(data)
    TriggerServerEvent('ST-Shop:openShop', data.shop)
end)

-- معالجة NUI
RegisterNUICallback('closeUI', function(_, cb)
    CloseShopUI()
    cb({})
end)

RegisterNUICallback('buyItems', function(data, cb)
    TriggerServerEvent('ST-Shop:server:buyItems', data.items, currentShop)
    cb({})
end)

-- تهيئة أولية
CreateThread(function()
    Wait(2000) -- انتظار تحميل الموارد
    InitializeShops()
end)

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        for _, ped in pairs(createdPeds) do
            DeletePed(ped)
        end
        CloseShopUI()
    end
end)