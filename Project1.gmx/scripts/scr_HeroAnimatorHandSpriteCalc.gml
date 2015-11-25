///scr_HeroAnimatorHandSpriteCalc(wpnObj)

var wpn = argument0;

if (wpn.sprite_index == spr_FloorItemsSword)
{
    return spr_HeroAttackSword1;
}
else if (wpn.sprite_index == spr_FloorItemsAxe)
{
    return spr_HeroAttackAxe1;
}
else if (wpn.sprite_index == spr_FloorItemsStick)
{
    return spr_HeroAttackStick1;
}
else if (wpn.sprite_index == spr_FloorItemsHammer)
{
    return spr_HeroAttackHammer1;
}
