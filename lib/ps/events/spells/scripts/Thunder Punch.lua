local SKILL_NAME = "Thunder Punch"

function onTargetCreature_ThunderPunch(cid, target)
	doSendMagicEffect(getCreaturePosition(target), EFFECT_ELECTRIC_DISCHARGE)
    doSkillDamage(cid, target, SKILL_NAME)
    if (not isCreature(target)) then return end -- Defeated
    if (not doPokemonSpecialAbilityCheck(target, POKEMON_SPECIAL_ABILITY_IDS.SHIELD_DUST, nil) and getRandom(0, 100) <=
            (doPokemonSpecialAbilityCheck(cid, POKEMON_SPECIAL_ABILITY_IDS.SERENA_GRACE, nil) and 20 or 10)) then
        doCreatureAddStatus(target, CREATURE_STATUS_PARALYSIS, nil, cid)
    end
end

local combat = createCombatObject() setCombatCallback(combat, CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature_ThunderPunch")
function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
