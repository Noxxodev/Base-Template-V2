fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Nevera Development'
description 'Simple Hud'
version '1.0'

shared_scripts {
    '@es_extended/imports.lua',
    'config.lua'
}
client_scripts {
    'client/*.lua'
}

files {
    'html/index.html',
    'html/assets/js/**',
    'html/assets/css/**'
}

ui_page 'html/index.html'