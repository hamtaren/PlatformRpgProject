///scr_HeroActionItemPickUpWeapon(item)
//podnoszenie broni
var item = argument0;

    sound_play(s_eqArm);
    
    if (objEq.melee[0]==noone)
        objEq.melee[0] = item.id;    
    else if (objEq.melee[1]==noone)
        objEq.melee[1] = item.id;
    else if (objEq.melee[2]==noone)
        objEq.melee[2] = item.id;
    else
    {    
        //zamiana miejscami
        objEq.melee[other.objEq.mSel].x = item.x;
        objEq.melee[other.objEq.mSel].y = item.y;
                  
        //zmiana aktywnego meleea na podnoszony
        objEq.melee[other.objEq.mSel] = item.id;
    }
    //umiejscowienie poza scena
    item.x = -20;
    item.y = -20;

