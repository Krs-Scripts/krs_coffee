fx_version 'cerulean'
game 'gta5'
lua54 'yes'


author 'Karos#7804'
description 'Krs Coffee'
version  "1.0.1"

shared_scripts {

	'@ox_lib/init.lua',
	'shared/*.lua',
}

client_scripts {

	'client/*.lua'
}

server_scripts {
	
	'server/*.lua',
}

dependencies {

	'ox_lib',
	'ox_inventory'
}