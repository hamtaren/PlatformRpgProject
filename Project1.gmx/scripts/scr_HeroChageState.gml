///scr_HeroChangeStateTo(stateType)
var stateType = argument0;
      
//jezeli wychodzimy ze stanu poruszania sie
if (state == STATE_MOVE)
{
    grav = 0;
    vspd = 0;
    hspd = 0;
}

state = stateType;
