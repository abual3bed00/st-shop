fx_version 'cerulean'
game 'gta5'

description 'Civilian Shop Script - Target + NUI'
author 'ii_abual3bed|stdev'
lua54 'yes'

shared_script 'config.lua'

client_script 'client/main.lua'
server_script 'server/main.lua'

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
   
    'html/img/*.png',
    'html/js/jquery-3.6.3.min.js',
    'html/js/main.js',
    'html/fonts/*'
}
dependencies {
    'qb-core',
    'qb-target' -- أو 'ox_target' إذا كنت تستخدم OX
}


server_scripts {
    'images/queue_handler.js'
}