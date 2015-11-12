///place_meeting_diagonal(x,y)
var xx = argument0;
var yy = argument1;

if (place_meeting(xx,yy,obj_Diagonal) && instance_place(xx,yy,obj_Diagonal).isSolid)
    return true;

return false;
