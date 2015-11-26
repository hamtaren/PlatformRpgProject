///scr_HeroActionItemPickUp(item)
//podnoszenie przedmiotow
//TODO: akcja podnoszenia przedmiotow dla kazdego z typow
var item = argument0;
if (instance_exists(item))
{
    switch(item.type)
    {
        case ITEM_WEAPON: scr_HeroActionItemPickUpWeapon(item); break;
        case ITEM_ARMOR: scr_HeroActionItemPickUpArmor(item); break;
        case ITEM_KEY: break;
        case ITEM_QUEST: break;
        case ITEM_GOLD: break;
        default: break;
    }
}
