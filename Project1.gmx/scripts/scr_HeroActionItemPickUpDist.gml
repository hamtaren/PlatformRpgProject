///scr_HeroActionItemPickUpDist(item)
//podnoszenie broni dystansowej
var item = argument0;

    sound_play(s_eqDist);
    
    if (objEq.distance[0]==noone)
        objEq.distance[0] = item.id;    
    else if (objEq.distance[1]==noone)
        objEq.distance[1] = item.id;
    else
    {    
        //zamiana miejscami
        objEq.distance[other.objEq.dSel].x = item.x;
        objEq.distance[other.objEq.dSel].y = item.y;
                  
        //zmiana aktywnego distancea na podnoszony
        objEq.distance[other.objEq.dSel] = item.id;
    }
    //umiejscowienie poza scena
    item.x = -20;
    item.y = -20;

