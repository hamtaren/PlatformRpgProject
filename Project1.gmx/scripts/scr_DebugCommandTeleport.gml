///scr_DebugCommandTeleport()
ds_list_add(lastCommands,prompt);   //dodanie do listy ostatnich polecen

if (instance_exists(obj_Hero))
{
    mask_index = obj_Hero.mask_index; //zeby mogl sprawdzic czy obj_Hero sie zmiesci w podane miejsce
    
    if (!place_meeting_solid(mouse_x,mouse_y))
    {
        obj_Hero.x = mouse_x;
        obj_Hero.y = mouse_y;
    }
    else
        debug_log("Nie można teleportowac we wskazane miejsce",DEBUG_ERROR);
    
    mask_index = noone;
}
else
    debug_log("Nie ma obj_Hero, nie teleportuje",DEBUG_WARN);