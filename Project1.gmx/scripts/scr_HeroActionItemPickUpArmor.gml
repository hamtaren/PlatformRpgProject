///scr_HeroActionItemPickUpArmor(item)
//podnoszenie zbroi
var item = argument0;

    sound_play(s_eqArm);
    
    if (objEq.armor[0]==noone)
        objEq.armor[0] = item.id;    
    else if (objEq.armor[1]==noone)
        objEq.armor[1] = item.id;
    else
    {    
        //zamiana miejscami
        objEq.armor[other.objEq.aSel].x = item.x;
        objEq.armor[other.objEq.aSel].y = item.y;
                  
        //zmiana aktywnego armora na podnoszony
        objEq.armor[other.objEq.aSel] = item.id;
    }
    //umiejscowienie poza scena
    item.x = -20;
    item.y = -20;

