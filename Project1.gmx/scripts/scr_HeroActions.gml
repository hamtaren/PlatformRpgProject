///scr_Action
if (keyboard_check_pressed(KEY_ACTION))
{
//Wchodzenie na drabine od gory
    if (place_meeting(x,y+1,obj_LeaderTop) && keyboard_check(KEY_DOWN))
    {
        scr_HeroChageState(STATE_CLIMB);
        x = instance_nearest(x,y+1,obj_LeaderTop).x;
        y += cspd;
    }
//Wchodzenie na drabine podczas dotykania jej        
    if (place_meeting(x,y,obj_Leader))
    {
        scr_HeroChageState(STATE_CLIMB);
        x = instance_nearest(x,y,obj_Leader).x;
    }
//Otwieranie drzwi
    if (place_meeting(x+16,y,obj_Door)) //z prawej strony
    {
        scr_HeroActionDoorOpen(x+16);
    }
    else if (place_meeting(x-16,y,obj_Door))  //z lewej strony  
    {
        scr_HeroActionDoorOpen(x-16);
    }
//Chowanie sie do kryjowek
    if (place_meeting(x,y,obj_Hideout))
    {
        scr_HeroActionHideouts();
    }
//Podnoszenie przedmiotow
    if (place_meeting(x,y,obj_Item))
    {
        var item = instance_place(x,y,obj_Item);        
        scr_HeroActionItemPickUp(item);
    }
//Ciagniecie dzwigni
    if (place_meeting(x,y,obj_Leaver))
    {
        var leaver = instance_place(x,y,obj_Leaver);
        scr_HeroActionTurnLeaver(leaver);
    }
    
}
