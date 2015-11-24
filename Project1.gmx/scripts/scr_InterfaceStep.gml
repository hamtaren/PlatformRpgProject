///scr_InterfaceStep()
//skrypt w obj_Cam

///KAMEROWE///

var xx,yy;

//jezeli nie ma wyznaczonego celu to podaza za myszka, co powinno nastapic tylko po komendzie cam
if (target==noone)
{
    xx = mouse_x;
    yy = mouse_y;    
}
else
{
    xx = target.x;
    yy = target.y - 48;    
}

//gladkie zblizanie sie do obiektu
if (distance_to_point(xx,yy)>5)
    move_towards_point(xx,yy, distance_to_point(xx,yy)/slight);
else
    speed =0;

///CHARACTER PAGEowe///

//Wlaczanie i wylaczanie widoku karty postaci
if (keyboard_check_pressed(KEY_CHARACTER))
{
    sound_play(s_menuSelect);
    //WLACZENIE
    if (characterPage==PAGE_NONE)
    {
        scr_InterfaceBlock(true);
        characterPage=PAGE_ATRYB;
    }
    else   //WYLACZENIE 
    {
        scr_InterfaceBlock(false);
        characterPage=PAGE_NONE;    
    }
}

if (characterPage!=PAGE_NONE && mouse_check_button_pressed(mb_left))
{
    var xx = device_mouse_raw_x(0) *0.5;
    var yy = device_mouse_raw_y(0) *0.5;
    
    //klikanie w prawe przyciski
    if (xx>=315 && xx<=397)
    {
        if (yy>60 && yy <116)
        {
            sound_play(s_menuSelect);
            characterPage=PAGE_ATRYB;
        }
        else if (yy>120 && yy<176)
        {
            sound_play(s_menuSelect);
            characterPage=PAGE_STAT;
        }
        else if (yy>180 && yy<236)
        {
            sound_play(s_menuSelect);
            characterPage=PAGE_EKWIP;
        }
    }
    
    //klikanie w zaleznosci od karty
    
    //ATRYBUTY
    if (characterPage==PAGE_ATRYB && obj_Hero.sp>0)
    {
        if (xx >=230 && xx <=251)
        {   
            //SIŁA
            if (yy >=84 && yy <=105)
            {
                if (obj_Hero.strength<50)
                {
                sound_play(s_menuMove);
                obj_Hero.strength++;
                obj_Hero.sp--;
                }
            }
            //ZRECZNOSC
            else if (yy >=112 && yy <=133)
            {
                if (obj_Hero.dextarity<50)
                {
                sound_play(s_menuMove);
                obj_Hero.dextarity++;
                obj_Hero.sp--;
                }
            }
            //WYTRZYMALOSC
            else if (yy >=140 && yy <=161)
            {
                if (obj_Hero.endurance<50)
                {
                sound_play(s_menuMove);
                obj_Hero.endurance++;
                obj_Hero.sp--;
                }
            }
            //ENERGIA
            else if (yy >=168 && yy <=189)
            {
                if (obj_Hero.energy<50)
                {
                sound_play(s_menuMove);
                obj_Hero.energy++;
                obj_Hero.sp--;
                }
            }
            //WITALNOSC
            else if (yy >=196 && yy <=217)
            {
                if (obj_Hero.vitality<50)
                {
                sound_play(s_menuMove);
                obj_Hero.vitality++;
                obj_Hero.sp--;
                }
            }
        }
    }
    //EKWIPUNEK
    else if (characterPage == PAGE_EKWIP)
    {        
        if (yy>65 && yy<117) //MELEE
        {
            if (xx>3 && xx<55)
            {
                sound_play(s_eqMelee);
                obj_Hero.objEq.mSel = 0;
            }
            else if (xx>59 && xx <111)
            {
                sound_play(s_eqMelee);
                obj_Hero.objEq.mSel = 1;
            }
            else if (xx>115 && xx<167)
            {
                sound_play(s_eqMelee);
                obj_Hero.objEq.mSel = 2;
            }
        }
        else if (yy>123 && yy<175) //DISTANCE
        {
            if (xx>3 && xx<55)
            {   
                sound_play(s_eqDist);
                obj_Hero.objEq.dSel = 0;
            }
            else if (xx>59 && xx <111)
            {
                sound_play(s_eqDist);
                obj_Hero.objEq.dSel = 1;
            }
        }
        else if (yy>181 && yy<223) //ARMOR
        {
            if (xx>3 && xx<55)
            {
                sound_play(s_eqArm);
                obj_Hero.objEq.aSel = 0;
            }
            else if (xx>59 && xx <111)
            {
                sound_play(s_eqArm);
                obj_Hero.objEq.aSel = 1;
            }
        }
    }
}


