if (BattleCase) then
    return
end

BattleCase = {}

-- Constants
local BATTLE_STATUS_OWN = 1
local BATTLES_NUMBER = 250 -- Missing unown

local BATTLE_ITEMID_BY_POKEMON_NAME = {
    ["Bulbasaur"] = 12271,
    ["Ivysaur"] = 17820,
    ["Venusaur"] = 17821,
    ["Charmander"] = 17822,
    ["Charmeleon"] = 17823,
    ["Charizard"] = 17824,
    ["Squirtle"] = 17825,
    ["Wartortle"] = 17826,
    ["Blastoise"] = 17827,
    ["Caterpie"] = 17828,
    ["Metapod"] = 17829,
    ["Butterfree"] = 17830,
    ["Weedle"] = 17831,
    ["Kakuna"] = 17832,
    ["Beedrill"] = 17833,
    ["Pidgey"] = 17834,
    ["Pidgeotto"] = 17835,
    ["Pidgeot"] = 12253,
    ["Rattata"] = 17836,
    ["Raticate"] = 17837,
    ["Spearow"] = 17838,
    ["Fearow"] = 17839,
    ["Ekans"] = 17840,
    ["Arbok"] = 17841,
    ["Pikachu"] = 12256,
    ["Raichu"] = 12272,
    ["Sandshrew"] = 17842,
    ["Sandslash"] = 17843,
    ["Nidorana"] = 17844,
    ["Nidorina"] = 17845,
    ["Nidoqueen"] = 17846,
    ["Nidorano"] = 17847,
    ["Nidorino"] = 17848,
    ["Nidoking"] = 17849,
    ["Clefairy"] = 17850,
    ["Clefable"] = 17851,
    ["Vulpix"] = 17852,
    ["Ninetales"] = 17853,
    ["Jigglypuff"] = 12270,
    ["Wigglytuff"] = 17854,
    ["Zubat"] = 17855,
    ["Golbat"] = 17856,
    ["Oddish"] = 17857,
    ["Gloom"] = 17858,
    ["Vileplume"] = 17859,
    ["Paras"] = 17860,
    ["Parasect"] = 17861,
    ["Venonat"] = 17862,
    ["Venomoth"] = 17863,
    ["Diglett"] = 17864,
    ["Dugtrio"] = 17865,
    ["Meowth"] = 17866,
    ["Persian"] = 17867,
    ["Psyduck"] = 12263,
    ["Golduck"] = 17868,
    ["Mankey"] = 17869,
    ["Primeape"] = 17870,
    ["Growlithe"] = 17871,
    ["Arcanine"] = 17872,
    ["Poliwag"] = 17873,
    ["Poliwhirl"] = 17874,
    ["Poliwrath"] = 12255,
    ["Abra"] = 17875,
    ["Kadabra"] = 17876,
    ["Alakazam"] = 17877,
    ["Machop"] = 17878,
    ["Machoke"] = 17879,
    ["Machamp"] = 17880,
    ["Bellsprout"] = 17881,
    ["Weepinbell"] = 17882,
    ["Victreebel"] = 17883,
    ["Tentacool"] = 17884,
    ["Tentacruel"] = 17885,
    ["Geodude"] = 17886,
    ["Graveler"] = 17887,
    ["Golem"] = 17888,
    ["Ponyta"] = 17889,
    ["Rapidash"] = 17890,
    ["Slowpoke"] = 17891,
    ["Slowbro"] = 12266,
    ["Magnemite"] = 17892,
    ["Magneton"] = 17893,
    ["Farfetchd"] = 17894,
    ["Doduo"] = 17895,
    ["Dodrio"] = 17896,
    ["Seel"] = 12257,
    ["Dewgong"] = 17897,
    ["Grimer"] = 17898,
    ["Muk"] = 17899,
    ["Shellder"] = 17900,
    ["Cloyster"] = 17901,
    ["Gastly"] = 17902,
    ["Haunter"] = 17903,
    ["Gengar"] = 17904,
    ["Onix"] = 17905,
    ["Drowzee"] = 17906,
    ["Hypno"] = 17907,
    ["Krabby"] = 17908,
    ["Kingler"] = 17909,
    ["Voltorb"] = 17910,
    ["Electrode"] = 17911,
    ["Exeggcute"] = 17912,
    ["Exeggutor"] = 17913,
    ["Cubone"] = 12269,
    ["Marowak"] = 17914,
    ["Hitmonlee"] = 17915,
    ["Hitmonchan"] = 17916,
    ["Lickitung"] = 17917,
    ["Koffing"] = 17918,
    ["Weezing"] = 17919,
    ["Rhyhorn"] = 17920,
    ["Rhydon"] = 17921,
    ["Chansey"] = 12268,
    ["Tangela"] = 17922,
    ["Kangaskhan"] = 17923,
    ["Horsea"] = 17924,
    ["Seadra"] = 17925,
    ["Goldeen"] = 17926,
    ["Seaking"] = 17927,
    ["Staryu"] = 17928,
    ["Starmie"] = 17929,
    ["Mr. Mime"] = 17930,
    ["Scyther"] = 17931,
    ["Jynx"] = 17932,
    ["Electabuzz"] = 17933,
    ["Magmar"] = 17934,
    ["Pinsir"] = 17935,
    ["Tauros"] = 17936,
    ["Magikarp"] = 17937,
    ["Gyarados"] = 17938,
    ["Lapras"] = 12258,
    ["Ditto"] = 17939,
    ["Eevee"] = 17940,
    ["Vaporeon"] = 17941,
    ["Jolteon"] = 17942,
    ["Flareon"] = 17943,
    ["Porygon"] = 17944,
    ["Omanyte"] = 12267,
    ["Omastar"] = 17945,
    ["Kabuto"] = 12265,
    ["Kabutops"] = 17946,
    ["Aerodactyl"] = 17947,
    ["Snorlax"] = 17948,
    ["Articuno"] = 12260,
    ["Zapdos"] = 12261,
    ["Moltres"] = 12262,
    ["Dratini"] = 17949,
    ["Dragonair"] = 17950,
    ["Dragonite"] = 17951,
    ["Mewtwo"] = 12264,
    ["Mew"] = 12254,
    ["Chikorita"] = 17952,
    ["Bayleef"] = 17953,
    ["Meganium"] = 17954,
    ["Cyndaquil"] = 17955,
    ["Quilava"] = 17956,
    ["Typhlosion"] = 17957,
    ["Totodile"] = 17958,
    ["Croconaw"] = 17959,
    ["Feraligatr"] = 17960,
    ["Sentret"] = 17961,
    ["Furret"] = 17962,
    ["Hoothoot"] = 17963,
    ["Noctowl"] = 17964,
    ["Ledyba"] = 17965,
    ["Ledian"] = 17966,
    ["Spinarak"] = 17967,
    ["Ariados"] = 17968,
    ["Crobat"] = 17969,
    ["Chinchou"] = 17970,
    ["Lanturn"] = 17971,
    ["Pichu"] = 17972,
    ["Cleffa"] = 17973,
    ["Igglybuff"] = 17974,
    ["Togepi"] = 17975,
    ["Togetic"] = 17976,
    ["Natu"] = 17977,
    ["Xatu"] = 17978,
    ["Mareep"] = 17979,
    ["Flaaffy"] = 17980,
    ["Ampharos"] = 17981,
    ["Bellossom"] = 17982,
    ["Marill"] = 17983,
    ["Azumarill"] = 17984,
    ["Sudowoodo"] = 17985,
    ["Politoed"] = 17986,
    ["Hoppip"] = 17987,
    ["Skiploom"] = 17988,
    ["Jumpluff"] = 17989,
    ["Aipom"] = 17990,
    ["Sunkern"] = 17991,
    ["Sunflora"] = 17992,
    ["Yanma"] = 17993,
    ["Wooper"] = 17994,
    ["Quagsire"] = 17995,
    ["Espeon"] = 17996,
    ["Umbreon"] = 17997,
    ["Murkrow"] = 17998,
    ["Slowking"] = 17999,
    ["Misdreavus"] = 18000,
    ["Wobbuffet"] = 18001,
    ["Girafarig"] = 18002,
    ["Pineco"] = 18003,
    ["Forretress"] = 18004,
    ["Dunsparce"] = 18005,
    ["Gligar"] = 18006,
    ["Steelix"] = 18007,
    ["Snubbull"] = 18008,
    ["Granbull"] = 18009,
    ["Qwilfish"] = 18010,
    ["Scizor"] = 18011,
    ["Shuckle"] = 18012,
    ["Heracross"] = 18013,
    ["Sneasel"] = 18014,
    ["Teddiursa"] = 18015,
    ["Ursaring"] = 18016,
    ["Slugma"] = 18017,
    ["Magcargo"] = 18018,
    ["Swinub"] = 18019,
    ["Piloswine"] = 18020,
    ["Corsola"] = 18021,
    ["Remoraid"] = 18022,
    ["Octillery"] = 18023,
    ["Delibird"] = 18024,
    ["Mantine"] = 18025,
    ["Skarmory"] = 18026,
    ["Houndour"] = 18027,
    ["Houndoom"] = 18028,
    ["Kingdra"] = 18029,
    ["Phanpy"] = 18030,
    ["Donphan"] = 18031,
    ["Porygon2"] = 18032,
    ["Stantler"] = 18033,
    ["Smeargle"] = 18034,
    ["Tyrogue"] = 18035,
    ["Hitmontop"] = 18036,
    ["Smoochum"] = 18037,
    ["Elekid"] = 18038,
    ["Magby"] = 18039,
    ["Miltank"] = 18040,
    ["Blissey"] = 18041,
    ["Raikou"] = 18042,
    ["Entei"] = 18043,
    ["Suicune"] = 18044,
    ["Larvitar"] = 18045,
    ["Pupitar"] = 18046,
    ["Tyranitar"] = 18047,
    ["Lugia"] = 12259,
    ["Ho-Oh"] = 18048,
    ["Celebi"] = 18049,
} -- 1 missing?

local POKEMON_NAME_BY_BATTLE_ITEMID = table.inverse(BATTLE_ITEMID_BY_POKEMON_NAME)

local BATTLE_STORAGE_BY_POKEMON_NAME = {
    ["Bulbasaur"] = 66000,
    ["Ivysaur"] = 66001,
    ["Venusaur"] = 66002,
    ["Charmander"] = 66003,
    ["Charmeleon"] = 66004,
    ["Charizard"] = 66005,
    ["Squirtle"] = 66006,
    ["Wartortle"] = 66007,
    ["Blastoise"] = 66008,
    ["Caterpie"] = 66009,
    ["Metapod"] = 66010,
    ["Butterfree"] = 66011,
    ["Weedle"] = 66012,
    ["Kakuna"] = 66013,
    ["Beedrill"] = 66014,
    ["Pidgey"] = 66015,
    ["Pidgeotto"] = 66016,
    ["Pidgeot"] = 66017,
    ["Rattata"] = 66018,
    ["Raticate"] = 66019,
    ["Spearow"] = 66020,
    ["Fearow"] = 66021,
    ["Ekans"] = 66022,
    ["Arbok"] = 66023,
    ["Pikachu"] = 66024,
    ["Raichu"] = 66025,
    ["Sandshrew"] = 66026,
    ["Sandslash"] = 66027,
    ["Nidorana"] = 66028,
    ["Nidorina"] = 66029,
    ["Nidoqueen"] = 66030,
    ["Nidorano"] = 66031,
    ["Nidorino"] = 66032,
    ["Nidoking"] = 66033,
    ["Clefairy"] = 66034,
    ["Clefable"] = 66035,
    ["Vulpix"] = 66036,
    ["Ninetales"] = 66037,
    ["Jigglypuff"] = 66038,
    ["Wigglytuff"] = 66039,
    ["Zubat"] = 66040,
    ["Golbat"] = 66041,
    ["Oddish"] = 66042,
    ["Gloom"] = 66043,
    ["Vileplume"] = 66044,
    ["Paras"] = 66045,
    ["Parasect"] = 66046,
    ["Venonat"] = 66047,
    ["Venomoth"] = 66048,
    ["Diglett"] = 66049,
    ["Dugtrio"] = 66050,
    ["Meowth"] = 66051,
    ["Persian"] = 66052,
    ["Psyduck"] = 66053,
    ["Golduck"] = 66054,
    ["Mankey"] = 66055,
    ["Primeape"] = 66056,
    ["Growlithe"] = 66057,
    ["Arcanine"] = 66058,
    ["Poliwag"] = 66059,
    ["Poliwhirl"] = 66060,
    ["Poliwrath"] = 66061,
    ["Abra"] = 66062,
    ["Kadabra"] = 66063,
    ["Alakazam"] = 66064,
    ["Machop"] = 66065,
    ["Machoke"] = 66066,
    ["Machamp"] = 66067,
    ["Bellsprout"] = 66068,
    ["Weepinbell"] = 66069,
    ["Victreebel"] = 66070,
    ["Tentacool"] = 66071,
    ["Tentacruel"] = 66072,
    ["Geodude"] = 66073,
    ["Graveler"] = 66074,
    ["Golem"] = 66075,
    ["Ponyta"] = 66076,
    ["Rapidash"] = 66077,
    ["Slowpoke"] = 66078,
    ["Slowbro"] = 66079,
    ["Magnemite"] = 66080,
    ["Magneton"] = 66081,
    ["Farfetchd"] = 66082,
    ["Doduo"] = 66083,
    ["Dodrio"] = 66084,
    ["Seel"] = 66085,
    ["Dewgong"] = 66086,
    ["Grimer"] = 66087,
    ["Muk"] = 66088,
    ["Shellder"] = 66089,
    ["Cloyster"] = 66090,
    ["Gastly"] = 66091,
    ["Haunter"] = 66092,
    ["Gengar"] = 66093,
    ["Onix"] = 66094,
    ["Drowzee"] = 66095,
    ["Hypno"] = 66096,
    ["Krabby"] = 66097,
    ["Kingler"] = 66098,
    ["Voltorb"] = 66099,
    ["Electrode"] = 66100,
    ["Exeggcute"] = 66101,
    ["Exeggutor"] = 66102,
    ["Cubone"] = 66103,
    ["Marowak"] = 66104,
    ["Hitmonlee"] = 66105,
    ["Hitmonchan"] = 66106,
    ["Lickitung"] = 66107,
    ["Koffing"] = 66108,
    ["Weezing"] = 66109,
    ["Rhyhorn"] = 66110,
    ["Rhydon"] = 66111,
    ["Chansey"] = 66112,
    ["Tangela"] = 66113,
    ["Kangaskhan"] = 66114,
    ["Horsea"] = 66115,
    ["Seadra"] = 66116,
    ["Goldeen"] = 66117,
    ["Seaking"] = 66118,
    ["Staryu"] = 66119,
    ["Starmie"] = 66120,
    ["Mr. Mime"] = 66121,
    ["Scyther"] = 66122,
    ["Jynx"] = 66123,
    ["Electabuzz"] = 66124,
    ["Magmar"] = 66125,
    ["Pinsir"] = 66126,
    ["Tauros"] = 66127,
    ["Magikarp"] = 66128,
    ["Gyarados"] = 66129,
    ["Lapras"] = 66130,
    ["Ditto"] = 66131,
    ["Eevee"] = 66132,
    ["Vaporeon"] = 66133,
    ["Jolteon"] = 66134,
    ["Flareon"] = 66135,
    ["Porygon"] = 66136,
    ["Omanyte"] = 66137,
    ["Omastar"] = 66138,
    ["Kabuto"] = 66139,
    ["Kabutops"] = 66140,
    ["Aerodactyl"] = 66141,
    ["Snorlax"] = 66142,
    ["Articuno"] = 66143,
    ["Zapdos"] = 66144,
    ["Moltres"] = 66145,
    ["Dratini"] = 66146,
    ["Dragonair"] = 66147,
    ["Dragonite"] = 66148,
    ["Mewtwo"] = 66149,
    ["Mew"] = 66150,
    ["Chikorita"] = 66151,
    ["Bayleef"] = 66152,
    ["Meganium"] = 66153,
    ["Cyndaquil"] = 66154,
    ["Quilava"] = 66155,
    ["Typhlosion"] = 66156,
    ["Totodile"] = 66157,
    ["Croconaw"] = 66158,
    ["Feraligatr"] = 66159,
    ["Sentret"] = 66160,
    ["Furret"] = 66161,
    ["Hoothoot"] = 66162,
    ["Noctowl"] = 66163,
    ["Ledyba"] = 66164,
    ["Ledian"] = 66165,
    ["Spinarak"] = 66166,
    ["Ariados"] = 66167,
    ["Crobat"] = 66168,
    ["Chinchou"] = 66169,
    ["Lanturn"] = 66170,
    ["Pichu"] = 66171,
    ["Cleffa"] = 66172,
    ["Igglybuff"] = 66173,
    ["Togepi"] = 66174,
    ["Togetic"] = 66175,
    ["Natu"] = 66176,
    ["Xatu"] = 66177,
    ["Mareep"] = 66178,
    ["Flaaffy"] = 66179,
    ["Ampharos"] = 66180,
    ["Bellossom"] = 66181,
    ["Marill"] = 66182,
    ["Azumarill"] = 66183,
    ["Sudowoodo"] = 66184,
    ["Politoed"] = 66185,
    ["Hoppip"] = 66186,
    ["Skiploom"] = 66187,
    ["Jumpluff"] = 66188,
    ["Aipom"] = 66189,
    ["Sunkern"] = 66190,
    ["Sunflora"] = 66191,
    ["Yanma"] = 66192,
    ["Wooper"] = 66193,
    ["Quagsire"] = 66194,
    ["Espeon"] = 66195,
    ["Umbreon"] = 66196,
    ["Murkrow"] = 66197,
    ["Slowking"] = 66198,
    ["Misdreavus"] = 66199,
    ["Unown"] = 66200,
    ["Wobbuffet"] = 66201,
    ["Girafarig"] = 66202,
    ["Pineco"] = 66203,
    ["Forretress"] = 66204,
    ["Dunsparce"] = 66205,
    ["Gligar"] = 66206,
    ["Steelix"] = 66207,
    ["Snubbull"] = 66208,
    ["Granbull"] = 66209,
    ["Qwilfish"] = 66210,
    ["Scizor"] = 66211,
    ["Shuckle"] = 66212,
    ["Heracross"] = 66213,
    ["Sneasel"] = 66214,
    ["Teddiursa"] = 66215,
    ["Ursaring"] = 66216,
    ["Slugma"] = 66217,
    ["Magcargo"] = 66218,
    ["Swinub"] = 66219,
    ["Piloswine"] = 66220,
    ["Corsola"] = 66221,
    ["Remoraid"] = 66222,
    ["Octillery"] = 66223,
    ["Delibird"] = 66224,
    ["Mantine"] = 66225,
    ["Skarmory"] = 66226,
    ["Houndour"] = 66227,
    ["Houndoom"] = 66228,
    ["Kingdra"] = 66229,
    ["Phanpy"] = 66230,
    ["Donphan"] = 66231,
    ["Porygon2"] = 66232,
    ["Stantler"] = 66233,
    ["Smeargle"] = 66234,
    ["Tyrogue"] = 66235,
    ["Hitmontop"] = 66236,
    ["Smoochum"] = 66237,
    ["Elekid"] = 66238,
    ["Magby"] = 66239,
    ["Miltank"] = 66240,
    ["Blissey"] = 66241,
    ["Raikou"] = 66242,
    ["Entei"] = 66243,
    ["Suicune"] = 66244,
    ["Larvitar"] = 66245,
    ["Pupitar"] = 66246,
    ["Tyranitar"] = 66247,
    ["Lugia"] = 66248,
    ["Ho-Oh"] = 66249,
    ["Celebi"] = 66250,
}

-- Vars

-- Methods Local
local function getPlayerBattleStatus(cid, pokemonName)
    return getCreatureStorage(cid, BATTLE_STORAGE_BY_POKEMON_NAME[pokemonName])
end

local function setPlayerBattleStatus(cid, pokemonName, own)
    local status = own and BATTLE_STATUS_OWN or -1
    doCreatureSetStorage(cid, BATTLE_STORAGE_BY_POKEMON_NAME[pokemonName], status)
    doPlayerSendBattleCaseUpdate(cid, getPokemonNumberByName(pokemonName), status)

    if (own) then
        setPlayerTotalCasedBattles(cid, getPlayerTotalCasedBattles(cid) + 1)
    end
end

local function doSendAlbumStatus(cid)
    local status = {}
    for _, pokemonName in pairs(pokemonNamesWithoutShiny) do
        if (BATTLE_ITEMID_BY_POKEMON_NAME[pokemonName]) then
            table.insert(status, getPlayerBattleStatus(cid, pokemonName))
        end
    end
    doPlayerSendBattleCaseStatus(cid, status)

    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ORANGE, string.format(__L(cid, "Battle case status: [%s/%s]."), getPlayerTotalCasedBattles(cid), BATTLES_NUMBER))
end

-- Methods Global
BattleCase.onUse = function(cid, item, fromPosition, itemEx, toPosition)
    if (itemEx.uid == cid) then
        doSendAlbumStatus(cid)
        return true
    end

    if (not isItem(itemEx) or not POKEMON_NAME_BY_BATTLE_ITEMID[itemEx.itemid]) then
        doPlayerSendDefaultCancel(cid, RETURNVALUE_NOTPOSSIBLE)
        return true

    elseif (fromPosition.x ~= CONTAINER_POSITION or toPosition.x ~= CONTAINER_POSITION) then -- TODO: This doesnt mean that the player is carring the item or no
        doPlayerSendCancel(cid, "You must pick up this item first.")
        return true
    end

    local pokemonName = POKEMON_NAME_BY_BATTLE_ITEMID[itemEx.itemid]
    if (getPlayerBattleStatus(cid, POKEMON_NAME_BY_BATTLE_ITEMID[itemEx.itemid]) == BATTLE_STATUS_OWN) then
        doPlayerSendCancel(cid, "Your album already have this doll.")
        return true
    end

    setPlayerBattleStatus(cid, pokemonName, true)
    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, string.format(__L(cid, "Your doll case now have the %s doll!"), pokemonName))
    doSendMagicEffect(getCreaturePosition(cid), EFFECT_FIREWORK_YELLOW)
    doRemoveItem(itemEx.uid, 1)
    return true
end

BattleCase.getPokemonNameByBattleItemId = function(itemId)
    return POKEMON_NAME_BY_BATTLE_ITEMID[itemId]
end