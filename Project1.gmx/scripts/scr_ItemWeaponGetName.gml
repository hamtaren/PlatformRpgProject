///scr_ItemWeaponGetName(sprite_index,sprInd)
//pozwala szybko okreslic nazwe broni po jej obrazku (taki jakby podtyp broni)

switch(argument0)
{
    case spr_FloorItemsSword: return scr_ItemSwordNames(argument1); break;
    case spr_FloorItemsStick: return scr_ItemStickNames(argument1); break;
    case spr_FloorItemsAxe: return scr_ItemAxeNames(argument1); break;
    case spr_FloorItemsHammer: return scr_ItemHammerNames(argument1); break;            
}
