///scr_BinderBind(mapIndex)
//rozdzielenie na odpowiednie skrypty zaleznie od typu łączenia
var mapIndex = argument0;
var type = ds_map_find_value(maps[mapIndex],"type");

switch(type)
{
    case BIND_DOOR_TO_LEAVER: scr_BinderBindDoorToLeaver(mapIndex); break;
    default: debug_log("Nie zaimplementowano binda dla typu: " + string(type),DEBUG_ERROR);
}