///scr_HeroAnimatorHandSpriteCalc(wpnObj)

var wpn = argument0;
if (!instance_exists(wpn))
    return 0;

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
else if (wpn.sprite_index == spr_FloorItemsGun)
{
    if (wpn.ohth == 1)
    {
        if (wpn.sprIndex)    
            return spr_HeroAttackGunOneHand2; //rewolwer
        else
            return spr_HeroAttackGunOneHand1; //Batysol, czy jak to tam bylo ;p
    }
    else
    {
        return spr_InterfaceArrowsB;
    }   
}
else if (wpn.sprite_index == spr_FloorItemsBow)
{
    if (wpn.ohth ==1)
    {
        if (wpn.sprIndex) 
            return spr_HeroAttackBowOneHand2; //nareczna kusza
        else
            return spr_HeroAttackBowOneHand1; //lekka kusza
    }
    else
    {
        return spr_InterfaceArrowsB;
        
    }
}
