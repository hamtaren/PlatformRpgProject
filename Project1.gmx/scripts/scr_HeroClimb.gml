///scr_HeroClimb
//schodzenie na boki
//LEWO
if (keyboard_check(KEY_LEFT) && !place_meeting_solid(x-16,y-2) && !place_meeting(x,y,obj_LeaderTop))
{
    scr_HeroChageState(STATE_MOVE);
    hspd =-8;
    vspd =-2;    
}//PRAWO
else if (keyboard_check(KEY_RIGHT) && !place_meeting_solid(x+16,y-2) && !place_meeting(x,y,obj_LeaderTop))
{
    scr_HeroChageState(STATE_MOVE);
    hspd =8;
    vspd =-2;    
}

//poruszanie sie gora/dol po drabinie/linie, schodzenie/wchodzenie na szczyt
//DOL
if (keyboard_check(KEY_DOWN))
{
    if (place_meeting(x,y+1,obj_LeaderTop)  || !place_meeting_solid(x,y+cspd))
    {
        y+=cspd;
    }
    //pod spodem nie ma nic, albo jest obj_Solid
    else if (place_meeting_solid(x,y+cspd))
    || ( place_meeting(x,y,obj_Leader) && !place_meeting(x,y+cspd,obj_Leader) )
    {
        scr_HeroChageState(STATE_MOVE);
        vspd = cspd;
    }

}//GORA //TODO: poprawic
else if (keyboard_check(KEY_UP))
{
    //wejscie na gore drabiny
    if (place_meeting(x,y,obj_LeaderTop) && !place_meeting(x,y-cspd,obj_LeaderTop))
    {
        scr_HeroChageState(STATE_MOVE);
        vspd -=1;
    }
    //wchodzenie po drabinie do gory
    if (place_meeting(x,y - cspd, obj_LeaderTop) || !place_meeting_solid(x,y-cspd))
    {
        y -=cspd;
    }
}
