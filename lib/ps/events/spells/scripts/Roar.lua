local SKILL_NAME = "Roar"
local SKILL_PROJECTILE = getPokemonSkillProjectile(SKILL_NAME)

function onTargetCreature_Roar(cid, target)
	doCreatureAddStatus(target, CREATURE_STATUS_EXTRASPDEF, CREATURE_STATUS_VAR_BAD, cid)
end

function onTargetTile_Roar(cid, position)
	if (math.random(0, 1) == 1) then
		local pos = getCreaturePosition(cid)
		doSendDistanceShoot(pos, { x = position.x + math.random(-1, 1), y = position.y + math.random(-1, 1), z = position.z }, SKILL_PROJECTILE)
		addEvent(doSendDistanceShoot, 250, pos, { x = position.x + math.random(-1, 1), y = position.y + math.random(-1, 1), z = position.z }, SKILL_PROJECTILE)
		addEvent(doSendDistanceShoot, 500, pos, { x = position.x + math.random(-1, 1), y = position.y + math.random(-1, 1), z = position.z }, SKILL_PROJECTILE)
	end
end

local combat = createCombatObject()
setCombatCallback(combat, CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature_Roar")
setCombatCallback(combat, CALLBACK_PARAM_TARGETTILE, "onTargetTile_Roar")
setCombatArea(combat, createCombatArea(AREA_WAVE7))

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end