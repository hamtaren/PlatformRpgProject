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
        scr_HeroActionDoorOpen(x+16);    
    else if (place_meeting(x-16,y,obj_Door))  //z lewej strony      
        scr_HeroActionDoorOpen(x-16);    

//Podnoszenie przedmiotow
    if (place_meeting(x,y,obj_Item))
    {  
        scr_HeroActionItemPickUp(itemToPickUp);
        itemToPickUp = noone;
    }
//Ciagniecie dzwigni
    if (place_meeting(x,y,obj_Leaver))
    {
        var leaver = instance_place(x,y,obj_Leaver);
        scr_HeroActionTurnLeaver(leaver);
    }
//Przesuwanie przedmiotow
    if (place_meeting(x+3,y,obj_Box))   //stojac na lewo od przedmiotu
    {            
        var box = instance_place(x+3,y,obj_Box);
        if (image_xscale = 1 && grav == 0 && box.vspd == 0 && box.hspd==0)
        {
            if (stamina > box.weight)
            {
                box.hspd+=4
                box.x-=2;
                stamina -= box.weight;
            }
        }
    }
    else if (place_meeting(x-3,y,obj_Box)) //stojac na prawo od przedmiotu
    {            
        var box = instance_place(x-3,y,obj_Box);
        if (image_xscale = -1 && grav == 0 && box.vspd == 0 && box.hspd==0)
        {
            if (stamina > box.weight)
            {
                box.hspd-=4
                box.x+=2;
                stamina -= box.weight;
            }
        }
    }
    
}
