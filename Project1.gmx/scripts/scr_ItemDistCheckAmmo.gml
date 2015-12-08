///scr_ItemDistCheckAmmo(wpn)
//skrypt sprawdzajacy czy mamy tyle amunicji zeby strzelic
wpn = argument0;
//BRON PALNA
if (wpn.sprite_index == spr_FloorItemsGun)
{
    if (objEq.ammo>=wpn.ammo)
    {
        objEq.ammo-=wpn.ammo;
        return true;
    }
    
    return false;
}
//LUKI I KUSZE
else if (wpn.sprite_index == spr_FloorItemsBow)
{
    if (objEq.arrows>=wpn.ammo)
    {
        objEq.arrows-=wpn.ammo;
        return true;
    } 
}

return false;
