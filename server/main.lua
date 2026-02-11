local QBCore = exports['qb-core']:GetCoreObject()

-- حدث فتح المتجر
RegisterNetEvent('ST-Shop:openShop')
AddEventHandler('ST-Shop:openShop', function(shopId)
   
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local shopConfig = Config.Shops[shopId]
  
    if not shopConfig then return end
    if Config.DefaultSettings.debug then
    -- تحقق من وجود العناصر
    print('Shop Config:', shopConfig)
    print('Shop items:', shopConfig.items)
    end
    -- تحقق من الصلاحيات
    if shopConfig.whitelist.enabled then
        local allowed = false
        
        if shopConfig.whitelist.jobs then
            local playerJob = Player.PlayerData.job.name
            for _, job in ipairs(shopConfig.whitelist.jobs) do
                if playerJob == job then
                    allowed = true
                    break
                end
            end
        end
        
        if shopConfig.whitelist.license and not allowed then
            if Player.PlayerData.metadata['licences'][shopConfig.whitelist.license] then
                allowed = true
            end
        end
        
        if not allowed then
            TriggerClientEvent('QBCore:Notify', src, 'You dont have permission to access this shop', 'error')
            return
        end
    end

    -- إرسال البيانات إلى العميل مع العناصر
    TriggerClientEvent('ST-Shop:client:openShop', src, {
        name = shopConfig.name,
        label = shopConfig.label, 
        items = shopConfig.items,  -- إرسال العناصر هنا
        currency = Config.DefaultSettings.currencySymbol
        
    })
end)


-- حدث شراء الأغراض
RegisterNetEvent('ST-Shop:server:buyItems')
AddEventHandler('ST-Shop:server:buyItems', function(items, shopName)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local totalPrice = 0

    -- حساب السعر الإجمالي
    for _, item in pairs(items) do
        totalPrice = totalPrice + (item.price * item.amount)
    end

    -- التحقق من الرصيد
    if Player.PlayerData.money['cash'] >= totalPrice then
        -- خصم المال من اللاعب
        local moneyRemoved = Player.Functions.RemoveMoney('cash', totalPrice, 'shop-purchase')
        
        -- التحقق من نجاح خصم المال
        if moneyRemoved then
            print("Money removed: " .. totalPrice .. " from player " .. src)
        else
            print("Error removing money from player " .. src)
            TriggerClientEvent('QBCore:Notify', src, 'Error processing payment. Please try again.', 'error')
            return
        end

        -- إضافة العناصر إلى الحقيبة
        for _, item in pairs(items) do
            -- محاولة إضافة العنصر إلى الحقيبة
            local success = Player.Functions.AddItem(item.name, item.amount)
            
            -- تحقق من نجاح إضافة العنصر
            if success then
                print("Successfully added " .. item.amount .. " of " .. item.name .. " to player inventory.")
            else
                print("Error adding " .. item.name .. " to inventory of player " .. src)
                TriggerClientEvent('QBCore:Notify', src, 'Error adding item to inventory. Please try again.', 'error')
                return
            end
        end
        
        -- إعلام اللاعب بالنجاح
        TriggerClientEvent('QBCore:Notify', src, 'Purchase successful! You received your items.', 'success')
        TriggerClientEvent('ST-Shop:client:forceClose', src)
    else
        -- إعلام اللاعب بالرصيد غير الكافي
        TriggerClientEvent('QBCore:Notify', src, 'You do not have enough money.', 'error')
    end
end)


-- حدث إغلاق من اللاعب
RegisterNetEvent('ST-Shop:server:playerClosedUI')
AddEventHandler('ST-Shop:server:playerClosedUI', function()
    -- يمكن إضافة أي منطق سيرفر مطلوب هنا
    if Config.DefaultSettings.debug then
        print('^3[INFO]^7 Player closed shop UI')
    end
end)

-- إعادة تهيئة المتاجر للاعب
RegisterNetEvent('ST-Shop:server:refreshShops')
AddEventHandler('ST-Shop:server:refreshShops', function()
    local src = source
    TriggerClientEvent('ST-Shop:client:refreshShops', src)
end)