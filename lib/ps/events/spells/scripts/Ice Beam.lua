local SKILL_NAME = "Ice Beam"
local LOOK_DIRS = {
	[NORTH] = {x = 1, y = -1, effect = EFFECT_ICE_BEAM_VERTICAL},
	[EAST] =  {x = 6, y = 1, effect = EFFECT_ICE_BEAM_HORIZONTAL},
	[SOUTH] = {x = 1, y = 6, effect = EFFECT_ICE_BEAM_VERTICAL},
	[WEST] =  {x = -1, y = 1, effect = EFFECT_ICE_BEAM_HORIZONTAL}
}

function onTargetCreature_IceBeam(cid, target)
    doSkillDamage(cid, target, SKILL_NAME)
    if (not isCreature(target)) then return end -- Defeated
    if (not doPokemonSpecialAbilityCheck(target, POKEMON_SPECIAL_ABILITY_IDS.SHIELD_DUST, nil) and getRandom(0, 100) <=
            (doPokemonSpecialAbilityCheck(cid, POKEMON_SPECIAL_ABILITY_IDS.SERENA_GRACE, nil) and 20 or 10)) then
        doCreatureAddStatus(target, CREATURE_STATUS_FREEZE, nil, cid)
    end
end

local combat = createCombatObject()
setCombatCallback(combat, CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature_IceBeam")
setCombatArea(combat, createCombatArea(AREA_BEAM6_TRIPLE))

local function doSpell(cid, toDirection, lastPosition, var)
	if (isCreature(cid)) then
		lastPosition.x = lastPosition.x + LOOK_DIRS[toDirection].x
		lastPosition.y = lastPosition.y + LOOK_DIRS[toDirection].y
		doSendMagicEffect(lastPosition, LOOK_DIRS[toDirection].effect)
		doCombat(cid, combat, var)
	end
end

function onCastSpell(cid, var)
	doSpell(cid, getCreatureLookDirection(cid), getCreaturePosition(cid), var)
	return true
end