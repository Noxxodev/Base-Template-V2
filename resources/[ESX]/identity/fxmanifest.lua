fx_version 'cerulean'
game 'gta5'
lua54 'yes'
use_experimental_fxv2_oal 'yes'


files {
    'config/shared.lua',
    'locales/*.json'
}

shared_scripts {
    '@ox_lib/init.lua',
    '@es_extended/imports.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/*.lua'
}

client_scripts {
    'client/*.lua'
}

depandencies {
    '/onesync',
    'oxmysql',
    'ox_lib',
    'es_extended',
    'dependance_identity'
}