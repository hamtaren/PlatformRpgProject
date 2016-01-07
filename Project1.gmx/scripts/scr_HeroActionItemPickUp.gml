///scr_HeroActionItemPickUp(item)
//podnoszenie przedmiotow
var item = argument0;
if (instance_exists(item))
{
    switch(item.type)
    {
        case ITEM_WEAPON: scr_HeroActionItemPickUpWeapon(item); break;
        case ITEM_ARMOR: scr_HeroActionItemPickUpArmor(item); break;
        case ITEM_DIST: scr_HeroActionItemPickUpDist(item); break;
        case ITEM_QUEST: break;
        default: break;
    }
}
