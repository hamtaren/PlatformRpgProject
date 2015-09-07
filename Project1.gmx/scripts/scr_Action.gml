///scr_Action
if (keyboard_check_pressed(KEY_ACTION))
{
//Wchodzenie na drabine od gory
    if (place_meeting(x,y+1,obj_LeaderTop) && keyboard_check(KEY_DOWN))
    {
        state = STATE_CLIMB;
        x = instance_nearest(x,y+1,obj_LeaderTop).x;
        y += cspd;
        scr_HeroEndMoveState();
    }
//Wchodzenie na drabine podczas dotykania jej        
    if (place_meeting(x,y,obj_Leader))
    {
        state = STATE_CLIMB;
        x = instance_nearest(x,y,obj_Leader).x;
        scr_HeroEndMoveState();
    }

}
