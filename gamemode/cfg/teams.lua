/*
    'models/player/Group01/Female_01.mdl',
    'models/player/Group01/Female_02.mdl',
    'models/player/Group01/Female_03.mdl',
    'models/player/Group01/Female_04.mdl',
    'models/player/Group01/Female_06.mdl',
    'models/player/group01/male_01.mdl',
    'models/player/Group01/Male_02.mdl',
    'models/player/Group01/Male_05.mdl',
    'models/player/Group01/Male_06.mdl',
    'models/player/Group01/Male_07.mdl',
    'models/player/Group01/Male_08.mdl',
    'models/player/Group01/Male_09.mdl',
*/

local Group = 'serverwatches'
TEAM_SERVERWATCH = pk.AddTeam('serverwatch', {
	Group 	 = Group,
	Color 	 = Color(190,190,190),
	Model 	 = 'models/player/Group01/Male_02.mdl',
	Material = 'materials/propkill/teams/serverwatch.png',
    Info     = 'Let me tell you why prop kill is the superior gamemode and DarkRP isn\'t bad. I don\'t hate you, you\'re just misguided.'
})


--------------


Group = 'Big Server Men'
TEAM_STONED = pk.AddTeam('aStonedPenguin', {
	Group 	 = Group,
	Color 	 = Color(150,170,200),
	Model 	 = 'models/player/Group01/Male_01.mdl',
	--Material = '',
    Info     = 'I\'m a god damn penguin fuck you'
})

TEAM_CODE = pk.AddTeam('code_gs', {
    Group    = Group,
    Color    = Color(100,255,150),
    Model    = 'models/player/Group01/Female_01.mdl',
    --Material = '',
    Info     = 'Widely known for his drunk_bs'
})