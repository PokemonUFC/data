local SKILL_NAME = "Shadow Sneak"
local EFFECT = getPokemonSkillEffect(SKILL_NAME)
local CUSTOM_EFFECT = EFFECT_SHADOW_MINICLOUD_TWO

function onTargetCreature_ShadowSneak(cid, target)
	doSkillDamage(cid, target, SKILL_NAME)
end
local combat = createCombatObject() setCombatCallback(combat, CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature_ShadowSneak")

local function doSpell(cid, target, pos)
    if (isCreature(cid) and isCreature(target)) then
        local targetPos = getCreaturePosition(target)
        if (isSightClear(pos, targetPos, false)) then
            if (getDistanceBetween(pos, targetPos) <= 1) then
                doSkillDamage(cid, target, SKILL_NAME)
            else
                targetPos = getPositionByDirection(pos, getDirectionTo(pos, targetPos), 1)
                doSendMagicEffect(pos, CUSTOM_EFFECT)
                addEvent(doSpell, 300, cid, target, targetPos)
            end
        end
    end
end

function onCastSpell(cid, var)
    doSpell(cid, variantToNumber(var), getCreaturePosition(cid))
	return true
end
