POKEMON["Charizard"] = {
    pTypes = { ELEMENT_FIRE, ELEMENT_FLYING },
    dexStorage = 10006,
    atk = 84,
    def = 78,
    spAtk = 110,
    spDef = 85,
    energy = 100,
    chance = 800,
    portrait = 12707,
    dexPortrait = 13507,
    fastcallPortrait = 10640,
    catchStorage = 16006,
    evolutions = {},
    description = "Its wings can carry this POKEMON close to an altitude of 4,600 feet. It blows out fire at very high temperatures.",
    skills = { "Tackle", 1, "Scratch", 5, "Ember", 10, "Slash", 15, "Fire Fang", 20, "Wing Attack", 25, "Flamethrower", 30, "Smoke Screen", 40, "Flame Burst", 45, "Scary Face", 50, "Air Slash", 60, "Fire Blast", 65, "Inferno", 70, "Fire Spin", 75 },
    abilities = { POKEMON_ABILITIES.DIG, POKEMON_ABILITIES.STRENGTH, "Fly", "Find", "Cut", "Rock Smash", "Headbutt" },
    eggGroup = { POKEMON_EGG_GROUP_MONSTER, POKEMON_EGG_GROUP_DRAGON },
    eggId = 13979,
    eggChance = 20,
    specialAbilities = { POKEMON_SPECIAL_ABILITY_IDS.BLAZE },
    learnableTms = { TM_IDS.SOFTBOILED, TM_IDS.FLAMETHROWER, TM_IDS.AERIAL_ACE, TM_IDS.ROCK_TOMB, TM_IDS.FURY_CUTTER, TM_IDS.FIRE_PUNCH, TM_IDS.STEEL_WING, TM_IDS.DEFENSE_CURL, TM_IDS.MUD_SLAP, TM_IDS.IRON_TAIL, TM_IDS.HEADBUTT, TM_IDS.DYNAMIC_PUNCH, TM_IDS.ROCK_SLIDE, TM_IDS.SOLAR_BEAM, TM_IDS.MEGA_PUNCH, TM_IDS.SWORDS_DANCE, TM_IDS.MEGA_KICK, TM_IDS.TOXIC, TM_IDS.BODY_SLAM, TM_IDS.TAKE_DOWN, TM_IDS.DOUBLE_EDGE, TM_IDS.SUBMISSION, TM_IDS.COUNTER, TM_IDS.SEISMIC_TOSS, TM_IDS.RAGE, TM_IDS.DRAGON_RAGE, TM_IDS.EARTHQUAKE, TM_IDS.FISSURE, TM_IDS.MIMIC, TM_IDS.DOUBLE_TEAM, TM_IDS.REFLECT, TM_IDS.BIDE, TM_IDS.FIRE_BLAST, TM_IDS.SWIFT, TM_IDS.SKULL_BASH, TM_IDS.REST, TM_IDS.SUBSTITUTE, TM_IDS.HYPER_BEAM, TM_IDS.FOCUS_PUNCH, TM_IDS.DRAGON_CLAW, TM_IDS.BRICK_BREAK, TM_IDS.OVERHEAT, TM_IDS.ROAR, TM_IDS.SANDSTORM },
    eggMoves = { "Air Cutter", "Ancient Power", "Beat Up", "Belly Drum", "Bite", "Counter", "Crunch", "Dragon Dance", "Dragon Pulse", "Dragon Rush", "Flare Blitz", "Focus Punch", "Metal Claw", "Outrage" }
}
-- Mega Charizard X
POKEMON["Mega Charizard X"] = table.deepcopy(POKEMON["Charizard"])
POKEMON["Mega Charizard X"].chance = 250
POKEMON["Mega Charizard X"].pTypes = {ELEMENT_GROUND, ELEMENT_PSYCHIC}
POKEMON["Mega Charizard X"].skills = {"Tackle", 1, "Mud Bomb", 5, "Mud Shot", 10, "Zen Headbutt", 15, "Recover", 20, "Metronome", 25, "Earthquake", 30, "Softboiled", 35, "Psywave", 40, "Magnitude", 45, "Psycho Cut", 50, "Earth Power", 55, "Future Sight", 60, "Fissure", 65, "Psychic", 70}
POKEMON["Mega Charizard X"].abilities = {POKEMON_ABILITIES.ROCK_SMASH, POKEMON_ABILITIES.ROCK_CLIMB, POKEMON_ABILITIES.CUT, POKEMON_ABILITIES.FLASH, POKEMON_ABILITIES.BLINK, POKEMON_ABILITIES.TELEPORT}
POKEMON["Mega Charizard X"].blockTransform = true
POKEMON["Mega Charizard X"].evolutions = {}
POKEMON["Mega Charizard X"].ignoreBallCounter = true
POKEMON["Mega Charizard X"].allowedBall = "ultra"
POKEMON["Mega Charizard X"].portrait = 28069
POKEMON["Mega Charizard X"].fastcallPortrait = 26699
POKEMON["Mega Charizard X"].specialAbilities = {POKEMON_SPECIAL_ABILITY_IDS.GUTS, POKEMON_SPECIAL_ABILITY_IDS.VOLT_ABSORB}
POKEMON["Mega Charizard X"].atk = 102
POKEMON["Mega Charizard X"].def = 77
POKEMON["Mega Charizard X"].spAtk = 85
POKEMON["Mega Charizard X"].spDef = 75

-- Mega Charizard Y
POKEMON["Mega Charizard Y"] = table.deepcopy(POKEMON["Charizard"])
POKEMON["Mega Charizard Y"].chance = 250
POKEMON["Mega Charizard Y"].pTypes = {ELEMENT_GROUND, ELEMENT_PSYCHIC}
POKEMON["Mega Charizard Y"].skills = {"Tackle", 1, "Mud Bomb", 5, "Mud Shot", 10, "Zen Headbutt", 15, "Recover", 20, "Metronome", 25, "Earthquake", 30, "Softboiled", 35, "Psywave", 40, "Magnitude", 45, "Psycho Cut", 50, "Earth Power", 55, "Future Sight", 60, "Fissure", 65, "Psychic", 70}
POKEMON["Mega Charizard Y"].abilities = {POKEMON_ABILITIES.ROCK_SMASH, POKEMON_ABILITIES.ROCK_CLIMB, POKEMON_ABILITIES.CUT, POKEMON_ABILITIES.FLASH, POKEMON_ABILITIES.BLINK, POKEMON_ABILITIES.TELEPORT}
POKEMON["Mega Charizard Y"].blockTransform = true
POKEMON["Mega Charizard Y"].evolutions = {}
POKEMON["Mega Charizard Y"].ignoreBallCounter = true
POKEMON["Mega Charizard Y"].allowedBall = "ultra"
POKEMON["Mega Charizard Y"].portrait = 28069
POKEMON["Mega Charizard Y"].fastcallPortrait = 26699
POKEMON["Mega Charizard Y"].specialAbilities = {POKEMON_SPECIAL_ABILITY_IDS.GUTS, POKEMON_SPECIAL_ABILITY_IDS.VOLT_ABSORB}
POKEMON["Mega Charizard Y"].atk = 102
POKEMON["Mega Charizard Y"].def = 77
POKEMON["Mega Charizard Y"].spAtk = 85
POKEMON["Mega Charizard Y"].spDef = 75

POKEMON["RC Charizard"] = table.deepcopy(POKEMON["Charizard"])
POKEMON["RC Charizard"].pTypes = { ELEMENT_POISON, ELEMENT_NORMAL }
POKEMON["RC Charizard"].blockTransform = true

POKEMON["Suramoon Charizard"] = table.deepcopy(POKEMON["Charizard"])
POKEMON["Suramoon Charizard"].pTypes = { ELEMENT_POISON, ELEMENT_NORMAL }
POKEMON["Suramoon Charizard"].blockTransform = true
POKEMON["Suramoon Charizard"].atk = 105 * 6
POKEMON["Suramoon Charizard"].def = 60 * 3
POKEMON["Suramoon Charizard"].spAtk = 60 * 6
POKEMON["Suramoon Charizard"].spDef = 70 * 3

POKEMON["Clone Charizard"] = table.deepcopy(POKEMON["Charizard"])
POKEMON["Clone Charizard"].pTypes = { ELEMENT_POISON, ELEMENT_NORMAL }
POKEMON["Clone Charizard"].blockTransform = true
POKEMON["Clone Charizard"].atk = 105 * 6
POKEMON["Clone Charizard"].def = 60 * 3
POKEMON["Clone Charizard"].spAtk = 60 * 6
POKEMON["Clone Charizard"].spDef = 70 * 3

POKEMON["Cloned Charizard"] = table.deepcopy(POKEMON["Charizard"])
POKEMON["Cloned Charizard"].blockTransform = true