///scr_ItemWeaponGetBase(sprite_index,sprIndex,gettingValueIndex)
//pobiera bazowe wartosci
//gettingValueIndex = indeks pobieranej wartosci

//val0 = OH/TH, val1 = klute, val2 = obuch, val3 = ammo, val4 = attackSpeed

if (argument0 == spr_FloorItemsBow)
{
    switch(argument1)
    {
        case 0: var val; val[0] = 1; val[1] = 5; val[2] =  0; val[3] = 2; val[4] = 0.75; return val[argument2];
        case 1: var val; val[0] = 1; val[1] = 3; val[2] =  0; val[3] = 1; val[4] = 1; return val[argument2];
        case 2: var val; val[0] = 2; val[1] = 3; val[2] =  0; val[3] = 1; val[4] = 0.8; return val[argument2];
        case 3: var val; val[0] = 2; val[1] = 10; val[2] = 0; val[3] = 3; val[4] = 0.5; return val[argument2];
        case 4: var val; val[0] = 2; val[1] = 15; val[2] = 0; val[3] = 2; val[4] = 1; return val[argument2];
        case 5: var val; val[0] = 2; val[1] = 30; val[2] = 0; val[3] = 4; val[4] = 0.25; return val[argument2];
    }
}
else if (argument0 == spr_FloorItemsGun)
{
    switch(argument1)
    {
        case 0: var val; val[0] = 1; val[1] = 0; val[2] = 7; val[3] = 1; val[4] = 0.3; return val[argument2];
        case 1: var val; val[0] = 1; val[1] = 0; val[2] = 10; val[3] = 3; val[4] = 0.5; return val[argument2];
        case 2: var val; val[0] = 2; val[1] = 0; val[2] = 10; val[3] = 2; val[4] = 0.5; return val[argument2];
        case 3: var val; val[0] = 2; val[1] = 0; val[2] = 15; val[3] = 1; val[4] = 0.3; return val[argument2];
        case 4: var val; val[0] = 2; val[1] = 0; val[2] = 5; val[3] = 1; val[4] = 1.75; return val[argument2];
        case 5: var val; val[0] = 2; val[1] = 0; val[2] = 40; val[3] = 5; val[4] = 0.25; return val[argument2];
    }
}


