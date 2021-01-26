MOVES["Stomp"] = {
    description = "Stomp deals damage and has a 30% chance of causing the target to flinch.",
    makeJump = true,
    makeContact = true,
    category = MOVE_CATEGORY.PHYSICAL,
    clientIconId = 11807,
    iconId = 13433,
    dType = DAMAGE_TYPE_NORMAL,
    functionName = "Stomp",
    type = SKILLS_TYPES.AREA,
    requiredEnergy = 75,
    requiredLevel = 25,
    damage = 65,
    damageType = ELEMENT_NORMAL,
    effect = EFFECT_NOTHING,
    areaEffect = EFFECT_BLOW,
    projectile = nil,
    maxDistance = 6,
    areaName = "bigArea",
    area = bigArea,
    cooldownTime = 9,
    cooldownStorage = 15116
}