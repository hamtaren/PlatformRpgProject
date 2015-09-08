///scr_HeroChangeStateTo(stateType)
var stateType = argument0;

//jezeli wchodzimy do stanu ukrycia
if (stateType == STATE_HIDE)
{
    hidden = true;
    image_alpha = 0.5;
}

//jezeli wychodzi ze stanu ukrycia
if (state == STATE_HIDE)
{
    hidden = false;
    image_alpha = 1;
}
      
//jezeli wychodzimy ze stanu poruszania sie
if (state == STATE_MOVE)
{
    grav = 0;
    vspd = 0;
    hspd = 0;
}

state = stateType;