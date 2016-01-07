///scr_ItemWeaponGetBase(sprite_index,sprIndex,gettingValueIndex)
//pobiera bazowe wartosci
//gettingValueIndex = indeks pobieranej wartosci

if (argument0 == spr_FloorItemsSword)
{
    switch(argument1)
    {
        case 0: var val; val[0] = 0; val[1] = 1; val[2] =  0; val[3] = 0; val[4] = 1.25; return val[argument2];
        case 1: var val; val[0] = 0; val[1] = 3; val[2] =  0; val[3] = 0; val[4] = 1.2; return val[argument2];
        case 2: var val; val[0] = 0; val[1] = 5; val[2] =  0; val[3] = 1; val[4] = 1; return val[argument2];
        case 3: var val; val[0] = 8; val[1] = 2; val[2] =  0; val[3] = 1; val[4] = 1.5; return val[argument2];
        case 4: var val; val[0] = 0; val[1] = 10; val[2] = 0; val[3] = 2; val[4] = 1.2; return val[argument2];
        case 5: var val; val[0] = 0; val[1] = 20; val[2] = 0; val[3] = 5; val[4] = 0.75; return val[argument2];
        case 6: var val; val[0] = 0; val[1] = 25; val[2] = 0; val[3] = 7; val[4] = 0.75; return val[argument2];
    }
}
else if (argument0 == spr_FloorItemsAxe)
{
    switch(argument1)
    {
        case 0: var val; val[0] = 0; val[1] = 2; val[2] = 0; val[3] = 1; val[4] = 1.2; return val[argument2];
        case 1: var val; val[0] = 0; val[1] = 1; val[2] = 2; val[3] = 2; val[4] = 0.9; return val[argument2];
        case 2: var val; val[0] = 0; val[1] = 5; val[2] = 5; val[3] = 5; val[4] = 0.8; return val[argument2];
        case 3: var val; val[0] = 8; val[1] = 15; val[2] = 0; val[3] = 5; val[4] = 0.5; return val[argument2];
        case 4: var val; val[0] = 0; val[1] = 20; val[2] = 10; val[3] = 10; val[4] = 0.3; return val[argument2];
        case 5: var val; val[0] = 0; val[1] = 25; val[2] = 20; val[3] = 15; val[4] = 0.25; return val[argument2];
    }
}
else if (argument0 == spr_FloorItemsHammer)
{
    switch(argument1)
    {
        case 0: var val; val[0] = 0; val[1] = 0; val[2] = 2; val[3] = 2; val[4] = 0.75; return val[argument2];
        case 1: var val; val[0] = 0; val[1] = 0; val[2] = 4; val[3] = 5; val[4] = 0.7; return val[argument2];
        case 2: var val; val[0] = 0; val[1] = 0; val[2] = 5; val[3] = 3; val[4] = 0.6; return val[argument2];
        case 3: var val; val[0] = 5; val[1] = 0; val[2] = 10; val[3] = 8; val[4] = 0.6; return val[argument2];
        case 4: var val; val[0] = 10; val[1] =0; val[2] = 15; val[3] = 10; val[4] = 0.5; return val[argument2];
        case 5: var val; val[0] = 0; val[1] = 0; val[2] = 25; val[3] = 15; val[4] = 0.3; return val[argument2];
        case 6: var val; val[0] = 0; val[1] = 0; val[2] = 30; val[3] = 25; val[4] = 0.25; return val[argument2];
    }
}
else if (argument0 == spr_FloorItemsStick)
{
    switch(argument1)
    {
        case 0: var val; val[0] = 1; val[1] = 0; val[2] = 2; val[3] = 1; val[4] = 1; return val[argument2];
        case 1: var val; val[0] = 1; val[1] = 0; val[2] = 2; val[3] = 3; val[4] = 1.15; return val[argument2];
        case 2: var val; val[0] = 5; val[1] = 0; val[2] = 0; val[3] = 2; val[4] = 1; return val[argument2];
        case 3: var val; val[0] = 10; val[1] = 0; val[2] = 0; val[3] = 2; val[4] = 1.25; return val[argument2];
        case 4: var val; val[0] = 20; val[1] = 0; val[2] = 0; val[3] = 5; val[4] = 1.25; return val[argument2];
        case 5: var val; val[0] = 30; val[1] = 0; val[2] = 0; val[3] = 7; val[4] = 0.5; return val[argument2];
    }
}
