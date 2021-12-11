version '1.0.1'
author 'freamee'
description 'Aquiver custom notification design'

lua54 'yes'

escrow_ignore {
    '**'
}

client_script {
    'config.lua',
    'cl_aquiver_notify.lua'
}
server_script {
    'config.lua',
    'sv_aquiver_notify.lua'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/js/*.js',
    'html/DEP/*.js',
    'html/img/**',
    'html/style.css',
    'html/notifyHang.mp3',
    'html/ProximaNova.woff'
}

game 'gta5'
fx_version 'adamant'
