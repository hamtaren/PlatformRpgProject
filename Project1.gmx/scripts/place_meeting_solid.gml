///place_meeting_solid(x,y)
var xx = argument0;
var yy = argument1;

return (place_meeting(xx,yy,obj_Solid) && instance_place(xx,yy,obj_Solid).isSolid);
