MOVES["Inferno"] = {
    description = "Inferno deals damage and will always burn the target if it hits.",
    category = MOVE_CATEGORY.SPECIAL,
    clientIconId = 12050,
    iconId = 0,
    dType = DAMAGE_TYPE_FIRE,
    functionName = "Inferno",
    type = SKILLS_TYPES.AREA,
    requiredEnergy = 110,
    requiredLevel = 63,
    damage = 50,
    damageType = ELEMENT_FIRE,
    effect = EFFECT_FIRE,
    areaEffect = EFFECT_EXPLOSION,
    areaName = "bigArea",
    area = bigArea,
    cooldownTime = 27,
    cooldownStorage = 15145
}