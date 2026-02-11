# st-shop

---
# 🏪 ST-Shop - FiveM Advanced Shop System

<div align="center">
  <img src="https://img.shields.io/badge/Version-1.0.0-brightgreen.svg" alt="Version">
  <img src="https://img.shields.io/badge/FiveM-CFX-red.svg" alt="FiveM">
  <img src="https://img.shields.io/badge/QBCore-Compatible-blue.svg" alt="QBCore">
  <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License">
</div>

<p align="center">
  <b>متجر متطور لـ FiveM يدعم إطار عمل qbcore مع واجهة مستخدم حديثة، ويدعم qb-target و ox</b><br>
  <i>Advanced shop for Fivem support qbcore framework with modern ui with support qb-target &amp; ox</i>
</p>

---

## 📋 Table of Contents / الفهرس
- [✨ Features / المميزات](#-features--المميزات)
- [📸 Preview / المعاينة](#-preview--المعاينة)
- [⚙️ Requirements / المتطلبات](#️-requirements--المتطلبات)
- [📦 Installation / التنصيب](#-installation--التنصيب)
- [🔧 Configuration / الإعدادات](#-configuration--الإعدادات)
- [🛒 Shop System / نظام المتاجر](#-shop-system--نظام-المتاجر)
- [🎨 UI Features / ميزات الواجهة](#-ui-features--ميزات-الواجهة)
- [📞 Support / الدعم](#-support--الدعم)

---

## ✨ Features / المميزات

### 🌟 **Core Features / المميزات الأساسية**
- 🎯 **Target System**: Supports `qb-target` & `ox_target`
- 💎 **Modern NUI**: Premium HTML/CSS/JS interface
- 🛍️ **Shopping Cart**: Real-time cart management
- 🔍 **Item Filtering**: Category-based product filtering
- 💰 **Multiple Payments**: Cash support (expandable)
- 📍 **Blips System**: Automatic shop markers
- 🔒 **Whitelist System**: Job/License based access
- 🎨 **Responsive Design**: Works on all resolutions

- 🎯 **نظام العين**: يدعم `qb-target` و`ox_target`
- 💎 **واجهة مستخدم حديثة**: واجهة HTML/CSS/JS مميزة
- 🛍️ **سلة التسوق**: إدارة سلة التسوق في الوقت الفعلي
- 🔍 **تصفية المنتجات**: تصفية المنتجات حسب الفئة
- 💰 **خيارات دفع متعددة**: دعم الدفع النقدي (قابل للتوسيع)
- 📍 **نظام العلامات**: علامات تلقائية للمتجر
- 🔒 **نظام القائمة البيضاء**: الوصول بناءً على الوظيفة/الترخيص
- 🎨 **تصميم متجاوب**: يعمل على جميع دقة الشاشات
---

## 📸 Preview / المعاينة

> 🎥 **Screenshots**:


<img width="1096" height="681" alt="image2" src="https://github.com/user-attachments/assets/84ea4fd6-4886-44d7-844b-dc1379b8d59f" />

<img width="1174" height="697" alt="image1" src="https://github.com/user-attachments/assets/0823fef3-70e6-4628-a783-cbc342ebac59" />


---

## ⚙️ Requirements / المتطلبات

### 🔧 **Essential / أساسية**
```
✅ QBCore Framework
✅ qb-target OR ox_target
✅ qb-inventory
```


---

## 📦 Installation / التنصيب

### 🔰 **Quick Setup / التنصيب السريع**

1. **Download & Extract / تحميل وفك الضغط**
```bash
cd resources
git clone [repository-url] st-shop
# OR
# Extract the ZIP file to resources/st-shop
```

2. **Add to server.cfg / إضافة إلى السيرفر**
```cfg
ensure qb-core
ensure qb-target
ensure st-shop
```

3. **Configure / الإعداد**
```lua
-- config.lua - Set your preferences
Config.DefaultSettings.debug = false  -- Disable debug mode
```

### ✅ **Installation Check / التحقق من التنصيب**
```bash
# In server console / في كونسول السيرفر
start st-shop
# Expected output: [ST-Shop] Loaded successfully
```

---

## 🔧 Configuration / الإعدادات

### 📝 **Basic Configuration / الإعدادات الأساسية**

```lua
Config.DefaultSettings = {
    currencySymbol = '$',           -- العملة
    enableAnimation = true,        -- تفعيل الرسوم
    debug = false,                -- وضع التصحيح
    useTargetSystem = true,      -- نظام الهدف
    enableBlips = true          -- إظهار البليبس
}
```

### 🏪 **Adding a New Shop / إضافة متجر جديد**

```lua
Config.Shops['your_shop_id'] = {
    name = "Shop Name",
    label = "Display Name",
    blip = {id = 52, color = 4, scale = 0.5},
    
    -- طريقة 1: مع NPC
    npc = {
        model = 'mp_m_shopkeep_01',
        coords = vector4(x, y, z, h),
        animation = {
            dict = 'mp_am_hold_up',
            anim = 'purchase_handgun'
        },
        target = {
            distance = 2.5,
            options = {
                {
                    label = 'Open Shop',
                    icon = 'fas fa-shopping-basket'
                }
            }
        }
    },
    
    -- طريقة 2: بدون NPC
    coords = vector4(x, y, z, h),
    
    -- المنتجات
    items = {
        {
            item = 'tosti',
            price = 10,
            display = 'Tosti',
            category = 'food',
            description = 'Delicious toast' -- اختياري
        }
    },
    
    -- نظام الصلاحيات
    whitelist = {
        enabled = false,
        jobs = {'police', 'ambulance'},
        license = 'weapon' -- اختياري
    }
}
```

---



### 🎯 **Shop Types / أنواع المتاجر**

#### 🏪 **Type 1: NPC Shop / متجر مع شخصية**
```lua
-- 24/7 Supermarket, Ammunation, Tools Shop
npc = {
    model = 'mp_m_shopkeep_01',  -- نموذج الشخصية
    coords = vector4(x, y, z, h), -- الموقع
    animation = {...}            -- حركات الشخصية
}
```

#### 📍 **Type 2: Zone Shop / متجر بدون شخصية**
```lua
-- Police station, Hospital, etc.
coords = vector4(x, y, z, h)  -- منطقة التفاعل
```

### 🔒 **Whitelist System / نظام الصلاحيات**

```lua
-- Example: Police only shop
whitelist = {
    enabled = true,
    jobs = {'police', 'sheriff'},  -- الوظائف المسموحة
    license = 'weapon'             -- الرخص المسموحة
}
```

---

## 🎨 UI Features / ميزات الواجهة


- ✅ **Real-time price calculation** - حساب السعر فورياً
- ✅ **Quantity controls (+/-)** - التحكم بالكمية
- ✅ **Category filtering** - تصفية حسب الفئة
- ✅ **Responsive design** - تصميم متجاوب
- ✅ **Smooth animations** - حركات سلسة
- ✅ **Error handling** - معالجة الأخطاء
- ✅ **Loading states** - حالات التحميل

---

### 📊 **Debug Mode / وضع التصحيح**

```lua
-- Enable debug in config.lua
Config.DefaultSettings.debug = true

-- Check console for:
-- [DEBUG] Opening shop: ShopName
-- Received shop data: {...}
-- Escape NUI callback received!
```

---

## 📞 Support / الدعم

### 🆘 **Getting Help / الحصول على المساعدة**

- 💬 **Discord**: [Join Server](https://discord.gg/HCskVYZPtB)


---

<div align="center">
  <h3>⭐ Don't forget to leave a star! ⭐</h3>
  <p>Developed with ❤️ by ii_abual3bed | stdev</p>
  
  [⬆ Back to Top](#-st-shop---fivem-advanced-shop-system)
</div>
