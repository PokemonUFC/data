if (CooperativeTitan) then
    return
end
--
local ITEMID_TOKEN = 18128
local ITEMID_REVIVE = 12248
local ITEMID_HEALTHPOTION = 12247 -- Super Pokemon Potion
local ITEMID_ENERGYPOTION = 13819 -- Pokemon Great Energy Potion

CooperativeTitan = {}
CooperativeTitan.ARENA_IDS = {
    1
}

CooperativeTitan.REASON_IDS = {
    PLAYER_OFFLINE = 0,
    PLAYER_WIN = 1,
    PLAYER_AWAY = 2
}

CooperativeTitan.ARENAS = {
    [1] = {
        startPos = {x = 4995, y = 173, z = 10}, exitPos = {x = 5066, y = 183, z = 8},
        spawnPos = {
            {x = 4986, y = 173, z = 10}, {x = 4989, y = 168, z = 10}, {x = 4995, y = 165, z = 10},
            {x = 5004, y = 173, z = 10}, {x = 5001, y = 179, z = 10}, {x = 4995, y = 181, z = 10},
            {x = 4989, y = 179, z = 10}, {x = 4985, y = 177, z = 10}, {x = 4989, y = 164, z = 10},
            {x = 5005, y = 168, z = 10}, {x = 5005, y = 178, z = 10}},
        working = false, monsters = {}
    },
}

CooperativeTitan.ROUNDS = {
    [1] = {
        spawns = {
            "FI Abra", 24
        },
        rewardScore = 10
    },
    [2] = {
        spawns = {
            "FI Ledyba", 24
        },
        rewardScore = 15
    },
    [3] = {
        spawns = {
            "FI Marill", 24
        },
        rewardScore = 20
    },
    [4] = {
        spawns = {
            "FI Natu", 24
        },
        rewardScore = 25
    },
    [5] = {
        spawns = {
            "FI Ponyta", 24
        },
        rewards = {
            {itemid = ITEMID_REVIVE, count = 1, unique = true}
        },
        rewardScore = 30
    },
    [6] = {
        spawns = {
            "FI The Bird", 1, "FI The Brown Larva", 1, "FI The Bug", 1, "FI The Iron Tooth", 1
        },
        rewards = {
            {itemid = ITEMID_TOKEN, count = 1, unique = true, toDepot = true}
        },
        rewardScore = 35
    },
    [7] = {
        spawns = {
            "FI Psyduck", 24
        },
        rewardScore = 40
    },
    [8] = {
        spawns = {
            "FI Spearow", 24
        },
        rewardScore = 45
    },
    [9] = {
        spawns = {
            "FI Squirtle", 24
        },
        rewardScore = 50
    },
    [10] = {
        spawns = {
            "FI Voltorb", 24
        },
        rewardScore = 55
    },
    [11] = {
        spawns = {
            "FI Vulpix", 24
        },
        rewardScore = 60
    },
    [12] = {
        spawns = {
            "FI The Flameless Gecko", 1, "FI The Singer", 1, "FI The Small Turtle", 1, "FI The Yellow Ray", 1
        },
        rewards = {
            {itemid = ITEMID_TOKEN, count = 2, unique = true, toDepot = true}
        },
        rewardScore = 65
    },
    [13] = {
        spawns = {
            "FI Beedrill", 24
        },
        rewardScore = 70
    },
    [14] = {
        spawns = {
            "FI Butterfree", 24
        },
        rewardScore = 75
    },
    [15] = {
        spawns = {
            "FI Corsola", 24
        },
        rewardScore = 80
    },
    [16] = {
        spawns = {
            "FI Croconaw", 24
        },
        rewardScore = 85
    },
    [17] = {
        spawns = {
            "FI Dunsparce", 24
        },
        rewardScore = 90
    },
    [18] = {
        spawns = {
            "FI The Batjaw", 1, "FI The Cobra", 1, "FI The Drilling Machine", 1, "FI The Poisonous Plant"
        },
        rewards = {
            {itemid = ITEMID_TOKEN, count = 3, unique = true, toDepot = true}
        },
        rewardScore = 95
    },
    [19] = {
        spawns = {
            "FI Yanma", 24
        },
        rewardScore = 100
    },
    [20] = {
        spawns = {
            "FI Gloom", 24
        },
        rewardScore = 105
    },
    [21] = {
        spawns = {
            "FI Golbat", 24
        },
        rewardScore = 110
    },
    [22] = {
        spawns = {
            "FI Kingler", 24
        },
        rewardScore = 115
    },
    [23] = {
        spawns = {
            "FI Sneasel", 24
        },
        rewardScore = 120
    },
    [24] = {
        spawns = {
            "FI The Alligator Fist", 1, "FI The Big Bagtrap", 1, "FI The Psy", "FI The Rocker"
        },
        rewards = {
            {itemid = ITEMID_TOKEN, count = 4, unique = true, toDepot = true}
        },
        rewardScore = 125
    },
    [25] = {
        spawns = {
            "FI Alakazam", 24
        },
        rewardScore = 130
    },
    [26] = {
        spawns = {
            "FI Ampharos", 24
        },
        rewardScore = 135
    },
    [27] = {
        spawns = {
            "FI Arcanine", 24
        },
        rewardScore = 140
    },
    [28] = {
        spawns = {
            "FI Azumarill", 24
        },
        rewardScore = 145
    },
    [29] = {
        spawns = {
            "FI Charizard", 24
        },
        rewardScore = 150
    },
    [30] = {
        spawns = {
            "FI The Dream Eater", 1, "FI The Hipnotist", 1
        },
        rewards = {
            {itemid = ITEMID_TOKEN, count = 5, unique = true, toDepot = true}
        },
        rewardScore = 155
    },
    [31] = {
        spawns = {
            "FI Electabuzz", 24
        },
        rewardScore = 160
    },
    [32] = {
        spawns = {
            "FI Gyarados", 24
        },
        rewardScore = 165
    },
    [33] = {
        spawns = {
            "FI Meganium", 24
        },
        rewardScore = 170
    },
    [34] = {
        spawns = {
            "FI Shuckle", 24
        },
        rewardScore = 175
    },
    [35] = {
        spawns = {
            "FI Typhlosion", 24
        },
        rewardScore = 180
    },
    [36] = {
        spawns = {
            "FI The Hunter", 1, "FI The Lovely", 1, "FI The Thousand Arms", 1, "FI The War Dog", 1
        },
        rewards = {
            {itemid = ITEMID_TOKEN, count = 6, unique = true, toDepot = true}
        },
        rewardScore = 185
    },
}

CooperativeTitan.onStart = function(party, arenaId)
    local ret = true

    CooperativeTitan.ARENAS[arenaId].working = true
    for _, cid in pairs(party) do
        setPlayerFrontierIsland(cid, true)
        if (not doTeleportThing(cid, CooperativeTitan.ARENAS[arenaId].startPos)) then
            ret = false
        end
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "First round start in 15 seconds!")
    end
    addEvent(CooperativeTitan.onThink, 15000, party, arenaId, 1, true)

    return ret
end

CooperativeTitan.onEnd = function(party, arenaId, reason)
    for _, cid in pairs(party) do
        if (isCreature(cid)) then
            doTeleportThing(cid, CooperativeTitan.ARENAS[arenaId].exitPos)
            setPlayerFrontierIsland(cid, false)
            if (reason == CooperativeTitan.REASON_IDS.PLAYER_WIN) then
                doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "Congratulations! You won the Cooperative Titan Arena!")
                doPlayerAddStatistic(cid, PLAYER_STATISTIC_IDS.WIN_FRONTIER_ISLAND, 1)
            else
                doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "You was defeated in the Cooperative Titan Arena!")
            end
        end
    end

    for k, monster in pairs(CooperativeTitan.ARENAS[arenaId].monsters) do
        if (isCreature(monster)) then
            doRemoveCreature(monster)
        end
    end

    table.clear(CooperativeTitan.ARENAS[arenaId].monsters)
    CooperativeTitan.ARENAS[arenaId].monsters = {}
    CooperativeTitan.ARENAS[arenaId].working = false
end

CooperativeTitan.onThink = function(party, arenaId, round, startRound)
    for _, cid in pairs(party) do
        if (not isCreature(cid)) then
            CooperativeTitan.onEnd(party, arenaId, CooperativeTitan.REASON_IDS.PLAYER_OFFLINE)
            return
        end

        if (getDistanceBetween(getCreaturePosition(cid), CooperativeTitan.ARENAS[arenaId].startPos) > 20) then
            CooperativeTitan.onEnd(party, arenaId, CooperativeTitan.REASON_IDS.PLAYER_AWAY)
            return
        end
    end

    for k, monster in pairs(CooperativeTitan.ARENAS[arenaId].monsters) do
        if (not isCreature(monster)) then
            CooperativeTitan.ARENAS[arenaId].monsters[k] = nil
        end
    end

    if (#CooperativeTitan.ARENAS[arenaId].monsters == 0) then
        if (startRound) then
            local level = 1
            for _, cid in pairs(party) do
                local l = getPlayerLevel(cid)
                if (l > level) then
                    level = l
                end
            end
            if (level > POKEMON_LEVEL_MAX) then
                level = POKEMON_LEVEL_MAX
            end

            for i = 1, #CooperativeTitan.ROUNDS[round].spawns, 2 do
                local count = 0
                while (count < CooperativeTitan.ROUNDS[round].spawns[i + 1]) do
                    local pos = table.random(CooperativeTitan.ARENAS[arenaId].spawnPos)
                    local m = doCreateMonster(CooperativeTitan.ROUNDS[round].spawns[i], pos)
                    if (m) then
                        doSendMagicEffect(pos, EFFECT_POISON_GAS_THREE)
                        setMonsterLevel(m, level)
                        CooperativeTitan.ARENAS[arenaId].monsters[#CooperativeTitan.ARENAS[arenaId].monsters + 1] = m
                    end
                    count = count + 1
                end
            end

            local count = 0
            for _, cid in pairs(party) do
                doTeleportThing(cid, {x = CooperativeTitan.ARENAS[arenaId].startPos.x + count,
                    y = CooperativeTitan.ARENAS[arenaId].startPos.y,
                    z = CooperativeTitan.ARENAS[arenaId].startPos.z})
                doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, string.format(__L(cid, "Round %s started!"), round))
                count = count + 1
            end
            count = nil

        else
            local continue = true
            local spec = getSpectators(CooperativeTitan.ARENAS[arenaId].startPos, 20, 20, false)
            if (spec) then
                for k, v in pairs(spec) do -- Fixing bug that sometimes is occur
                    if (isMonster(v) and not isSummon(v)) then
                        continue = false
                        break
                    end
                end
            end

            if (continue) then
                if (CooperativeTitan.ROUNDS[round].rewards) then
                    for _, cid in pairs(party) do
                        for __, v in pairs(CooperativeTitan.ROUNDS[round].rewards) do
                            local item = doCreateItemEx(v.itemid, v.count)
                            if (item) then
                                if (v.unique) then
                                    setItemUniqueOwner(item, cid)
                                end
                                if (v.toDepot) then
                                    doPlayerAddDepotItem(cid, 0, item)
                                    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, string.format(__L(cid, "You received %sx %s directly into your depot."), v.count, getItemNameById(v.itemid)))
                                else
                                    doPlayerAddItemEx(cid, item, false)
                                    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, string.format(__L(cid, "You received %sx %s."), v.count, getItemNameById(v.itemid)))
                                end
                            else
                                log(LOG_TYPES.ERROR, "CooperativeTitan.onThink - Can't create reward",
                                    getCreatureName(cid), v.itemid, v.count, v.unique, round)
                            end
                        end
                    end
                end

                for _, cid in pairs(party) do
                    doPlayerAddHighscoreValue(cid, HIGHSCORE_IDS.COOPERATIVE_TITAN,
                        CooperativeTitan.ROUNDS[round].rewardScore)
                    doPlayerAddHighscoreValue(cid, HIGHSCORE_IDS.FRONTIER_ISLAND,
                        math.ceil(CooperativeTitan.ROUNDS[round].rewardScore / 10))
                end

                round = round + 1
                if (CooperativeTitan.ROUNDS[round]) then
                    for _, cid in pairs(party) do
                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "Next round start in 15 seconds!")
                    end
                    addEvent(CooperativeTitan.onThink, 15000, party, arenaId, round, true)
                else
                    CooperativeTitan.onEnd(party, arenaId, CooperativeTitan.REASON_IDS.PLAYER_WIN)
                end
                return
            end
        end
    end

    addEvent(CooperativeTitan.onThink, 1000, party, arenaId, round, nil)
end

CooperativeTitan.getFreeArena = function()
    for _, arena in pairs(CooperativeTitan.ARENA_IDS) do
        if (not CooperativeTitan.ARENAS[arena].working) then
            return arena
        end
    end
    return nil
end